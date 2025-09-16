<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto">
      <LiftersPBTable
        :items="filteredLifters"
        :headers="headers"
        :loading="loading"
        :search="filters.search.value"
      >
        <template #top>
          <LifterFilters />
        </template>
      </LiftersPBTable>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { LifterResult } from "~/types/lifter"
import LiftersPBTable from "~/components/LiftersPBTable.vue"
import LifterFilters from "~/components/LiftersFilter.vue"
import { useLiftersFilter } from "~/composables/useLiftersFilter"

// Fetch
import type { APIBody } from "~/types/api"

const lifters = ref<LifterResult[]>([])
const loading = ref(true)

const filters = useLiftersFilter()

onMounted(async () => {  
  const response = await $fetch<APIBody<{ lifters: LifterResult[] }>>("/api/all-lifter-ranked")
  if (!response.success) {
    // TODO: Handle error
    return
  }
  loading.value = false
  lifters.value = response.data.lifters ?? []
})

// Computed filtering logic
const filteredLifters = computed(() => {
  return lifters.value.filter(lifter => {
    const matchesSex = filters.sexFilter.value ? lifter.sex === filters.sexFilter.value : true
    const matchesDivision = filters.divisionFilter.value ? lifter.division === filters.divisionFilter.value : true
    const matchesWeightClass = filters.weightClassFilter.value.weight
      ? lifter.weight_class === filters.weightClassFilter.value.weight && lifter.sex === filters.weightClassFilter.value.sex
      : true
    return matchesSex && matchesDivision && matchesWeightClass
  })
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
  { title: "GL", value: "gl", sortable: true },
]
</script>
