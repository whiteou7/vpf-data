import { db } from "~/db"
import bcrypt from "bcryptjs"
import crypto from "crypto"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ session_id: string, vpf_id: string }>> => {
  try {
    const body: { email: string, password: string } = await readBody(event)
    const email = body.email as string | ""
    const password = body.password as string | ""

    // Fetch user by email
    const userArr = await db<{ vpf_id?: string, password?: string }[]>`
      SELECT
        m.vpf_id,
        m.password
      FROM
        members m
      WHERE
        m.email = ${email};
    `
    const user = userArr[0] ?? {}
    const hashedPassword = user.password as string | undefined

    // Check if user or password exists
    if (!hashedPassword || !user.vpf_id) {
      return {
        success: false,
        error: "Invalid email or password",
      }
    }

    // Compare password using bcrypt
    const isMatch = await bcrypt.compare(password, hashedPassword)
    if (!isMatch) {
      return {
        success: false,
        error: "Invalid email or password",
      }
    }

    // Create session if match
    const session_id: string = crypto.randomUUID()
    await db`
      INSERT INTO
        authentication.sessions (session_id, vpf_id)
      VALUES
        (${session_id}, ${user.vpf_id})
    `

    setCookie(event, "session_id", session_id, {
      httpOnly: true,
      secure: true,
      sameSite: "strict"
    })

    return {
      success: true,
      data: { session_id, vpf_id: user.vpf_id }
    }
  } catch (error) {
    console.error("Error logging in", error)
    return {
      success: false,
      error: (error as Error).message,
    }
  }
})