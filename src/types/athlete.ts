export type AthleteCompInfo = {
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
  meetName: string
  meetSlug: string
};

export type Sex = "male" | "female" | null

export type Division = "open" | "jr" | "subjr" | "mas1" | "mas2" | "mas3" | "mas4"

export type AthletePB = {
  squatPb: number;
  benchPb: number;
  deadliftPb: number;
  totalPb: number;
  glPb: number;
}

export type AthletePersonalInfo = {
  vpfId: string
  fullName: string;
  nationality: string | null
  dob: string | null
  nationalId: string | null
  address: string | null
  phoneNumber: string | null
  email: string | null
  active: boolean
  nationalIdImageUrl: string | null
  instagramUsername: string | null
}

export type AthleteCompSettings = {
  squatRackPin: number | null
  benchRackPin: number | null
  benchSafetyPin: number | null
  benchFootBlock: number | null
}
