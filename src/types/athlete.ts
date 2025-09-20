export type AthleteCompInfo = {
  "#"?: number;
  vpfId: string;
  fullName?: string;
  weightClass: number;
  bodyWeight?: number;
  sex?: Sex;
  division: Division;
  bestSquat: number;
  bestBench: number;
  bestDead: number;
  total: number;
  gl: number;
  placement?: number;
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
  vpfId: string
  fullName: string
  nationality?: string
  dob?: string
  nationalId?: string
  address?: string
  phoneNumber?: string
  email: string
  active: boolean
}

export type AthleteCompSettings = {
  squatRackPin?: number
  benchRackPin?: number
  benchSafetyPin?: number
  benchFootBlock?: number
}
