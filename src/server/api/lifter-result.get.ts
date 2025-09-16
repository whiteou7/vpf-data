import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LifterPB, LifterResult } from "~/types/lifter"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ results: LifterResult[], pb: LifterPB }>> => {
  const query: { athlete_id: string } = getQuery(event)
  const athleteId = query.athlete_id

  if (!athleteId) {
    return {
      success: false,
      error: "athlete_id is required",
    }
  }

  try {
    const results = await db.execute<LifterResult>(
      sql.raw(`
        SELECT
          full_name,
          sex,
          weight_class,
          division,
          best_squat::float as best_squat,
          best_bench::float as best_bench,
          best_dead::float as best_dead,
          total::float as total,
          gl::float as gl,
          body_weight::float as body_weight,
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
        MAX(best_squat)::float as squat_pb,
        MAX(best_bench)::float as bench_pb,
        MAX(best_dead)::float as deadlift_pb,
        MAX(total)::float as total_pb,
        MAX(gl)::float as gl_pb
      FROM meet_result_detailed
      WHERE athlete_id = '${athleteId}'
    `),
    )

    return {
      success: true,
      data: { results, pb: pb[0] },
    }
  } catch (error) {
    console.error("Error fetching info:", error)
    return {
      success: false,
      error: "Failed to fetch athlete info",
    }
  }
})