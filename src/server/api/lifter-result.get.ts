import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LifterPB, LifterResult } from "~/types/lifter"

export default defineEventHandler(async (event) => {
  const query = getQuery(event)
  const athleteId = query.athlete_id

  if (!athleteId) {
    throw createError({
      statusCode: 400,
      statusMessage: "athlete_id is required",
    })
  }

  try {
    const results = await db.execute<LifterResult>(
      sql.raw(`
        SELECT
          weight_class,
          division,
          best_squat,
          best_bench,
          best_dead,
          total,
          dots
        FROM meet_result_detailed
        WHERE athlete_id = '${athleteId}'
        ORDER BY meet_id;
      `)
    )

    const pb = await db.execute<LifterPB>(
      sql.raw(`
      SELECT
        MAX(best_squat) as squat_pb,
        MAX(best_bench) as bench_pb,
        MAX(best_dead) as deadlift_pb,
        MAX(total) as total_pb,
        MAX(dots) as dots_pb
      FROM meet_result_detailed
      WHERE athlete_id = '${athleteId}'
    `),
    )

    return { results, pb: pb[0] } 
  } catch (error) {
    console.error("Error fetching info:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Failed to fetch athlete info",
    })
  }
})