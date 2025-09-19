import type { APIBody } from "~/types/api"
import { validateSession } from "~/server/services/validate-session"

export default defineEventHandler(async (event): Promise<APIBody<{ vpf_id: string }>> => {
  try {
    const sessionId = getCookie(event, "session_id")
    return await validateSession(sessionId || "")
  } catch (error) {
    console.error("Failed to validate session", error)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})
