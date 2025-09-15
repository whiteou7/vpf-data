import { sql } from "drizzle-orm"
import { db } from "~/db"
import bcrypt from "bcryptjs"
import crypto from "crypto"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event) => {
  try {
    const body: { email: string, password: string } = await readBody(event)
    const email = body.email as string | ""
    const password = body.password as string | ""

    // Fetch user by email
    const [user] = await db.execute(
      sql.raw(`
        SELECT
          m.vpf_member_id,
          m.password
        FROM
          members m
        WHERE
          m.email = '${email}';
      `)
    )
    const hashedPassword = user?.password as string | undefined

    // Throw error if password not exists in db
    if (!hashedPassword) {
      return {
        success: false,
        error: "Invalid email or password",
      } as APIBody<null>
    }

    // Compare password using bcrypt
    const isMatch = await bcrypt.compare(password, hashedPassword)
    if (!isMatch) {
      return {
        success: false,
        error: "Invalid email or password",
      } as APIBody<null>
    }

    // Create session if match
    const session_id: string = crypto.randomUUID()
    await db.execute(
      sql.raw(`
        INSERT INTO
          authenication.sessions (session_id, vpf_id)
        VALUES
          ('${session_id}', '${user.vpf_member_id}')
      `)
    )

    return {
      success: true,
      data: session_id,
    } as APIBody<string>
  } catch (error) {
    console.error("Error logging in:", error)
    return {
      success: false,
      error: error.message,
    } as APIBody<null>
  }
})