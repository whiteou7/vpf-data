import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LifterResult } from "~/types/lifter"
import type { APIBody } from "~/types/api"

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
          best_squat::float as best_squat,
          best_bench::float as best_bench,
          best_dead::float as best_dead,
          total::float as total,
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
    return {
      success: true,
      data: lifters,
    } as APIBody<LifterResult[]>
  } catch (error) {
    console.error("Error fetching lifters info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    } as APIBody<null>
  }
})