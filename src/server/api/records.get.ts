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
          squat AS result,
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
          bench AS result,
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
          deadlift AS result,
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
          total AS result,
          ipf,
          gl,
          dots,
          rank
        FROM
          total_records
      `)
    )

    return destructureRecords({ squat, bench, deadlift, total })
  } catch (error) {
    console.error("Error fetching records info:", error)
    return null
  }
})