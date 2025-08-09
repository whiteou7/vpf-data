<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto rounded-xl">
      <LiftersPBTable
        :filteredLifters="filteredLifters"
        :headers="headers"
        :loading="loading"
        :search="search"
      >
        <template #top>
          <div class="flex flex-wrap gap-4 px-4 my-2">
            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-text-field
                v-model="search"
                density="compact"
                label="Search lifters"
                color="primary"
                variant="solo-inverted"
              />
            </div>

            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="genderFilter"
                :items="genderOptions"
                label="Gender"
                density="compact"
                color="primary"
                variant="solo-inverted"
              />
            </div>

            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="divisionFilter"
                :items="divisionOptions"
                label="Division"
                density="compact"
                color="primary"
                variant="solo-inverted"
              />
            </div>

            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="weightClassFilter"
                :items="weightClassOptions"
                label="Weight Class"
                density="compact"
                color="primary"
                variant="solo-inverted"
              />
            </div>
          </div>
        </template>
      </LiftersPBTable>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { LifterPB, Sex, Division } from "~/types/lifter"
import LiftersPBTable from "~/components/LiftersPBTable.vue"

const lifters = ref<LifterPB[]>([])
const loading = ref(true)
const genderFilter = ref<Sex>(null)
const divisionFilter = ref<Division>()
const weightClassFilter = ref<{ weight: number | null, sex: Sex }>({ weight: null, sex: null })

const genderOptions = [
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

// Change gender filter if weight class's gender changes
watch(weightClassFilter, (newVal) => {
  if (!newVal || !newVal.weight || !newVal.sex) return

  if (newVal.sex !== genderFilter.value) {
    genderFilter.value = newVal.sex
  }
})

// Computed property to filter lifters
const filteredLifters = computed<LifterPB[]>(() => {
  return lifters.value.filter(lifter => {
    const matchesGender = genderFilter.value ? lifter.sex === genderFilter.value : true
    const matchesDivision = divisionFilter.value ? lifter.division === divisionFilter.value : true
    const matchesWeightClass = weightClassFilter.value.weight
      ? lifter.weight_class === weightClassFilter.value.weight && lifter.sex === weightClassFilter.value.sex
      : true
    return matchesGender && matchesDivision && matchesWeightClass
  })
})

// Fetch lifters
onMounted(async () => {  
  const { data: liftersData } = await useFetch<LifterPB[]>("/api/all-lifter-ranked")

  if (!liftersData.value) return
  
  loading.value = false

  lifters.value = liftersData.value
})

const headers = [
  { title: "#", value: "#", sortable: true },
  { title: "Name", value: "full_name" },
  { 
    title: "Class", 
    value: "weight_class", 
    sortable: true,
    // Custom sort function to handle the 999 value properly
    sort: (a: number, b: number): number => {
      // For males: 999 should sort after 120, for females: 999 should sort after 84
      if (a === 999 && b !== 999) return 1
      if (b === 999 && a !== 999) return -1
      if (a === 999 && b === 999) return 0
      return a - b
    }
  },
  { title: "Sex", value: "sex" },
  { title: "Division", value: "division" },
  { title: "Squat", value: "best_squat", sortable: true },
  { title: "Bench", value: "best_bench", sortable: true },
  { title: "Deadlift", value: "best_dead", sortable: true },
  { title: "Total", value: "total", sortable: true },
  { title: "DOTS", value: "dots", sortable: true },
]

const search = ref<string>("")
</script>

<style>

</style>