export type AthleteCompInfo = {
  "#"?: number;
  vpf_id: string;
  full_name?: string;
  weight_class: number;
  body_weight?: number;
  sex?: Sex;
  division: Division;
  best_squat: number;
  best_bench: number;
  best_dead: number;
  total: number;
  dots: number;
  placement?: number;
};

export type Sex = "male" | "female" | null

export type Division = "open" | "jr" | "subjr" | "mas1" | "mas2" | "mas3" | "mas4"

export type AthletePB = {
  squat_pb: number;
  bench_pb: number;
  deadlift_pb: number;
  total_pb: number;
  dots_pb: number;
}
