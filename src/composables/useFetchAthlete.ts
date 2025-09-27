import type { APIBody } from "~/types/api"
import type { Sex, AthleteCompInfo, AthletePB, AthletePersonalInfo, AthleteCompSettings } from "~/types/athlete"

const fullName = ref<string>()
const sex = ref<Sex>()
const compInfo = ref<AthleteCompInfo[]>()
const pb = ref<AthletePB[]>()
const personalInfo = ref<AthletePersonalInfo>({
  nationality: null,
  dob: null,
  nationalId: null,
  address: null,
  phoneNumber: null,
  email: null,
  active: false,
  nationalIdImageUrl: null
})
const compSettings = ref<AthleteCompSettings>({
  squatRackPin: null,
  benchRackPin: null,
  benchFootBlock: null,
  benchSafetyPin: null
})

let storedVpfId: string = ""

export function useFetchAthlete() {
  const fetch = async (vpfId: string, isPrivate: boolean) => {
    // No need to fetch again for the same request
    if (storedVpfId == vpfId) {
      return
    }
    if (isPrivate) {
      const response = await $fetch<APIBody<{
        fullName: string,
        sex: Sex,
        compInfo: AthleteCompInfo[]
        pb: AthletePB[]
        personalInfo?: AthletePersonalInfo
        compSettings?: AthleteCompSettings
      }>>(`/api/athletes/${vpfId}?private=true`, { ignoreResponseError: true })
      if (response.success) {
        fullName.value = response.data?.fullName
        sex.value = response.data?.sex
        compInfo.value = response.data?.compInfo
        pb.value = response.data?.pb
        if (response.data?.personalInfo) personalInfo.value = response.data?.personalInfo 
        if (response.data?.compSettings) compSettings.value = response.data?.compSettings 
        console.log(compSettings.value)
      }
    } else {
      const response = await $fetch<APIBody<{
        fullName: string,
        sex: Sex,
        compInfo: AthleteCompInfo[]
        pb: AthletePB[]
      }>>(`/api/athletes/${vpfId}`, { ignoreResponseError: true })
      if (response.success) {
        fullName.value = response.data?.fullName
        sex.value = response.data?.sex
        compInfo.value = response.data?.compInfo
        pb.value = response.data?.pb
      }
    }

    storedVpfId = vpfId
  }

  return {
    fetch,
    fullName,
    sex,
    compInfo,
    pb,
    personalInfo,
    compSettings
  }
}