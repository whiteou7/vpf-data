import { ref, watch } from "vue"
import type { Sex, Division } from "~/types/athlete"
import type { MeetType } from "~/types/meet"

const search = ref<string>("")
const sexFilter = ref<Sex>(null)
const divisionFilter = ref<Division | null>()
const weightClassFilter = ref<{ weight: number | null, sex: Sex }>({ weight: null, sex:null })
const meetTypeFilter = ref<MeetType | null>(null)

const meetTypeOptions = [
  { title: "All", value: null },
  { title: "National", value: "national" },
  { title: "National Qualifier", value: "national_qualifier" },
  { title: "Amateur", value: "amateur" },
]

const sexOptions = [
  { title: "All", value: null },
  { title: "Male", value: "male" },
  { title: "Female", value: "female" }
]

const divisionOptions = [
  { title: "All", value: null },
  { title: "Open", value: "open" },
  { title: "Junior", value: "jr" },
  { title: "Sub-Junior", value: "subjr" },
  { title: "Masters", value: "mas1" },
]

const weightClassOptions = [
  { title: "All", value: { weight: null, sex: null } },
  { title: "Male 59kg", value: { weight: 59, sex: "male" } },
  { title: "Male 66kg", value: { weight: 66, sex: "male" } },
  { title: "Male 74kg", value: { weight: 74, sex: "male" } },
  { title: "Male 83kg", value: { weight: 83, sex: "male" } },
  { title: "Male 93kg", value: { weight: 93, sex: "male" } },
  { title: "Male 105kg", value: { weight: 105, sex: "male" } },
  { title: "Male 120kg", value: { weight: 120, sex: "male" } },
  { title: "Male 120+kg", value: { weight: 999, sex: "male" } },
  { title: "Female 47kg", value: { weight: 47, sex: "female" } },
  { title: "Female 52kg", value: { weight: 52, sex: "female" } },
  { title: "Female 57kg", value: { weight: 57, sex: "female" } },
  { title: "Female 63kg", value: { weight: 63, sex: "female" } },
  { title: "Female 69kg", value: { weight: 69, sex: "female" } },
  { title: "Female 76kg", value: { weight: 76, sex: "female" } },
  { title: "Female 84kg", value: { weight: 84, sex: "female" } },
  { title: "Female 84+kg", value: { weight: 999, sex: "female" } }
]

// keep sex consistent with weight class
watch(weightClassFilter, (newVal) => {
  if (!newVal || !newVal.weight || !newVal.sex) return
  if (newVal.sex !== sexFilter.value) {
    sexFilter.value = newVal.sex
  }
})

watch(sexFilter, (newVal) => {
  if (newVal !== weightClassFilter.value.sex) {
    weightClassFilter.value = { weight: null, sex:null }
  }
})

export function useAthletesFilter() {
  search.value = ""
  sexFilter.value = null
  divisionFilter.value = null
  weightClassFilter.value = { weight: null, sex: null }

  return {
    search,
    sexFilter,
    divisionFilter,
    weightClassFilter,
    meetTypeFilter,
    sexOptions,
    divisionOptions,
    weightClassOptions,
    meetTypeOptions
  }
}
