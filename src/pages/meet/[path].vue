<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto rounded-xl">
      <v-data-table
        :headers="headers"
        :items="filteredResults"
        :loading="loading"
        class="elevation-1"
        item-key="athlete_id"
        density="compact"
        :items-per-page="-1"
        hide-default-footer
      >
        <template #top>
          <div class="flex flex-wrap gap-4 px-4 my-2">
            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="sexFilter"
                :items="sexOptions"
                label="Sex"
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
      </v-data-table>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, computed } from "vue"
import { useRoute } from "vue-router"
import type { MeetResultDetailed } from "~/types/meet"
import { meet_to_path } from "~/utils/mappings"

const route = useRoute()
const path = route.params.path as string

const results = ref<MeetResultDetailed[]>([])
const loading = ref(true)
const sexFilter = ref<string | null>(null)
const divisionFilter = ref<string | null>(null)
const weightClassFilter = ref<string | null>(null)

const path_to_meet = Object.fromEntries(Object.entries(meet_to_path).map(([key, value]) => [value, key]))
const meetId = path_to_meet[path]

onMounted(async () => {
  if (meetId) {
    const { data: meetData } = await useFetch<MeetResultDetailed[]>(`/api/meet-info?meet_id=${meetId}`)
    if (meetData.value) {
      results.value = meetData.value
    }
  }
  loading.value = false
})

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

const filteredResults = computed(() => {
  return results.value.filter(r => {
    const matchesSex = sexFilter.value ? r.sex === sexFilter.value : true
    const matchesDivision = divisionFilter.value ? r.division === divisionFilter.value : true
    const matchesWeightClass = weightClassFilter.value ? r.weight_class === weightClassFilter.value : true
    return matchesSex && matchesDivision && matchesWeightClass
  })
})

const headers = [
  { title: "Meet ID", value: "meet_id" },
  { title: "Athlete ID", value: "athlete_id" },
  { title: "Sex", value: "sex" },
  { title: "Weight Class", value: "weight_class" },
  { title: "Division", value: "division" },
  { title: "Body Weight", value: "body_weight" },
  { title: "Squat 1", value: "squat1" },
  { title: "Squat 2", value: "squat2" },
  { title: "Squat 3", value: "squat3" },
  { title: "Bench 1", value: "bench1" },
  { title: "Bench 2", value: "bench2" },
  { title: "Bench 3", value: "bench3" },
  { title: "Deadlift 1", value: "dead1" },
  { title: "Deadlift 2", value: "dead2" },
  { title: "Deadlift 3", value: "dead3" },
  { title: "Session", value: "session" },
  { title: "Flight", value: "flight" },
  { title: "Full Name", value: "full_name" },
  { title: "Total", value: "total" },
  { title: "GL Points", value: "gl" },
]
</script>

<style>
</style>
