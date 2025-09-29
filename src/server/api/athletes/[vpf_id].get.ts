import { db } from "~/db"
import type { AthletePB, AthleteCompInfo, AthletePersonalInfo, AthleteCompSettings } from "~/types/athlete"
import type { APIBody } from "~/types/api"
import { validateSession } from "~/server/services/validate-session"

const fetchCompHistory = async (vpfId: string): Promise<{ 
  compInfo: AthleteCompInfo[], 
  pb: AthletePB[]
}> => {
  const compInfo = await db<AthleteCompInfo[]>`
    SELECT
      sex,
      weight_class,
      division,
      best_squat::float as best_squat,
      best_bench::float as best_bench,
      best_dead::float as best_dead,
      total::float as total,
      gl::float as gl,
      body_weight::float as body_weight,
      placement,
      meet_name,
      meet_slug
    FROM meet_result_detailed
    WHERE vpf_id = ${vpfId}
    ORDER BY meet_id DESC;
  `
  const pb = await db<AthletePB[]>`
    SELECT
      MAX(best_squat)::float as squat_pb,
      MAX(best_bench)::float as bench_pb,
      MAX(best_dead)::float as deadlift_pb,
      MAX(total)::float as total_pb,
      MAX(gl)::float as gl_pb
    FROM meet_result_detailed
    WHERE vpf_id = ${vpfId}
  `

  return { compInfo, pb }
}

const fetchPrivateInfo = async (vpfId: string): Promise<{ 
  personalInfo: AthletePersonalInfo, 
  compSettings: AthleteCompSettings 
}> => {
  const [row] = await db<(AthleteCompSettings & AthletePersonalInfo)[]>`
    SELECT 
      vpf_id,
      full_name,
      nationality,
      dob,
      national_id,
      address,
      phone_number,
      email,
      active,
      squat_rack_pin,
      bench_rack_pin,
      bench_safety_pin,
      bench_foot_block,
      national_id_image_url,
      instagram_username
    FROM 
      public.members
    WHERE
      vpf_id = ${vpfId}
  `
  const {
    fullName,
    nationality,
    dob,
    nationalId,
    address,
    phoneNumber,
    email,
    nationalIdImageUrl,
    active,
    squatRackPin,
    benchRackPin,
    benchSafetyPin,
    benchFootBlock,
    instagramUsername
  } = row

  const personalInfo: AthletePersonalInfo = {
    vpfId,
    fullName,
    nationality,
    dob,
    nationalId,
    address,
    phoneNumber,
    email,
    nationalIdImageUrl,
    active,
    instagramUsername
  }

  const compSettings: AthleteCompSettings = {
    squatRackPin,
    benchRackPin,
    benchSafetyPin,
    benchFootBlock,
  }

  return { personalInfo, compSettings }
}

export default defineEventHandler(async (event): Promise<APIBody<{ 
  compInfo: AthleteCompInfo[], 
  pb: AthletePB[], 
  personalInfo: AthletePersonalInfo, 
  compSettings: AthleteCompSettings 
} | {
  compInfo: AthleteCompInfo[], 
  pb: AthletePB[], 
  personalInfo: { fullName: string, instagramUsername: string | null },  
}>> => {
  try {  
    const vpfId = event.context.params?.vpf_id || ""

    const compHistory = await fetchCompHistory(vpfId)
    const privateInfo = await fetchPrivateInfo(vpfId)

    // Check if competition data is available
    if (compHistory.compInfo.length === 0) {
      setResponseStatus(event, 404)
      return {
        success: false,
        message: "No competition data available"
      }
    }

    const sessionId = getCookie(event, "session_id")
    let authorized = false
    // Validate session
    const sessionValidation = await validateSession(sessionId || "")
    
    // Extract vpfId from response
    if (sessionValidation.success) {
      const validatedVpfId = sessionValidation?.data?.vpfId
      const matchedVpfId = validatedVpfId == vpfId
      if (matchedVpfId) {
        authorized = true
      }
    }

    if (authorized) {
      setResponseStatus(event, 200)
      return {
        success: true,
        data: { ...compHistory, ...privateInfo },
        message: "Fetched athlete info"
      }
    }

    return {
      success: true,
      data: { 
        ...compHistory, 
        personalInfo: { 
          fullName: privateInfo.personalInfo.fullName,
          instagramUsername: privateInfo.personalInfo.instagramUsername,
        }
      },
      message: "Fetched athlete info"
    }
  } catch (error) {
    console.error("Error fetching athlete:", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})