import { db } from "~/db"
import bcrypt from "bcryptjs"
import type { APIBody } from "~/types/api"
import { isValidEmail } from "../../utils/utils"

export default defineEventHandler(async (event): Promise<APIBody<null>> => {
  try {
    const body: { email: string, fullName: string, password: string } = await readBody(event)
    const email = body.email
    const password = body.password
    const fullName = body.fullName

    // Check if password and email were included
    if (!email || !password || !fullName) {
      return {
        success: false,
        message: "Full name, password and email must be included"
      }
    }

    if (!isValidEmail(email)) {
      return {
        success: false,
        message: "Invalid email format",
      }
    }

    // Check if email already exists
    const [existingUser] = await db<{ vpfId: string }[]>`
      SELECT 
        m.vpf_id as vpfId
      FROM 
        members m 
      WHERE 
        m.email = ${email};
    `

    // Throw error if user exists
    if (existingUser?.vpfId) {
      return {
        success: false,
        message: "Email already registered",
      }
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10)

    // Insert new user for new account
    await db`
      INSERT INTO members (email, full_name, password) VALUES (${email}, ${fullName}, ${hashedPassword});
    `

    return {
      success: true,
      message: "Account created successfully",
    }
  } catch (error) {
    console.error("Error registering:", error)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})