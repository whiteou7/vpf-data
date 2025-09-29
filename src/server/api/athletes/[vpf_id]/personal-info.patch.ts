import { defineEventHandler, getCookie, readBody, setResponseStatus } from "h3"
import { db } from "~/db"
import { validateSession } from "~/server/services/validate-session"
import { isValidEmail } from "~/server/utils/utils"
import type { APIBody } from "~/types/api"
import type { AthletePersonalInfo } from "~/types/athlete"
import { isValidYOB } from "~/utils/utils"

type Data = Omit<AthletePersonalInfo, "active" | "nationalIdImageUrl" | "fullName">

export default defineEventHandler(async (event): Promise<APIBody<Data>> => {
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

    const body = await readBody<Data>(event)
    if (!body) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Empty request body",
      }
    }

    const { email, nationality, dob, nationalId, address, phoneNumber, instagramUsername } = body

    // Sanity check
    if (email && !isValidEmail(email)) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Invalid email format",
      }
    }

    if (nationalId && !/^\d+$/.test(nationalId)) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "National ID must be a number",
      }
    }

    if (phoneNumber && !/^\d+$/.test(phoneNumber)) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Phone number must be a number",
      }
    }

    if (dob && !isValidYOB(dob)) {
      return {
        success: false,
        message: "Invalid YOB",
      }
    }

    await db`
      UPDATE members
      SET
        email = ${email},
        nationality = ${nationality},
        dob = ${dob},
        national_id = ${nationalId},
        address = ${address},
        phone_number = ${phoneNumber},
        instagram_username = ${instagramUsername}
      WHERE vpf_id = ${vpfId}
    `

    setResponseStatus(event, 200)
    return {
      success: true,
      message: "Personal information updated successfully",
      data: { email, nationality, dob, nationalId, address, phoneNumber, instagramUsername },
    }
  } catch (error) {
    console.error("Error updating personal info: ", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})
