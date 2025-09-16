import { db } from "../../db"
import type { LifterResult } from "~/types/lifter"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (): Promise<APIBody<{ lifters: LifterResult[] }>> => {
  try {
    const lifters = await db<LifterResult[]>`
      SELECT 
        ROW_NUMBER() OVER (ORDER BY gl DESC) AS "#",
        vpf_id,
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
        SELECT DISTINCT ON (vpf_id) 
          vpf_id,
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
        ORDER BY vpf_id, gl DESC
      ) sub
      ORDER BY gl DESC;
    `
    return {
      success: true,
      data: { lifters },
    }
  } catch (error) {
    console.error("Error fetching lifters info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    }
  }
})