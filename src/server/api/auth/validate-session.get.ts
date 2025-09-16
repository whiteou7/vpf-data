import { db } from "~/db"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ vpf_id: string }>> => {
  try {
    const query: { session_id: string } = getQuery(event)
    const sessionId = query.session_id

    if (!sessionId) {
      return { 
        success: false,
        error: "Session ID not included"
      }
    }

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

    if (!result) {
      return {
        success: false,
        error: "Invalid session"
      } 
    }
      
    if (new Date(result.expires_at).getTime() < Date.now()) {
      return {
        success: false,
        error: "Session expired"
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
      error: (error as Error).message
    } 
  }
})
