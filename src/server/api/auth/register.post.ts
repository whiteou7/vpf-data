import { sql } from "drizzle-orm"
import { db } from "~/db"
import bcrypt from "bcryptjs"

export default defineEventHandler(async (event) => {
  try {
    const body = await readBody(event)
    const email = body.email as string
    const password = body.password as string

    // Check if email already exists
    const [existingUser] = await db.execute(
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

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10)

    // Throw error if both member id and password exist
    if (existingUser.vpf_member_id && existingUser.password) {
      throw createError({
        statusCode: 409,
        statusMessage: "Email already registered"
      })
    }

    // Set password if not exists (for legacy members)
    if (existingUser.vpf_member_id && !existingUser.password) {
      await db.execute(
        sql.raw(`
          UPDATE members SET password = '${hashedPassword}' WHERE vpf_member_id = '${existingUser.vpf_member_id}';
        `)
      )
      return { success: true, message: "Password set successfully" }
    }

    // Insert new user for new account
    await db.execute(
      sql.raw(`
        INSERT INTO members (email, password) VALUES ('${email}', '${hashedPassword}');
      `)
    )

    return { success: true }
  } catch (error) {
    console.error("Error registering:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Internal Server Error"
    })
  }
})
