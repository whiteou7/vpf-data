import type { Division, Sex } from "./lifter"

export type Record = {
  meet_name: string;
  full_name: string;
  weight_class: number;
  rank: 1 | 2 | 3;
  sex: Sex;
  division: Division;
}

export type SquatRecord = Record & { squat: number }
export type BenchRecord = Record & { bench: number }
export type DeadliftRecord = Record & { deadlift: number }
export type TotalRecord = Record & { 
  total: number,
  ipf: number,
  dots: number,
  gl: number
}

export type NestedRecord = {
  squat: SquatRecord[],
  bench: BenchRecord[],
  deadlift: DeadliftRecord[],
  total: TotalRecord[]
} | null

export type DivisionRecord = {
  subjr: NestedRecord,
  jr: NestedRecord,
  open: NestedRecord,
  mas: NestedRecord
}

export type Header = {
  gold: string | null;
  silver: string | null;
  bronze: string | null;
  weight_class: number;
}