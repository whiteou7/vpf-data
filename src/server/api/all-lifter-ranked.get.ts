import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LifterResult } from "~/types/lifter"

export default defineEventHandler(async () => {
  try {
    const lifters = await db.execute<LifterResult>(
      sql.raw(`
        SELECT 
          ROW_NUMBER() OVER (ORDER BY dots DESC) AS "#",
          sub.*
        FROM (
          SELECT DISTINCT ON (athlete_id) 
            full_name,
            weight_class,
            sex,
            division,
            best_squat,
            best_bench,
            best_dead,
            total,
            dots
          FROM meet_result_detailed
          ORDER BY athlete_id, dots DESC
        ) sub
        ORDER BY dots DESC;

      `)
    )
    return lifters
  } catch (error) {
    console.error("Error fetching lifters info:", error)
    throw createError({
      statusCode: 500,
      statusMessage: 'Internal Server Error'
    })
  }
})