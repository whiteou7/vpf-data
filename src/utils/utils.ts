import type { Sex } from "~/types/lifter"
import type { Header, SquatRecord } from "~/types/record"

export function getWeightClassDisplay(weightClass: number, sex: Sex): string {
  return weightClass === 999 ? (sex === "male" ? "120+kg" : "84+kg") : `${weightClass}kg`
}

export function transformSquatRecordsToHeaders(records: SquatRecord[]): Header[] {
  // Group records by weight class
  const groupedByWeightClass = records.reduce((acc, record) => {
    const weightClass = record.weight_class
    if (!acc[weightClass]) {
      acc[weightClass] = {}
    }
    acc[weightClass][record.rank] = record.full_name
    return acc
  }, {} as Record<number, Record<number, string>>)

  // Transform grouped data to Header format
  const headers: Header[] = Object.entries(groupedByWeightClass).map(([weightClass, ranks]) => ({
    gold: ranks[1] || null,
    silver: ranks[2] || null,
    bronze: ranks[3] || null,
    weight_class: Number(weightClass)
  }))

  // Sort by weight class
  return headers.sort((a, b) => a.weight_class - b.weight_class)
}