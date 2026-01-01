import type { Division, Sex } from "./athlete"

export type LiftRecord = {
  meetName: string;
  fullName: string;
  weightClass: number;
  rank: 1 | 2 | 3;
  sex: Sex;
  division: Division;
  result: number
}

export type TotalRecord = LiftRecord & { 
  ipf: number,
  gl: number
}

export type DestructuredRecord = {
  squat: {
    subjr: LiftRecord[],
    jr: LiftRecord[],
    open: LiftRecord[],
    mas1: LiftRecord[],
    mas2: LiftRecord[],
    mas3: LiftRecord[],
    mas4: LiftRecord[]
  },
  bench: {
    subjr: LiftRecord[],
    jr: LiftRecord[],
    open: LiftRecord[],
    mas1: LiftRecord[],
    mas2: LiftRecord[],
    mas3: LiftRecord[],
    mas4: LiftRecord[]
  },
  deadlift: {
    subjr: LiftRecord[],
    jr: LiftRecord[],
    open: LiftRecord[],
    mas1: LiftRecord[],
    mas2: LiftRecord[],
    mas3: LiftRecord[],
    mas4: LiftRecord[]
  },
  total: {
    subjr: TotalRecord[],
    jr: TotalRecord[],
    open: TotalRecord[],
    mas1: TotalRecord[],
    mas2: TotalRecord[],
    mas3: TotalRecord[],
    mas4: TotalRecord[]
  }
}

// table-compatible type for rows
export type RecordTableRow = {
  weightClass: number;
  fullName: string,
  slug: string,
  vpfId: string
  result: number,
  bodyWeight: number;
  yearOfBirth: number,
  sex: Sex,
  date: string
}

// table-compatible type for the entire card
export type RecordTableRowGroup = {
  subjr: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  jr: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  open: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  mas1: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  mas2: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  mas3: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  },
  mas4: {
    squat: RecordTableRow[],
    bench: RecordTableRow[],
    deadlift: RecordTableRow[],
    total: RecordTableRow[]
  }
}