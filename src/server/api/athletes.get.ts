import type { Athlete } from "~/types/athlete"
import { db } from "../../db"
import type { APIBody } from "~/types/api"
import type { MeetType } from "~/types/meet"

export default defineEventHandler(async (event): Promise<APIBody<{ athletes: Athlete[] }>> => {
  try {
    const query = getQuery(event)
    const meetType = query.type as MeetType | "all" | undefined
    let sort = query.sort as "gl" | "best_squat" | "best_bench" | "best_dead" | "total"

    const whereClause = meetType == "all" ? db`` : meetType == undefined ? db`` : db`WHERE type = ${meetType}`
    if (sort === undefined) sort = "gl"

    const sortableColumns: Record<string, string> = {
      gl: "gl",
      best_squat: "best_squat",
      best_bench: "best_bench",
      best_dead: "best_dead",
      total: "total"
    }

    const sortColumn = sortableColumns[sort] ?? "gl"

    const athletes = await db<Athlete[]>`
  SELECT 
    ROW_NUMBER() OVER (ORDER BY ${db.unsafe(sortColumn)} DESC) AS "#",
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
    ${whereClause}
    ORDER BY vpf_id, gl DESC
  ) sub
  ORDER BY ${db.unsafe(sortColumn)} DESC;
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