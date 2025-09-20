import { db } from "~/db"
import type { AthletePB, AthleteCompInfo, AthletePersonalInfo, AthleteCompSettings } from "~/types/athlete"
import type { APIBody } from "~/types/api"
import { validateSession } from "~/server/services/validate-session"

const fetchCompHistory = async (vpfId: string): Promise<{ 
  comp_info: AthleteCompInfo[], 
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

  return { comp_info: compInfo, pb }
}

const fetchPrivateInfo = async (vpfId: string): Promise<{ 
  personal_info: AthletePersonalInfo, 
  comp_settings: AthleteCompSettings 
}> => {
  const [personalInfo] = await db<AthletePersonalInfo[]>`
    SELECT 
      vpf_id,
      full_name,
      nationality,
      dob,
      national_id,
      address,
      phone_number,
      email,
      active
    FROM 
      public.members
    WHERE
      vpf_id = ${vpfId}
  `

  const [compSettings] = await db<AthleteCompSettings[]>`
    SELECT 
      squat_rack_pin,
      bench_rack_pin,
      bench_safety_pin,
      bench_foot_block
    FROM 
      public.members
    WHERE
      vpf_id = ${vpfId}
  `

  return { personal_info: personalInfo, comp_settings: compSettings }
}

export default defineEventHandler(async (event): Promise<APIBody<{ 
  comp_info: AthleteCompInfo[], 
  pb: AthletePB[], 
  personal_info?: AthletePersonalInfo, 
  comp_settings?: AthleteCompSettings 
}>> => {
  try {  
    const vpfId = event.context.params?.vpf_id || ""
    const query = getQuery(event)

    const compHistory = await fetchCompHistory(vpfId)

    if (compHistory.comp_info.length === 0) {
      return {
        success: false,
        message: "No competition data available"
      }
    }

    // Only return comp history info if url has public=true query to avoid having to validate session
    if (query && query.public === "true") {
      return {
        success: true,
        data: compHistory,
        message: "Fetched athlete public info"
      }
    }

    const sessionId = getCookie(event, "session_id")

    // Validate session
    const sessionValidation = await validateSession(sessionId || "")
  
    // Extract vpfId from response
    const validatedVpfId = sessionValidation?.data?.vpf_id

    // Check if the validated session's vpfId matches the requested vpfId
    const authorized = validatedVpfId == vpfId

    // Fetch private info if authorized
    let privateInfo = undefined
    if (authorized) {
      privateInfo = await fetchPrivateInfo(vpfId)
    }

    return {
      success: true,
      data: { ...compHistory, ...privateInfo },
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