import { db } from "~/db"
import bcrypt from "bcryptjs"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<null>> => {
  try {
    const body: { email: string, currentPassword: string, newPassword:string } = await readBody(event)
    const email = body.email
    const currentPassword = body.currentPassword
    const newPassword = body.newPassword

    // Fetch user by email
    const userArr = await db<{ vpfId?: string, password?: string }[]>`
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
    if (!hashedPassword || !user.vpfId) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: "Invalid email or password",
      }
    }

    // Compare password using bcrypt
    const isMatch = await bcrypt.compare(currentPassword, hashedPassword)
    if (!isMatch) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: "Invalid email or password",
      }
    }

    // Hash new password
    const hashedNewPassword = await bcrypt.hash(newPassword, 10)

    // Update password
    await db`
      UPDATE members
      SET password = ${hashedNewPassword}
      WHERE vpf_id = ${user.vpfId}
    `

    setResponseStatus(event, 200)
    return {
      success: true,
      data: null,
      message: "Password updated successfully",
    }
  } catch (error) {
    console.error("Error resetting password:", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})