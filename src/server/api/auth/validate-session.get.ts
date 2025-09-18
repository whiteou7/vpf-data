import { db } from "~/db"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ vpf_id: string }>> => {
  try {
    // Get session id from cookie
    const sessionId = getCookie(event, "session_id")

    if (!sessionId) {
      return { 
        success: false,
        message: "Session ID not included"
      }
    }

    // Get session info from database
    const resultArr = await db<{ vpf_id: string, expires_at: string }[]>`
      SELECT 
        vpf_id, 
        expires_at
      FROM 
        authentication.sessions
      WHERE 
        session_id = ${sessionId}
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
      data: {
        vpf_id: result.vpf_id
      }
    }
  } catch (error) {
    console.error("Failed to validate session", error)
    return { 
      success: false,
      message: (error as Error).message
    } 
  }
})
