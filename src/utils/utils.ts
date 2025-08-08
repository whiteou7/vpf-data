import type { NestedRecord, DivisionRecord, RecordTableRow, Result, LiftRecord } from "~/types/record"
import type { Sex } from "~/types/lifter"

// Destructure raw record data
export function mapRecordsToDivisions(records: NestedRecord) {
  if (!records) {
    return { maleRecords: null, femaleRecords: null }
  }
  const maleRecords: DivisionRecord = {
    subjr: {
      squat: records.squat.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      bench: records.bench.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      total: records.total.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? []
    },
    jr: {
      squat: records.squat.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      bench: records.bench.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      total: records.total.filter(lift => lift.sex === "male" && lift.division === "jr") ?? []
    },
    open: {
      squat: records.squat.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      bench: records.bench.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      total: records.total.filter(lift => lift.sex === "male" && lift.division === "open") ?? []
    },
    mas: {
      squat: records.squat.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      bench: records.bench.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      total: records.total.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }
  const femaleRecords: DivisionRecord = {
    subjr: {
      squat: records.squat.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      bench: records.bench.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      total: records.total.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? []
    },
    jr: {
      squat: records.squat.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      bench: records.bench.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      total: records.total.filter(lift => lift.sex === "female" && lift.division === "jr") ?? []
    },
    open: {
      squat: records.squat.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      bench: records.bench.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      total: records.total.filter(lift => lift.sex === "female" && lift.division === "open") ?? []
    },
    mas: {
      squat: records.squat.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      bench: records.bench.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      deadlift: records.deadlift.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      total: records.total.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }
  return { maleRecords, femaleRecords }
}

export function getWeightClassDisplay(weightClass: number, sex: Sex): string {
  return weightClass === 999 ? (sex === "male" ? "120+kg" : "84+kg") : `${weightClass}kg`
}

// Convert raw record data to row object
export function transformRecordsToRows(records: LiftRecord[]): RecordTableRow[] {
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