import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LifterResult } from "~/types/lifter"

export default defineEventHandler(async () => {
  try {
    const lifters = await db.execute<LifterResult>(
      sql.raw(`
        SELECT 
          ROW_NUMBER() OVER (ORDER BY gl DESC) AS "#",
          athlete_id,
          full_name,
          weight_class,
          sex,
          division,
          CASE WHEN best_squat = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_squat::text)) END as best_squat,
          CASE WHEN best_bench = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_bench::text)) END as best_bench,
          CASE WHEN best_dead = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_dead::text)) END as best_dead,
          CASE WHEN total = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM total::text)) END as total,
          gl
        FROM (
          SELECT DISTINCT ON (athlete_id) 
            athlete_id,
            full_name,
            weight_class,
            sex,
            division,
            best_squat,
            best_bench,
            best_dead,
            total,
            gl
          FROM meet_result_detailed
          ORDER BY athlete_id, gl DESC
        ) sub
        ORDER BY gl DESC;

      `)
    )
    return lifters
  } catch (error) {
    console.error("Error fetching lifters info:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Internal Server Error"
    })
  }
})