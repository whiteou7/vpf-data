import type { Athlete } from "~/types/athlete"
import { db } from "../../db"
import type { APIBody } from "~/types/api"
import { Meet, type MeetType } from "~/types/meet"

export default defineEventHandler(
  async (event): Promise<APIBody<{ athletes: Athlete[] }>> => {
    try {
      const query = getQuery(event)

      /* -------------------- query parsing -------------------- */
      const sortKey = (query.sort as string) ?? "gl"
      const meetType = query.type as MeetType | undefined
      const sex = query.sex as "male" | "female" | undefined
      const division = query.division as string | undefined
      const weightClass = query.weightClass
        ? Number(query.weightClass)
        : undefined

      /* -------------------- sort mapping -------------------- */
      const sort =
        sortKey === "best_squat" ? db`best_squat` :
        sortKey === "best_bench" ? db`best_bench` :
        sortKey === "best_dead" ? db`best_dead` :
        sortKey === "total" ? db`total` :
        db`gl`

      /* -------------------- WHERE clause -------------------- */
      let whereClause = db`WHERE vpf_id is not null`

      if (meetType) {
        whereClause = db`${whereClause} AND type = ${meetType}`
      }

      if (sex) {
        whereClause = db`${whereClause} AND sex = ${sex}`
      }

      if (division) {
        whereClause = db`${whereClause} AND division = ${division}`
      }

      if (weightClass != null) {
        whereClause = db`${whereClause} AND weight_class = ${weightClass}`
      }

      /* -------------------- query -------------------- */
      const athletesRaw = await db<Athlete[]>`
        SELECT *
        FROM (
          SELECT DISTINCT ON (vpf_id)
            vpf_id,
            full_name,
            slug,
            weight_class,
            sex,
            division,
            best_squat,
            best_bench,
            best_dead,
            total,
            gl,
            instagram_username,
            host_date as date,
            decorator_1,
            decorator_2
          FROM meet_result_detailed
          ${whereClause}
          ORDER BY vpf_id, ${sort} DESC
        ) sub
        ORDER BY ${sort} DESC;
      `

      const [latestMeet] = await db<Meet[]>`
        SELECT host_date FROM meet_info ORDER BY host_date DESC;
      `

      // add "#" for pagination / ranking
      const athletes = athletesRaw.map((athlete, index) => ({
        ...athlete,
        rank: index + 1,
        new: new Date(athlete.date).toISOString().slice(0, 10) === new Date(latestMeet.hostDate).toISOString().slice(0, 10)
      }))

      setHeader(event, "Cache-Control", "public, max-age=3600, s-maxage=3600")
      setResponseStatus(event, 200)

      return {
        success: true,
        data: { athletes }
      }
    } catch (error) {
      console.error("Error fetching athletes info:", error)
      setResponseStatus(event, 500)
      return {
        success: false,
        message: (error as Error).message
      }
    }
  }
)
