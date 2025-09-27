import type { RecordTableRow, Result, LiftRecord, DestructuredRecord, TotalRecord } from "~/types/record"
import type { Sex } from "~/types/athlete"

import type { FormTextFieldConfig } from "~/types/component"

// Destructure raw record data
export function destructureRecords(
  records: {
    squat: LiftRecord[],
    bench: LiftRecord[],
    deadlift: LiftRecord[],
    total: TotalRecord[]
  }
) {
  if (!records) {
    return { male: null, female: null }
  }

  const male: DestructuredRecord = {
    squat: {
      subjr: records.squat.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      jr: records.squat.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      open: records.squat.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      mas: records.squat.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    bench: {
      subjr: records.bench.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      jr: records.bench.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      open: records.bench.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      mas: records.bench.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    deadlift: {
      subjr: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      jr: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      open: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      mas: records.deadlift.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    total: {
      subjr: records.total.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      jr: records.total.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      open: records.total.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      mas: records.total.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }

  const female: DestructuredRecord = {
    squat: {
      subjr: records.squat.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      jr: records.squat.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      open: records.squat.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      mas: records.squat.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    bench: {
      subjr: records.bench.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      jr: records.bench.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      open: records.bench.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      mas: records.bench.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    deadlift: {
      subjr: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      jr: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      open: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      mas: records.deadlift.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    },
    total: {
      subjr: records.total.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      jr: records.total.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      open: records.total.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      mas: records.total.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }

  return { male, female }
}

export function getWeightClassDisplay(weightClass: number, sex: Sex): string {
  return weightClass === 999 ? (sex === "male" ? "120+kg" : "84+kg") : `${weightClass}kg`
}

// Convert raw record data to row object
export function transformRecordsToRows(records: LiftRecord[]): RecordTableRow[] {
  // Group records by weight class
  const groupedByWeightClass = records.reduce((acc, record) => {
    const weightClass = record.weightClass
    if (!acc[weightClass]) {
      acc[weightClass] = {}
    }
    acc[weightClass][record.rank] = {
      name: record.fullName,
      result: record.result
    }
    return acc
  }, {} as Record<number, Record<number, Result>>)

  // Transform grouped data to Header format
  const row: RecordTableRow[] = Object.entries(groupedByWeightClass).map(([weightClass, ranks]) => ({
    gold: ranks[1] || null,
    silver: ranks[2] || null,
    bronze: ranks[3] || null,
    weightClass: Number(weightClass),
    sex: records[0]?.sex
  }))

  // Sort by weight class
  return row.sort((a, b) => a.weightClass - b.weightClass)
}

export async function getHashedFileName(str1: string, str2: string, length = 16) {
  const encoder = new TextEncoder()
  const data = encoder.encode(str1 + str2)
  
  const hashBuffer = await crypto.subtle.digest("SHA-256", data)

  const hashArray = Array.from(new Uint8Array(hashBuffer))
  const hashHex = hashArray.map(b => b.toString(16).padStart(2, "0")).join("")

  return hashHex.slice(0, length)
}

// Used for FormData, cast all fields with number type to number
// eslint-disable-next-line @typescript-eslint/no-explicit-any
export function normalizeFormData<T extends Record<string, any>>(
  model: T,
  fields: Array<FormTextFieldConfig>
): Record<string, number | string | null> {
  const payload: Record<string, number | string | null> = { ...model }

  for (const field of fields) {
    if (field.type === "number" && payload[field.value] !== "" && payload[field.value] != null) {
      payload[field.value] = Number(payload[field.value])
    }
  }

  return payload
}
