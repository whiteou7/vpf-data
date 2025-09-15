import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { Meet } from "~/types/meet"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async () => {
  try {
    const meets = await db.execute<Meet>(
      sql.raw(`
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
        `)
    )

    return {
      success: true,
      data: meets,
    } as APIBody<Meet[]>
  } catch (error) {
    console.error("Error fetching meets info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    } as APIBody<null>
  }
})