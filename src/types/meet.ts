import type { Division, Sex } from "./athlete"

export type Meet = {
  meetId: number;
  meetName: string;
  city: string;
  hostDate: string;
  mediaLink: string | null;
  count: number;
  slug: string
}

export type MeetType = "national" | "amateur" | "national_qualifier" | "other"

export type MeetResult = {
  meetId: number;
  athleteId: string;
  sex: Sex;
  weightClass: number;
  division: Division;
  bodyWeight: number;
  squat1: number;
  squat2: number;
  squat3: number;
  bench1: number;
  bench2: number;
  bench3: number;
  dead1: number;
  dead2: number;
  dead3: number;
  session: string;
  flight: string;
  fullName: string;
  total: number;
  gl: number;
}