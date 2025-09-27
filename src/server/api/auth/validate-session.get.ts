import type { APIBody } from "~/types/api"
import { validateSession } from "~/server/services/validate-session"

export default defineEventHandler(async (event): Promise<APIBody<{ vpfId: string }>> => {
  try {
    const sessionId = getCookie(event, "session_id")
    const validation = await validateSession(sessionId || "")
    if (!validation.success) {
      setResponseStatus(event, 401)
      return validation
    }
    setResponseStatus(event, 200)
    return validation
  } catch (error) {
    console.error("Failed to validate session", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})
