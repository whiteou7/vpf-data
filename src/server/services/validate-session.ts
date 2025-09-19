import { db } from "~/db"
import type { APIBody } from "~/types/api"

export async function validateSession(sessionId: string): Promise<APIBody<{ vpf_id: string }>> {
  if (!sessionId) {
    return {
      success: false,
      error: "SESSION_NOT_INCLUDED",
      message: "Session ID not included"
    }
  }

  const resultArr = await db<{ vpf_id: string; expires_at: string }[]>`
    SELECT vpf_id, expires_at
    FROM authentication.sessions
    WHERE session_id = ${sessionId}
  `
  const result = resultArr[0]

  // Check if session exists
  if (!result) {
    return {
      success: false,
      message: "Invalid session"
    }
  }

  // Check if session expired
  if (new Date(result.expires_at).getTime() < Date.now()) {
    return {
      success: false,
      message: "Session expired"
    }
  }

  return {
    success: true,
    message: "Session validated",
    data: { vpf_id: result.vpf_id }
  }
}
