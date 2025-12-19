import { db } from "../../db"
import type { Meet } from "~/types/meet"
import type { APIBody } from "~/types/api"

export default defineEventHandler(async (event): Promise<APIBody<{ meets: Meet[] }>> => {
  try {
    const meets = await db<Meet[]>`
      SELECT
        mi.meet_id,
        mi.meet_name,
        mi.city,
        mi.host_date,
        mi.media_link,
        COUNT(mr.vpf_id) AS count,
        mi.meet_slug
      FROM meet_info mi
      JOIN meet_result mr
        ON mi.meet_id = mr.meet_id
      GROUP BY
        mi.meet_id,
        mi.meet_name,
        mi.city,
        mi.host_date,
        mi.media_link,
        mi.meet_slug

      UNION ALL

      SELECT
        mi.meet_id,
        mi.meet_name,
        mi.city,
        mi.host_date,
        mi.media_link,
        COUNT(lmr.vpf_id) AS count,
        mi.meet_slug
      FROM meet_info mi
      JOIN legacy_meet_result lmr
        ON mi.meet_id = lmr.meet_id
      GROUP BY
        mi.meet_id,
        mi.meet_name,
        mi.city,
        mi.host_date,
        mi.media_link,
        mi.meet_slug

      ORDER BY host_date ASC;
      `

    setHeader(event, "Cache-Control", "public, max-age=3600, s-maxage=3600")
    
    setResponseStatus(event, 200)
    // Format date
    return {
      success: true,
      data: { meets: meets.map(meet => ({ ...meet, hostDate: new Date(meet.hostDate).toLocaleDateString("en-GB") })) },
    }
  } catch (error) {
    console.error("Error fetching meets info:", error)
    setResponseStatus(event, 500)
    return {
      success: false,
      message: (error as Error).message
    }
  }
})