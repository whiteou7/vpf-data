import { db } from "../../db"
import type { LifterPB, LifterResult } from "~/types/lifter"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ results: LifterResult[], pb: LifterPB }>> => {
  const query: { vpf_id: string } = getQuery(event)
  const vpfId = query.vpf_id

  if (!vpfId) {
    return {
      success: false,
      error: "vpf_id is required",
    }
  }

  try {
    const results = await db<LifterResult[]>`
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
        meet_id,
        vpf_id
      FROM meet_result_detailed
      WHERE vpf_id = ${vpfId}
      ORDER BY meet_id DESC;
    `
    const pbArr = await db<LifterPB[]>`
      SELECT
        MAX(best_squat)::float as squat_pb,
        MAX(best_bench)::float as bench_pb,
        MAX(best_dead)::float as deadlift_pb,
        MAX(total)::float as total_pb,
        MAX(gl)::float as gl_pb
      FROM meet_result_detailed
      WHERE vpf_id = ${vpfId}
    `
    return {
      success: true,
      data: { results, pb: pbArr[0] },
    }
  } catch (error) {
    console.error("Error fetching info:", error)
    return {
      success: false,
      error: "Failed to fetch athlete info",
    }
  }
})