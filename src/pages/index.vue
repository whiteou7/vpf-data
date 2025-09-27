<template>
  <AthletesCompTable
    :items="filteredAthletes"
    :headers="headers"
    :loading="loading"
    :search="filters.search.value"
  >
    <template #top>
      <AthletesFilter />
    </template>
  </AthletesCompTable>
</template>

<script setup lang="ts">
import type { AthleteCompInfo } from "~/types/athlete"
import AthletesCompTable from "~/components/AthletesCompTable.vue"
import AthletesFilter from "~/components/AthletesFilter.vue"
import { useAthletesFilter } from "~/composables/useAthletesFilter"

// Fetch
import type { APIBody } from "~/types/api"

const athletes = ref<AthleteCompInfo[]>([])
const loading = ref(true)

const filters = useAthletesFilter()

onMounted(async () => {  
  const response = await $fetch<APIBody<{ athletes: AthleteCompInfo[] }>>("/api/athletes", { ignoreResponseError: true })
  if (!response.success) {
    // TODO: Handle error
    return
  }
  loading.value = false
  athletes.value = response.data?.athletes ?? []
})

// Computed filtering logic
const filteredAthletes = computed(() => {
  return athletes.value.filter(athlete => {
    const matchesSex = filters.sexFilter.value ? athlete.sex === filters.sexFilter.value : true
    const matchesDivision = filters.divisionFilter.value ? athlete.division === filters.divisionFilter.value : true
    const matchesWeightClass = filters.weightClassFilter.value.weight
      ? athlete.weightClass === filters.weightClassFilter.value.weight && athlete.sex === filters.weightClassFilter.value.sex
      : true
    return matchesSex && matchesDivision && matchesWeightClass
  })
})

const headers = [
  { title: "#", value: "#", sortable: true },
  { title: "Name", value: "fullName" },
  { 
    title: "Class", 
    value: "weightClass", 
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
  { title: "Squat", value: "bestSquat", sortable: true },
  { title: "Bench", value: "bestBench", sortable: true },
  { title: "Deadlift", value: "bestDead", sortable: true },
  { title: "Total", value: "total", sortable: true },
  { title: "GL", value: "gl", sortable: true },
]
</script>
