import { db } from "~/db"
import { validateSession } from "~/server/services/validate-session"
import type { APIBody } from "~/types/api"
import type { AthleteProfile } from "~/types/athlete"

export default defineEventHandler(async (event): Promise<APIBody<AthleteProfile>> => {
  try {
    const vpfId = getRouterParam(event, "vpf_id")
    const sessionId = getCookie(event, "session_id")

    // Validate session
    const sessionValidation = await validateSession(sessionId || "")

    // Extract vpfId from response
    const validatedVpfId = sessionValidation?.data?.vpf_id

    // Check if the validated session's vpfId matches the requested vpfId
    if (!validatedVpfId || validatedVpfId !== vpfId) {
      return {
        success: false,
        message: "Unauthorized",
      }
    }

    const resultArr = await db<AthleteProfile[]>`
      SELECT 
        vpf_id,
        full_name,
        nationality,
        dob,
        national_id,
        address,
        phone_number,
        squat_rack_pin,
        bench_rack_pin,
        bench_safety_pin,
        bench_foot_block,
        email,
        active,
        drug_violate
      FROM 
        public.members
      WHERE
        vpf_id = ${vpfId}
    `
    const result = resultArr[0]
    if (!result) {
      return {
        success: false,
        message: "Athlete not found"
      }
    }
    return {
      success: true,
      data: result,
      message: "Successfully get athlete data"
    }
  } catch (error) {
    console.error("Failed fetching athlete profile: ", error)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})
