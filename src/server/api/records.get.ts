import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LiftRecord, TotalRecord } from "~/types/record"
import { destructureRecords } from "~/utils/utils"

export default defineEventHandler(async () => {
  try {
    const squat = await db.execute<LiftRecord>(
      sql.raw(`
        SELECT 
          meet_name,
          full_name,
          sex,
          division,
          weight_class,
          CASE WHEN squat = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM squat::text)) END AS result,
          rank
        FROM
          squat_records
      `)
    )

    const bench = await db.execute<LiftRecord>(
      sql.raw(`
        SELECT 
          meet_name,
          full_name,
          sex,
          division,
          weight_class,
          CASE WHEN bench = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM bench::text)) END AS result,
          rank
        FROM
          bench_records
      `)
    )

    const deadlift = await db.execute<LiftRecord>(
      sql.raw(`
        SELECT 
          meet_name,
          full_name,
          sex,
          division,
          weight_class,
          CASE WHEN deadlift = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM deadlift::text)) END AS result,
          rank
        FROM
          deadlift_records
      `)
    )

    const total = await db.execute<TotalRecord>(
      sql.raw(`
        SELECT 
          meet_name,
          full_name,
          sex,
          division,
          weight_class,
          CASE WHEN total = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM total::text)) END AS result,
          CASE WHEN ipf = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM ipf::text)) END AS ipf,
          CASE WHEN gl = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM gl::text)) END AS gl,
          CASE WHEN dots = 0 THEN '0' ELSE TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM dots::text)) END AS dots,
          rank
        FROM
          total_records
      `)
    )

    return destructureRecords({ squat, bench, deadlift, total })
  } catch (error) {
    console.error("Error fetching records info:", error)
    throw createError({
      statusCode: 500,
      statusMessage: "Internal Server Error"
    })
  }
})