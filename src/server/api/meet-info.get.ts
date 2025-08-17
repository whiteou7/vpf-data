import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { MeetResultDetailed } from "~/types/meet"

export default defineEventHandler(async (event) => {
  const query = getQuery(event)
  const meetId = query.meet_id

  if (!meetId) {
    throw createError({
      statusCode: 400,
      statusMessage: "meet_id is required",
    })
  }

  try {
    const results = await db.execute<MeetResultDetailed>(
      sql.raw(`
        SELECT 
          meet_id,
          athlete_id,
          sex,
          weight_class,
          division,
          body_weight,
          squat1,
          squat2,
          squat3,
          bench1,
          bench2,
          bench3,
          dead1,
          dead2,
          dead3,
          session,
          flight,
          full_name,
          total,
          gl
        FROM
          meet_result_detailed
        WHERE
          meet_id = ${meetId}
        `)
    )
    
    if (!results.length) {
      return null
    }

    return results
  } catch (error) {
    console.error("Error fetching meet info:", error)
    return null
  }
})