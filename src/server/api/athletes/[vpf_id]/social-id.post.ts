
import { defineEventHandler, readMultipartFormData, getCookie } from "h3"
import { storage } from "~/storage"
import { validateSession } from "~/server/services/validate-session"
import { db } from "~/db"

export default defineEventHandler(async (event) => {
  try {
    const { vpf_id: vpfId } = event.context.params as { vpf_id: string }
    const sessionId = getCookie(event, "session_id")

    if (!sessionId) {
      return {
        success: false,
        message: "Unauthorized",
      }
    }

    const sessionValidation = await validateSession(sessionId)
    if (!sessionValidation.success) {
      return {
        success: false,
        message: sessionValidation.message,
      }
    }

    const formData = await readMultipartFormData(event)
    const file = formData?.find((part) => part.name === "social_id")

    if (!file || !file.data) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Image not found in request",
      }
    }

    const filePath = `${vpfId}/social_id.png`
    const { error } = await storage
      .from("members")
      .upload(filePath, file.data, {
        upsert: true, // Overwrite if exists
        contentType: file.type,
      })

    if (error) {
      return {
        success: false,
        message: error.message
      }
    }

    const { data } = storage
      .from("members")
      .getPublicUrl(filePath)

    const imageURL = data.publicUrl

    await db`
      UPDATE members
      SET social_id_image_url = ${imageURL}
      WHERE vpf_id = ${vpfId}
    `

    return {
      success: true,
      data: { imageURL },
      message: "Image uploaded successfully"
    }
  } catch (error) {
    console.error("Error uploading social id: ", error)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})
