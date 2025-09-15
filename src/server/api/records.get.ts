import { sql } from "drizzle-orm"
import { db } from "../../db"
import type { LiftRecord, TotalRecord } from "~/types/record"
import { destructureRecords } from "~/utils/utils"
import type { APIBody } from "~/types/api"

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
          squat::float AS result,
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
          bench::float AS result,
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
          deadlift::float AS result,
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
          total::float AS result,
          ipf::float AS ipf,
          gl::float AS gl,
          dots::float AS dots,
          rank
        FROM
          total_records
      `)
    )

    return {
      success: true,
      data: destructureRecords({ squat, bench, deadlift, total }),
    } as APIBody<ReturnType<typeof destructureRecords>>
  } catch (error) {
    console.error("Error fetching records info:", error)
    return {
      success: false,
      error: "Internal Server Error",
    } as APIBody<null>
  }
})