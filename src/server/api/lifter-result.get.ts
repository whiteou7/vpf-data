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
          full_name,
          sex,
          weight_class,
          division,
          CASE WHEN best_squat = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_squat::text)) END as best_squat,
          CASE WHEN best_bench = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_bench::text)) END as best_bench,
          CASE WHEN best_dead = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM best_dead::text)) END as best_dead,
          CASE WHEN total = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM total::text)) END as total,
          CASE WHEN dots = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM dots::text)) END as dots,
          CASE WHEN body_weight = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM body_weight::text)) END as body_weight,
          placement,
          meet_name,
          meet_id
        FROM meet_result_detailed
        WHERE athlete_id = '${athleteId}'
        ORDER BY meet_id DESC;
      `)
    )

    const pb = await db.execute<LifterPB>(
      sql.raw(`
      SELECT
        CASE WHEN MAX(best_squat) = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM MAX(best_squat)::text)) END as squat_pb,
        CASE WHEN MAX(best_bench) = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM MAX(best_bench)::text)) END as bench_pb,
        CASE WHEN MAX(best_dead) = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM MAX(best_dead)::text)) END as deadlift_pb,
        CASE WHEN MAX(total) = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM MAX(total)::text)) END as total_pb,
        CASE WHEN MAX(dots) = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM MAX(dots)::text)) END as dots_pb
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