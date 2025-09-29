import { db } from "../../db"

export default defineEventHandler(async (event) => {
  try {
    const athletes = await db`
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
        gl,
        instagram_username
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
          gl,
          instagram_username
        FROM meet_result_detailed
        ORDER BY vpf_id, gl DESC
      ) sub
      ORDER BY gl DESC;
    `
    
    setHeader(event, "Cache-Control", "public, max-age=3600, s-maxage=3600")

    setResponseStatus(event, 200)
    return {
      success: true,
      data: { athletes },
    }
  } catch (error) {
    console.error("Error fetching athletes info:", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})