import type { Athlete } from "~/types/athlete"
import { db } from "../../db"
import type { APIBody } from "~/types/api"
import type { MeetType } from "~/types/meet"

export default defineEventHandler(
  async (event): Promise<APIBody<{ athletes: Athlete[] }>> => {
    try {
      const query = getQuery(event)

      /* -------------------- query parsing -------------------- */
      const sortKey = (query.sort as string) ?? "gl"
      const meetTypeRaw = query.type as string | undefined
      const meetTypes = meetTypeRaw ? (meetTypeRaw.split(",") as MeetType[]) : undefined
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
      let whereClause = db`WHERE vpf_id is not null AND NOT hidden`

      if (meetTypes && meetTypes.length > 0) {
        whereClause = db`${whereClause} AND type IN ${db(meetTypes)}`
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
      const athletesRaw = await db<(Athlete & { type: string })[]>`
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
            decorator_2,
            type
          FROM meet_result_detailed
          ${whereClause}
          ORDER BY vpf_id, ${sort} DESC
        ) sub
        ORDER BY ${sort} DESC;
      `

      const latestMeetByType = await db<{ type: string; hostDate: string }[]>`
        SELECT DISTINCT ON (type) type, host_date as "hostDate"
        FROM meet_info
        ORDER BY type, host_date DESC;
      `

      const latestDateByType = Object.fromEntries(
        latestMeetByType.map(m => [m.type, new Date(m.hostDate).toISOString().slice(0, 10)])
      )

      // add "#" for pagination / ranking
      const athletes = athletesRaw.map(({ type, ...athlete }, index) => ({
        ...athlete,
        rank: index + 1,
        new: new Date(athlete.date).toISOString().slice(0, 10) === latestDateByType[type]
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
