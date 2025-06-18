import { sql } from "drizzle-orm"
import { db } from "../../db"

export default defineEventHandler(async (event) => {
  const query = getQuery(event)

  if (query.limit) {
    try {
      const lifters = await db.execute(
        sql.raw(`
          SELECT 
            ROW_NUMBER() OVER (ORDER BY dots DESC) AS "#",
            sub.*
          FROM (
            SELECT DISTINCT ON (athlete_id) *
            FROM meet_result_detailed
            ORDER BY athlete_id, dots DESC
          ) sub
          ORDER BY dots DESC
          LIMIT ${query.limit};
        `)
      )

      if (!lifters.length) {
        return null
      }

      return lifters

    } catch (error) {
      console.error("Error fetching lifters info:", error)
      return null
    }
  }

  try {
    const lifters = await db.execute(
      sql.raw(`
        SELECT 
          ROW_NUMBER() OVER (ORDER BY dots DESC) AS "#",
          sub.*
        FROM (
          SELECT DISTINCT ON (athlete_id) *
          FROM meet_result_detailed
          ORDER BY athlete_id, dots DESC
        ) sub
        ORDER BY dots DESC;

      `)
    )

    if (!lifters.length) {
      return null
    }

    return lifters
  } catch (error) {
    console.error("Error fetching lifters info:", error)
    return null
  }
})