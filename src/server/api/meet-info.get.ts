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
          body_weight::float as body_weight,
          squat1::float as squat1,
          squat2::float as squat2,
          squat3::float as squat3,
          bench1::float as bench1,
          bench2::float as bench2,
          bench3::float as bench3,
          dead1::float as dead1,
          dead2::float as dead2,
          dead3::float as dead3,
          session,
          flight,
          full_name,
          total::float as total,
          gl::float as gl,
          placement
        FROM
          meet_result_detailed
        WHERE
          meet_id = ${meetId}
        ORDER BY
          flight,
          weight_class,
          division,
          placement;
        `)
    )
  
    return results
  } catch (error) {
    console.error("Error fetching meet info:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Internal Server Error"
    })
  }
})