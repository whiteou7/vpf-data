import { db } from "../../db"
import type { RecordTableRow, RecordTableRowGroup } from "~/types/record"
import type { APIBody } from "~/types/api"
import type { Sex } from "~/types/athlete"
import type { MeetResult } from "~/types/meet"

export default defineEventHandler(async (event): Promise<APIBody<{ male: RecordTableRowGroup, female: RecordTableRowGroup}>> => {
  try {
    const res = await db<MeetResult[]>`
      SELECT * 
      FROM public.meet_result_detailed
      WHERE type='national'
    `

    const maleRowGroup: RecordTableRowGroup = {
      squat: { subjr: [], jr: [], open: [], mas: [] },
      bench: { subjr: [], jr: [], open: [], mas: [] },
      deadlift: { subjr: [], jr: [], open: [], mas: [] },
      total: { subjr: [], jr: [], open: [], mas: [] },
    }

    const femaleRowGroup: RecordTableRowGroup = {
      squat: { subjr: [], jr: [], open: [], mas: [] },
      bench: { subjr: [], jr: [], open: [], mas: [] },
      deadlift: { subjr: [], jr: [], open: [], mas: [] },
      total: { subjr: [], jr: [], open: [], mas: [] },
    }

    // Group results by sex, target division (with promotion), weight class, and lift
    type GroupKey = string // Format: "sex-targetDivision-weightClass-lift"
    const groupedResults = new Map<GroupKey, MeetResult[]>()

    res.forEach((row) => {
      const lifts: ("squat" | "bench" | "deadlift" | "total")[] = ["squat", "bench", "deadlift", "total"]
      
      // Normalize original division
      let originalDiv: "subjr" | "jr" | "open" | "mas"
      const divisionValue = row.division === "mas1" ? "mas" : row.division
      if (divisionValue === "subjr" || divisionValue === "sub-jr" || divisionValue === "subjunior") {
        originalDiv = "subjr"
      } else if (divisionValue === "jr" || divisionValue === "junior") {
        originalDiv = "jr"
      } else if (divisionValue === "mas" || divisionValue === "master" || divisionValue === "masters") {
        originalDiv = "mas"
      } else {
        originalDiv = "open"
      }
      
      for (const lift of lifts) {
        // Get lift value using camelCase property names
        let value: number
        if (lift === "total") {
          value = row.total ?? 0
        } else {
          const liftKey = `best${lift === "squat" ? "Squat" : lift === "bench" ? "Bench" : "Dead"}` as keyof MeetResult
          value = (row[liftKey] as number) ?? 0
        }

        // Skip invalid lifts
        if (value <= 0) continue

        // Determine which divisions this result should appear in (with promotion)
        const targetDivisions: Array<"subjr" | "jr" | "open" | "mas"> = []
        
        // Add to original division
        targetDivisions.push(originalDiv)
        
        // Apply promotion rules
        if (originalDiv === "subjr") {
          targetDivisions.push("jr")
          targetDivisions.push("open")
        } else if (originalDiv === "jr") {
          targetDivisions.push("open")
        } else if (originalDiv === "mas") {
          targetDivisions.push("open")
        }

        // Add this result to all target divisions
        targetDivisions.forEach(targetDiv => {
          const key = `${row.sex}-${targetDiv}-${row.weightClass}-${lift}`
          
          if (!groupedResults.has(key)) {
            groupedResults.set(key, [])
          }
          groupedResults.get(key)!.push({ ...row, currentLift: lift, currentValue: value })
        })
      }
    })

    // Process each group to find top 3 records
    groupedResults.forEach((results, key) => {
      const [sex, division, weightClass, lift] = key.split("-")
      
      // Sort by lift value (desc), then bodyweight (asc) for tie-breaking
      results.sort((a, b) => {
        const aValue = (a as any).currentValue
        const bValue = (b as any).currentValue
        if (bValue !== aValue) return bValue - aValue
        return a.bodyWeight - b.bodyWeight
      })

      // Take top 3 unique athletes
      const uniqueAthletes = new Map<string, MeetResult>()
      results.forEach(result => {
        if (uniqueAthletes.size < 3 && !uniqueAthletes.has(result.fullName)) {
          uniqueAthletes.set(result.fullName, result)
        }
      })

      const topResults = Array.from(uniqueAthletes.values())

      // Only create a row if we have at least one result
      if (topResults.length === 0) return

      // Consolidate into single row for the weight class
      const consolidatedRow: RecordTableRow = {
        gold: topResults[0] ? { name: topResults[0].fullName, result: (topResults[0] as any).currentValue } : null,
        silver: topResults[1] ? { name: topResults[1].fullName, result: (topResults[1] as any).currentValue } : null,
        bronze: topResults[2] ? { name: topResults[2].fullName, result: (topResults[2] as any).currentValue } : null,
        weightClass: Number(weightClass),
        bodyWeight: topResults[0]?.bodyWeight ?? 0,
        sex: sex as Sex,
      }

      // Insert into appropriate group
      const group = sex === "male" ? maleRowGroup : femaleRowGroup
      const liftKey = lift as "squat" | "bench" | "deadlift" | "total"
      const divKey = division as "subjr" | "jr" | "open" | "mas"
      
      // Safety check
      if (group[liftKey] && group[liftKey][divKey]) {
        group[liftKey][divKey].push(consolidatedRow)
      } else {
        console.warn(`Invalid group key: lift=${liftKey}, division=${divKey}, sex=${sex}`)
      }
    })

    setHeader(event, "Cache-Control", "public, max-age=86400, s-maxage=86400")
    setResponseStatus(event, 200)
    
    return {
      success: true,
      data: { male: maleRowGroup, female: femaleRowGroup }
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