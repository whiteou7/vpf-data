import { db } from "../../db"
import type { MeetResultDetailed } from "~/types/meet"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ results: MeetResultDetailed[] }>> => {
  const query: { meet_id: number } = getQuery(event)
  const meetId = query.meet_id

  if (!meetId) {
    return {
      success: false,
      error: "meet_id is required",
    }
  }

  try {
    const results = await db<MeetResultDetailed[]>`
      SELECT 
        meet_id,
        vpf_id,
        sex,
        weight_class,
        division,
        body_weight::float as body_weight,
        squat1::float as squat1,
        squat2::float as squat2,
        squat3::float as squat3,
        bench1::float as bench1,
        bench2::float as bench2,
        bench3::float as bench3,
        dead1::float as dead1,
        dead2::float as dead2,
        dead3::float as dead3,
        session,
        flight,
        full_name,
        total::float as total,
        gl::float as gl,
        placement
      FROM
        meet_result_detailed
      WHERE
        meet_id = ${meetId}
      ORDER BY
        flight,
        weight_class,
        division,
        placement;
    `
    return {
      success: true,
      data: { results },
    }
  } catch (error) {
    console.error("Error fetching meet info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    }
  }
})