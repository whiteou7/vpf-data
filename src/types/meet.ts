import type { Division, Sex } from "./lifter"

export type Meet = {
  id: number;
  name: string;
  city: string;
  host_date: string;
}

export type MeetResultDetailed = {
  meet_id: number;
  athlete_id: string;
  sex: Sex;
  weight_class: string;
  division: Division;
  body_weight: number;
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
  full_name: string;
  total: number;
  gl: number;
}