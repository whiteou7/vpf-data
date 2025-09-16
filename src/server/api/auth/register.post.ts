import { db } from "~/db"
import bcrypt from "bcryptjs"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<null>> => {
  try {
    const body: { email: string, password: string } = await readBody(event)
    const email = body.email as string | ""
    const password = body.password as string |""

    // Check if email already exists
    const existingArr = await db<{ vpf_member_id?: string, password?: string }[]>`
      SELECT 
        m.vpf_member_id,
        m.password
      FROM 
        members m 
      WHERE 
        m.email = ${email};
    `
    const existingUser = existingArr[0] ?? {}

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10)

    // Throw error if both member id and password exist
    if (existingUser.vpf_member_id && existingUser.password) {
      return {
        success: false,
        error: "Email already registered",
      }
    }

    // Set password if not exists (for legacy members)
    if (existingUser.vpf_member_id && !existingUser.password) {
      await db`
        UPDATE members SET password = ${hashedPassword} WHERE vpf_member_id = ${existingUser.vpf_member_id};
      `
      return {
        success: true,
        message: "Password set successfully",
      }
    }

    // Insert new user for new account
    await db`
      INSERT INTO members (email, password) VALUES (${email}, ${hashedPassword});
    `

    return {
      success: true,
      message: "Account created successfully",
    }
  } catch (error) {
    console.error("Error registering:", error)
    return {
      success: false,
      error: (error as Error).message,
    }
  }
})