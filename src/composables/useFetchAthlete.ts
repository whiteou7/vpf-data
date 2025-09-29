import type { APIBody } from "~/types/api"
import type { AthleteCompInfo, AthletePB, AthletePersonalInfo, AthleteCompSettings } from "~/types/athlete"

const compInfo = ref<AthleteCompInfo[]>()
const pb = ref<AthletePB[]>()
const personalInfo = ref<AthletePersonalInfo>({
  fullName: "",
  nationality: null,
  dob: null,
  nationalId: null,
  address: null,
  phoneNumber: null,
  email: null,
  active: false,
  nationalIdImageUrl: null,
  instagramUsername: null
})
const compSettings = ref<AthleteCompSettings>({
  squatRackPin: null,
  benchRackPin: null,
  benchFootBlock: null,
  benchSafetyPin: null
})

let storedVpfId: string = ""

export function useFetchAthlete() {
  const fetch = async (vpfId: string) => {
    // No need to fetch again for the same request
    if (storedVpfId == vpfId) {
      return
    }

    const response = await $fetch<APIBody<{ 
      compInfo: AthleteCompInfo[], 
      pb: AthletePB[], 
      personalInfo: AthletePersonalInfo, 
      compSettings: AthleteCompSettings 
    } | {
      compInfo: AthleteCompInfo[], 
      pb: AthletePB[], 
      personalInfo: { fullName: string, instagramUsername: string | null },  
    }>>(`/api/athletes/${vpfId}`, { ignoreResponseError: true })
    
    if (response.success) {
      compInfo.value = response.data.compInfo
      pb.value = response.data.pb
      personalInfo.value = { ...personalInfo.value, ...response.data.personalInfo }
      if ("compSettings" in response.data) {
        compSettings.value = response.data.compSettings
      }
    }

    storedVpfId = vpfId
  }

  return {
    fetch,
    compInfo,
    pb,
    personalInfo,
    compSettings
  }
}