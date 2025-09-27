export type AthleteCompInfo = {
  "#": number;
  vpfId: string;
  fullName: string;
  weightClass: number;
  bodyWeight: number;
  sex: Sex;
  division: Division;
  bestSquat: number;
  bestBench: number;
  bestDead: number;
  total: number;
  gl: number;
  placement: number;
};

export type Sex = "male" | "female" | null

export type Division = "open" | "jr" | "subjr" | "mas1" | "mas2" | "mas3" | "mas4"

export type AthletePB = {
  squatPb: number;
  benchPb: number;
  deadliftPb: number;
  totalPb: number;
  dotsPb: number;
}

export type AthletePersonalInfo = {
  nationality: string | null
  dob: string | null
  nationalId: number | null
  address: string | null
  phoneNumber: number | null
  email: string | null
  active?: boolean
  nationalIdImageUrl?: string | null
}

export type AthleteCompSettings = {
  squatRackPin: number | null
  benchRackPin: number | null
  benchSafetyPin: number | null
  benchFootBlock: number | null
}
