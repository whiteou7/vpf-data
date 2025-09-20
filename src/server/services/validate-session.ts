import { db } from "~/db"
import type { APIBody } from "~/types/api"

export async function validateSession(sessionId: string): Promise<APIBody<{ vpfId: string }>> {
  if (!sessionId) {
    return {
      success: false,
      error: "SESSION_NOT_INCLUDED",
      message: "Session ID not included"
    }
  }

  const resultArr = await db<{ vpfId: string; expiresAt: string }[]>`
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
  if (new Date(result.expiresAt).getTime() < Date.now()) {
    return {
      success: false,
      message: "Session expired"
    }
  }

  return {
    success: true,
    message: "Session validated",
    data: { vpfId: result.vpfId }
  }
}
