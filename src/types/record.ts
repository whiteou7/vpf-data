import type { Division, Sex } from "./lifter"

export type LiftRecord = {
  meet_name: string;
  full_name: string;
  weight_class: number;
  rank: 1 | 2 | 3;
  sex: Sex;
  division: Division;
  result: number
}

export type TotalRecord = LiftRecord & { 
  ipf: number,
  dots: number,
  gl: number
}

export type NestedRecord = {
  squat: LiftRecord[],
  bench: LiftRecord[],
  deadlift: LiftRecord[],
  total: TotalRecord[]
} | null

export type DivisionRecord = {
  subjr: NestedRecord,
  jr: NestedRecord,
  open: NestedRecord,
  mas: NestedRecord
}

export type Result = {
  name: string,
  result: number
}

export type RecordTableRow = {
  gold: Result | null;
  silver: Result | null;
  bronze: Result | null;
  weight_class: number;
  sex: Sex
}