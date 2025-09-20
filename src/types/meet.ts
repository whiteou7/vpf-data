import type { Division, Sex } from "./athlete"

export type Meet = {
  id: number;
  meet_name: string;
  city: string;
  host_date: string;
  media_link: string;
  count: number;
  slug: string
}

export type MeetResult = {
  meet_id: number;
  athlete_id: string;
  sex: Sex;
  weight_class: number;
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