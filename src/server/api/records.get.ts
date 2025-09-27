import { db } from "../../db"
import type { LiftRecord, TotalRecord } from "~/types/record"
import { destructureRecords } from "~/utils/utils"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<ReturnType<typeof destructureRecords>>> => {
  try {
    const squat = await db<LiftRecord[]>`
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
    `
    const bench = await db<LiftRecord[]>`
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
    `
    const deadlift = await db<LiftRecord[]>`
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
    `
    const total = await db<TotalRecord[]>`
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
    `
    setHeader(event, "Cache-Control", "public, max-age=86400, s-maxage=86400")

    setResponseStatus(event, 200)
    return {
      success: true,
      data: destructureRecords({ squat, bench, deadlift, total }),
    }
  } catch (error) {
    console.error("Error fetching records info:", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})