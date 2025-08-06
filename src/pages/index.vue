<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto rounded-xl px-4 p-6">
      <h1 class="text-3xl font-bold py-4 text-primary">VPF Data</h1>
        <v-data-table
          fixed-header
          hide-default-footer
          height="600"
          :headers="headers"
          :items="filteredLifters"
          density="compact"
          item-key="athlete_id"
          class="table-striped elevation-1 rankings-table rounded-lg"
          items-per-page="-1"
          :search="search"
          :row-props="rowProps"
          :loading="loading"
        >
          <template #loading>
            <v-skeleton-loader type="table-row@10"/>
          </template>
          
          <template #item.weight_class="{ item }">
            {{ getWeightClassDisplay(item.weight_class, item.sex as Sex) }}
          </template>

          <template #item.best_squat="{ item }">
            <span class="text-yellow-400 font-semibold">
              {{ item.best_squat }}
            </span>
          </template>

          <template #item.best_bench="{ item }">
            <span class="text-cyan-400 font-semibold">
              {{ item.best_bench }}
            </span>
          </template>

          <template #item.best_dead="{ item }">
            <span class="text-purple-400 font-semibold">
              {{ item.best_dead }}
            </span>
          </template>

          <template #top>
            <div class="flex flex-row">
              <div class="w-64 my-2 ml-4">
                <v-text-field
                  v-model="search"
                  density="compact"
                  label="Search lifters"
                  clearable
                  color="primary"
                />
              </div>

              <div class="w-64 my-2 mx-4">
                <v-select
                  v-model="genderFilter"
                  :items="genderOptions"
                  label="Filter by Gender"
                  density="compact"
                  clearable
                  color="primary"
                />
              </div>
            </div>
          </template>
        </v-data-table>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, onMounted } from "vue"
import type { LifterPB, Sex } from "~/types/lifter"

const lifters = ref<LifterPB[]>([])
const loading = ref(true)
const genderFilter = ref<Sex>(null)

const genderOptions = [
  { title: "All", value: null },
  { title: "Male", value: "M" },
  { title: "Female", value: "F" }
]

// Computed property to filter lifters by gender
const filteredLifters = computed<LifterPB[]>(() => {
  if (!genderFilter.value) {
    return lifters.value
  }
  return lifters.value.filter(lifter => lifter.sex === genderFilter.value)
})

// Helper function to display weight class while keeping original value for sorting
const getWeightClassDisplay = (weightClass: number, sex: Sex): string => {
  if (weightClass === 999) {
    return sex === "M" ? "120+kg" : "84+kg"
  }
  return `${weightClass}kg`
}

onMounted(async () => {  
  const { data: liftersData } = await useFetch<LifterPB[]>("/api/all-lifter-ranked")

  if (!liftersData.value) return

  lifters.value = liftersData.value.map(lifter => ({
    ...lifter,
    sex: lifter.sex === "male" ? "M" : lifter.sex === "female" ? "F" : lifter.sex,
  }))
  
  loading.value = false
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
  { title: "Squat", value: "best_squat", sortable: true },
  { title: "Bench", value: "best_bench", sortable: true },
  { title: "Deadlift", value: "best_dead", sortable: true },
  { title: "Total", value: "total", sortable: true },
  { title: "DOTS", value: "dots", sortable: true },
]

const search = ref("")

const rowProps = ({ index }: { index: number }) => ({
  style: {
    backgroundColor: index % 2 === 0 ? "#2E2E2E" : "#3E3E3E"
  }
})

</script>

<style>

</style>