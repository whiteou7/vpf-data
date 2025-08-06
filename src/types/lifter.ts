export type LifterPB = {
  "#": number;
  full_name: string;
  weight_class: number;
  sex: string;
  best_squat: number;
  best_bench: number;
  best_dead: number;
  total: number;
  dots: number;
};

export type Sex = "M" | "F" | null
