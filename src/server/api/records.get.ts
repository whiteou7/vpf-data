import { db } from "../../db"
import type { RecordTableRow, RecordTableRowGroup } from "~/types/record"
import type { APIBody } from "~/types/api"
import type { Sex } from "~/types/athlete"
import type { MeetResult } from "~/types/meet"

// IPF Weight Classes (2023 onwards)
const MALE_WEIGHT_CLASSES = [59, 66, 74, 83, 93, 105, 120, 999] // 999 represents 120+
const FEMALE_WEIGHT_CLASSES = [47, 52, 57, 63, 69, 76, 84, 999] // 999 represents 84+

function createEmptyRow(weightClass: number, sex: Sex): RecordTableRow {
  return {
    vpfId: "",
    weightClass,
    fullName: "-",
    result: 0,
    bodyWeight: 0,
    yearOfBirth: 0,
    sex,
    date: "-"
  }
}

function fillEmptyWeightClasses(group: RecordTableRowGroup, sex: Sex) {
  const weightClasses = sex === "male" ? MALE_WEIGHT_CLASSES : FEMALE_WEIGHT_CLASSES
  const divisions: Array<"subjr" | "jr" | "open" | "mas"> = ["subjr", "jr", "open", "mas"]
  const lifts: Array<"squat" | "bench" | "deadlift" | "total"> = ["squat", "bench", "deadlift", "total"]

  divisions.forEach(division => {
    lifts.forEach(lift => {
      const existingWeightClasses = new Set(
        group[division][lift].map(row => row.weightClass)
      )

      weightClasses.forEach(wc => {
        if (!existingWeightClasses.has(wc)) {
          group[division][lift].push(createEmptyRow(wc, sex))
        }
      })

      // Sort by weight class
      group[division][lift].sort((a, b) => a.weightClass - b.weightClass)
    })
  })
}

export default defineEventHandler(async (event): Promise<APIBody<{ male: RecordTableRowGroup, female: RecordTableRowGroup}>> => {
  try {
    const res = await db<MeetResult[]>`
      SELECT * 
      FROM public.meet_result_detailed
      WHERE type='national' AND meet_id > 2;
    `

    const maleRowGroup: RecordTableRowGroup = {
      subjr: { squat: [], bench: [], deadlift: [], total: [] },
      jr: { squat: [], bench: [], deadlift: [], total: [] },
      open: { squat: [], bench: [], deadlift: [], total: [] },
      mas: { squat: [], bench: [], deadlift: [], total: [] },
    }

    const femaleRowGroup: RecordTableRowGroup = {
      subjr: { squat: [], bench: [], deadlift: [], total: [] },
      jr: { squat: [], bench: [], deadlift: [], total: [] },
      open: { squat: [], bench: [], deadlift: [], total: [] },
      mas: { squat: [], bench: [], deadlift: [], total: [] },
    }

    // Group results by sex, target division (with promotion), weight class, and lift
    type GroupKey = string // Format: "sex-targetDivision-weightClass-lift"
    const groupedResults = new Map<GroupKey, MeetResult[]>()

    res.forEach((row) => {
      const lifts: ("squat" | "bench" | "deadlift" | "total")[] = ["squat", "bench", "deadlift", "total"]
      
      // Normalize original division
      let originalDiv: "subjr" | "jr" | "open" | "mas"
      const divisionValue = row.division === "mas1" ? "mas" : row.division
      if (divisionValue === "subjr") {
        originalDiv = "subjr"
      } else if (divisionValue === "jr") {
        originalDiv = "jr"
      } else if (divisionValue === "mas") {
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

    // Process each group to find the top record
    groupedResults.forEach((results, key) => {
      const [sex, division, weightClass, lift] = key.split("-")
      
      // Sort by lift value (desc), then bodyweight (asc) for tie-breaking
      results.sort((a, b) => {
        const aValue = (a as any).currentValue
        const bValue = (b as any).currentValue
        if (bValue !== aValue) return bValue - aValue
        return a.bodyWeight - b.bodyWeight
      })

      // Take the top result (best athlete)
      const topResult = results[0]
      if (!topResult) return

      // Create row for the weight class
      const recordRow: RecordTableRow = {
        vpfId: topResult.vpfId,
        weightClass: Number(weightClass),
        fullName: topResult.fullName,
        slug: topResult.slug,
        result: (topResult as any).currentValue,
        bodyWeight: topResult.bodyWeight,
        yearOfBirth: topResult.dob ?? 0,
        sex: sex as Sex,
        date: topResult.hostDate.toISOString().split("T")[0]
      }

      // Insert into appropriate group with new nesting structure
      const group = sex === "male" ? maleRowGroup : femaleRowGroup
      const divKey = division as "subjr" | "jr" | "open" | "mas"
      const liftKey = lift as "squat" | "bench" | "deadlift" | "total"
      
      // Safety check
      if (group[divKey] && group[divKey][liftKey]) {
        group[divKey][liftKey].push(recordRow)
      } else {
        console.warn(`Invalid group key: division=${divKey}, lift=${liftKey}, sex=${sex}`)
      }
    })

    // Fill in empty weight classes for both male and female
    fillEmptyWeightClasses(maleRowGroup, "male")
    fillEmptyWeightClasses(femaleRowGroup, "female")

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