import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<unknown>> => {
  try {
    setCookie(event, "session_id", "", {
      httpOnly: true,
      secure: true,
      sameSite: "strict",
      expires: new Date(0),
    })

    return {
      success: true,
      message: "Logged out"
    }
  } catch (error) {
    console.error("Error logging out", error)
    return {
      success: false,
      error: (error as Error).message,
    }
  }
})
