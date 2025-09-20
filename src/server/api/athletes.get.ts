import { db } from "../../db"
import type { AthleteCompInfo } from "~/types/athlete"
import type { APIBody } from "~/types/api"
import humps from "humps"

export default defineEventHandler(async (event): Promise<APIBody<{ athletes: AthleteCompInfo[] }>> => {
  try {
    const athletes = humps.camelizeKeys(await db`
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
    `) as AthleteCompInfo[]
    
    setHeader(event, "Cache-Control", "public, max-age=3600, s-maxage=3600")

    return {
      success: true,
      data: { athletes },
    }
  } catch (error) {
    console.error("Error fetching athletes info:", error)
    return {
      success: false,
      message: "Internal Server Error",
    }
  }
})