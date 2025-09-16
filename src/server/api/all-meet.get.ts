import { db } from "../../db"
import type { Meet } from "~/types/meet"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (): Promise<APIBody<Meet[]>> => {
  try {
    const meets = await db<Meet[]>`
      SELECT 
        id,
        name,
        city,
        host_date,
        media_link,
        COUNT(athlete_id) as count
      FROM
        meet_info mi
      JOIN 
        meet_result mr
      ON 
        mi.id = mr.meet_id
      GROUP BY
        id,
        name,
        city,
        host_date
      ORDER BY
        host_date ASC
      `

    return {
      success: true,
      data: meets,
    }
  } catch (error) {
    console.error("Error fetching meets info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    }
  }
})