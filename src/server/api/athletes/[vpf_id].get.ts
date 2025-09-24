import { db } from "~/db"
import type { AthletePB, AthleteCompInfo, AthletePersonalInfo, AthleteCompSettings, Sex } from "~/types/athlete"
import type { APIBody } from "~/types/api"
import { validateSession } from "~/server/services/validate-session"

const fetchCompHistory = async (vpfId: string): Promise<{ 
  compInfo: AthleteCompInfo[], 
  pb: AthletePB[]
}> => {
  const compInfo = await db<AthleteCompInfo[]>`
    SELECT
      full_name,
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
      meet_id,
      vpf_id
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
      social_id_image_url
    FROM 
      public.members
    WHERE
      vpf_id = ${vpfId}
  `
  const compSettings: AthleteCompSettings = { ...row }
  const personalInfo: AthletePersonalInfo = { ...row }

  return { personalInfo, compSettings }
}

export default defineEventHandler(async (event): Promise<APIBody<{ 
  fullName: string,
  sex: Sex,
  compInfo: AthleteCompInfo[], 
  pb: AthletePB[], 
  personalInfo?: AthletePersonalInfo, 
  compSettings?: AthleteCompSettings 
}>> => {
  try {  
    const vpfId = event.context.params?.vpf_id || ""
    const query = getQuery(event)

    const compHistory = await fetchCompHistory(vpfId)

    // Check if competition data is available
    if (compHistory.compInfo.length === 0) {
      return {
        success: false,
        message: "No competition data available"
      }
    }

    // Extract name & gender from comp history
    const sex = compHistory.compInfo[0].sex
    const fullName = compHistory.compInfo[0].fullName

    // Only return comp history info if url does not have private=true query
    if (!query || query.private !== "true") {
      return {
        success: true,
        data: { fullName, sex, ...compHistory },
        message: "Fetched athlete public info"
      }
    }

    const sessionId = getCookie(event, "session_id")

    // Validate session
    const sessionValidation = await validateSession(sessionId || "")
    if (!sessionValidation.success) return {
      success: true,
      data: { fullName, sex, ...compHistory },
      message: "Fetched athlete info"
    }
    
    // Extract vpfId from response
    const validatedVpfId = sessionValidation?.data?.vpfId

    // Check if the validated session's vpfId matches the requested vpfId
    const authorized = validatedVpfId == vpfId

    // Fetch private info if authorized
    let privateInfo = undefined
    if (authorized) {
      privateInfo = await fetchPrivateInfo(vpfId)
    }

    return {
      success: true,
      data: { fullName, sex, ...compHistory, ...privateInfo },
      message: "Fetched athlete info"
    }
  } catch (error) {
    console.error("Error fetching athlete:", error)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})