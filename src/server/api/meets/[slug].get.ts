import { db } from "../../../db"
import type { MeetResult } from "~/types/meet"
import type { APIBody } from "~/types/api"

type BestLifterInfo = {
  placement: number
  weightClass: number
  fullName: string
  vpfId: string
  slug: string
  bodyWeight: number
  bestSquat: number
  bestBench: number
  bestDead: number
  total: number
  gl: number
}

export default defineEventHandler(
  async (
    event
  ): Promise<
    APIBody<{
      name: string
      results: MeetResult[]
      bestLifters: {
        male: BestLifterInfo[]
        female: BestLifterInfo[]
      }
    }>
  > => {
    const slug = event.context.params?.slug

    if (!slug) {
      setResponseStatus(event, 400)
      return {
        success: false,
        message: "Slug is required",
      }
    }

    try {
      const results = await db<MeetResult[]>`
        SELECT 
          meet_id,
          meet_name,
          vpf_id,
          sex,
          weight_class,
          division,
          body_weight::float as body_weight,
          squat1::float as squat1,
          squat2::float as squat2,
          squat3::float as squat3,
          best_squat::float as best_squat,
          bench1::float as bench1,
          bench2::float as bench2,
          bench3::float as bench3,
          best_bench::float as best_bench,
          dead1::float as dead1,
          dead2::float as dead2,
          dead3::float as dead3,
          best_dead::float as best_dead,
          session,
          flight,
          full_name,
          total::float as total,
          gl::float as gl,
          placement,
          slug
        FROM
          meet_result_detailed
        WHERE
          meet_slug = ${slug}
        ORDER BY
          flight,
          weight_class,
          division,
          placement;
      `

      if (results.length === 0) {
        setResponseStatus(event, 404)
        return {
          success: false,
          message: "No results found for this meet",
        }
      }

      const groupKey = (r: MeetResult) =>
        `${r.sex}|${r.division}|${r.weightClass}`

      const groupCounts = results.reduce<Record<string, number>>(
        (acc, r) => {
          const key = groupKey(r)
          acc[key] = (acc[key] ?? 0) + 1
          return acc
        },
        {}
      )

      const pickBest = (sex: "male" | "female"): BestLifterInfo[] => {
        return results
          .filter(r => r.sex === sex)
          .filter(
            r =>
              r.total > 0 &&
              groupCounts[groupKey(r)] >= 3
          )
          .sort((a, b) => (b.gl ?? 0) - (a.gl ?? 0))
          .slice(0, 3)
          .map((b, i) => ({
            placement: i + 1,
            weightClass: b.weightClass,
            fullName: b.fullName,
            vpfId: b.vpfId,
            slug: b.slug,
            bodyWeight: b.bodyWeight,
            bestSquat: b.bestSquat,
            bestBench: b.bestBench,
            bestDead: b.bestDead,
            total: b.total,
            gl: b.gl,
          }))
      }

      setResponseStatus(event, 200)
      return {
        success: true,
        data: {
          name: results[0].meetName,
          results,
          bestLifters: {
            male: pickBest("male"),
            female: pickBest("female"),
          },
        },
      }
    } catch (error) {
      console.error("Error fetching meet info:", error)
      setResponseStatus(event, 500)
      return {
        success: false,
        message: (error as Error).message,
      }
    }
  }
)
