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
          CASE WHEN body_weight = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM body_weight::text)) END as body_weight,
          CASE WHEN squat1 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM squat1::text)) END as squat1,
          CASE WHEN squat2 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM squat2::text)) END as squat2,
          CASE WHEN squat3 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM squat3::text)) END as squat3,
          CASE WHEN bench1 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM bench1::text)) END as bench1,
          CASE WHEN bench2 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM bench2::text)) END as bench2,
          CASE WHEN bench3 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM bench3::text)) END as bench3,
          CASE WHEN dead1 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM dead1::text)) END as dead1,
          CASE WHEN dead2 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM dead2::text)) END as dead2,
          CASE WHEN dead3 = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM dead3::text)) END as dead3,
          session,
          flight,
          full_name,
          CASE WHEN total = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM total::text)) END as total,
          CASE WHEN gl = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM gl::text)) END as gl,
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