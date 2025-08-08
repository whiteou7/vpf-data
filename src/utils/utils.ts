import type { Sex } from "~/types/lifter"
import type { RecordTableRow, Result, LiftRecord } from "~/types/record"

export function getWeightClassDisplay(weightClass: number, sex: Sex): string {
  return weightClass === 999 ? (sex === "male" ? "120+kg" : "84+kg") : `${weightClass}kg`
}

export function transformRecordsToHeaders(records: LiftRecord[]): RecordTableRow[] {
  // Group records by weight class
  const groupedByWeightClass = records.reduce((acc, record) => {
    const weightClass = record.weight_class
    if (!acc[weightClass]) {
      acc[weightClass] = {}
    }
    acc[weightClass][record.rank] = {
      name: record.full_name,
      result: record.result
    }
    return acc
  }, {} as Record<number, Record<number, Result>>)

  // Transform grouped data to Header format
  const row: RecordTableRow[] = Object.entries(groupedByWeightClass).map(([weightClass, ranks]) => ({
    gold: ranks[1] || null,
    silver: ranks[2] || null,
    bronze: ranks[3] || null,
    weight_class: Number(weightClass),
    sex: records[0]?.sex
  }))

  // Sort by weight class
  return row.sort((a, b) => a.weight_class - b.weight_class)
}