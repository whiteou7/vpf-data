import { sql } from "drizzle-orm"
import { db } from "~/db"
import bcrypt from "bcryptjs"
import crypto from "crypto"

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
      throw createError({
        statusCode: 401,
        statusMessage: "Invalid email or password"
      })
    }

    // Compare password using bcrypt
    const isMatch = await bcrypt.compare(password, hashedPassword)
    if (!isMatch) {
      throw createError({
        statusCode: 401,
        statusMessage: "Invalid email or password"
      })
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

    return session_id
  } catch (error) {
    console.error("Error logging in:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Internal Server Error"
    })
  }
})