import { db } from "~/db"
import bcrypt from "bcryptjs"
import crypto from "crypto"
import type { APIBody } from "~/types/api"
import { isValidEmail } from "../../utils/utils"

export default defineEventHandler(async (event): Promise<APIBody<{ sessionId: string, vpfId: string }>> => {
  try {
    const body: { email: string, password: string } = await readBody(event)
    const email = body.email as string | ""
    const password = body.password as string | ""

    if (!isValidEmail(email)) {
      return {
        success: false,
        message: "Invalid email format",
      }
    }

    // Fetch user by email
    const userArr = await db<{ vpfId?: string, password?: string }[]>`
      SELECT
        m.vpf_id as vpfId,
        m.password
      FROM
        members m
      WHERE
        m.email = ${email};
    `
    const user = userArr[0] ?? {}
    const hashedPassword = user.password as string | undefined

    // Check if user or password exists
    if (!hashedPassword || !user.vpfId) {
      return {
        success: false,
        message: "Invalid email or password",
      }
    }

    // Compare password using bcrypt
    const isMatch = await bcrypt.compare(password, hashedPassword)
    if (!isMatch) {
      return {
        success: false,
        message: "Invalid email or password",
      }
    }

    // Create session if match
    const sessionId: string = crypto.randomUUID()
    await db`
      INSERT INTO
        authentication.sessions (session_id, vpf_id)
      VALUES
        (${sessionId}, ${user.vpfId})
    `

    setCookie(event, "session_id", sessionId, {
      httpOnly: true,
      secure: true,
      sameSite: "strict"
    })

    return {
      success: true,
      data: { sessionId, vpfId: user.vpfId }
    }
  } catch (error) {
    console.error("Error logging in", error)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})