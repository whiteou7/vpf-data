
import { defineEventHandler, readMultipartFormData, getCookie } from "h3"
import { storage } from "~/storage"
import { validateSession } from "~/server/services/validate-session"
import { db } from "~/db"
import { getHashedFileName } from "~/utils/utils"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ imageUrl: string }>> => {
  try {
    const { vpf_id: vpfId } = event.context.params as { vpf_id: string }
    const sessionId = getCookie(event, "session_id")

    if (!sessionId) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: "Unauthorized",
      }
    }

    const sessionValidation = await validateSession(sessionId)
    if (!sessionValidation.success) {
      setResponseStatus(event, 401)
      return {
        success: false,
        message: sessionValidation.message,
      }
    }

    const formData = await readMultipartFormData(event)
    const file = formData?.find((part) => part.name === "national_id")

    if (!file || !file.data) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Image not found in request",
      }
    }

    // Generate a deterministic hashed file name for each user because why not
    if (!process.env.HASH_SEED) {
      throw new Error("No hash seed set")
    }
    const hashSeed = process.env.HASH_SEED
    const fileName = await getHashedFileName(vpfId, hashSeed)

    const filePath = `${vpfId}/${fileName}.png`
    const { error } = await storage
      .from("members")
      .upload(filePath, file.data, {
        upsert: true, // Overwrite if exists
        contentType: file.type,
      })

    if (error) {
      setResponseStatus(event, 500)
      return {
        success: false,
        message: error.message
      }
    }

    const { data } = storage
      .from("members")
      .getPublicUrl(filePath)

    const imageUrl = data.publicUrl

    await db`
      UPDATE members
      SET national_id_image_url = ${imageUrl}
      WHERE vpf_id = ${vpfId}
    `

    setResponseStatus(event, 200)
    return {
      success: true,
      data: { imageUrl },
      message: "Image uploaded successfully"
    }
  } catch (error) {
    console.error("Error uploading national id: ", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message,
    }
  }
})
