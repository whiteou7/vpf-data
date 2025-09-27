import { defineEventHandler, getCookie, readBody, setResponseStatus } from "h3"
import { db } from "~/db"
import { validateSession } from "~/server/services/validate-session"
import type { APIBody } from "~/types/api"
import type { AthleteCompSettings } from "~/types/athlete"

export default defineEventHandler(async (event): Promise<APIBody<AthleteCompSettings>> => {
  try {
    const { vpf_id: vpfId } = event.context.params as { vpf_id: string }
    const sessionId = getCookie(event, "session_id")

    if (!sessionId) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: "Unauthorized",
      }
    }

    const sessionValidation = await validateSession(sessionId)
    if (!sessionValidation.success) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: sessionValidation.message || "Invalid session",
      }
    }

    if (sessionValidation.data.vpfId !== vpfId) {
      setResponseStatus(event, 403)
      return {
        success: false,
        message: "Forbidden",
      }
    }

    const body = await readBody<AthleteCompSettings>(event)
    if (!body) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Empty request body",
      }
    }

    const { squatRackPin, benchRackPin, benchSafetyPin, benchFootBlock } = body

    for (const value of Object.values(body)) {
      if (typeof value != "number") {
        setResponseStatus(event, 400)
        return {
          success: false,
          message: "Settings must be numbers",
        }
      }
    }

    await db`
      UPDATE members
      SET
        squat_rack_pin = ${squatRackPin},
        bench_rack_pin = ${benchRackPin},
        bench_safety_pin = ${benchSafetyPin},
        bench_foot_block = ${benchFootBlock}
      WHERE vpf_id = ${vpfId}
    `

    setResponseStatus(event, 200)
    return {
      success: true,
      message: "Competition settings updated successfully",
      data: { squatRackPin, benchRackPin, benchSafetyPin, benchFootBlock }
    }
  } catch (error) {
    console.error("Error updating competition settings: ", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})
