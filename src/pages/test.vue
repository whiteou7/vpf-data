<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto rounded-xl px-4 p-6">
      <h1 class="text-3xl font-bold py-4 text-primary">VPF Data</h1>
      
      <!-- Debug info -->
      <div v-if="debugMode" class="mb-4 p-4 bg-gray-800 rounded text-white text-sm">
        <p>Loading: {{ loading }}</p>
        <p>Lifters count: {{ lifters.length }}</p>
        <p>API calls made: {{ apiCallsCount }}</p>
        <p>Last error: {{ lastError }}</p>
      </div>
      
      <template v-if="lifters && lifters.length">
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
            {{ getWeightClassDisplay(item.weight_class, item.sex) }}
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
              
              <!-- Manual refresh button for testing -->
              <div class="w-64 my-2 mx-4">
                <v-btn @click="fetchData" :loading="loading" color="primary">
                  Refresh Data
                </v-btn>
              </div>
            </div>
          </template>
        </v-data-table>
      </template>
      <template v-else-if="loading">
        <div class="text-secondary mt-10 text-lg">
          Loading lifters...
        </div>
      </template>
      <template v-else>
        <div class="text-secondary mt-10 text-lg">
          No lifters found.
          <v-btn @click="fetchData" class="ml-4" color="primary">
            Try Again
          </v-btn>
        </div>
      </template>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from "vue"

const lifters = ref([])
const loading = ref(true)
const genderFilter = ref(null)
const debugMode = ref(true) // Set to false in production
const apiCallsCount = ref(0)
const lastError = ref(null)

const genderOptions = [
  { title: "All", value: null },
  { title: "Male", value: "M" },
  { title: "Female", value: "F" }
]

// Computed property to filter lifters by gender
const filteredLifters = computed(() => {
  if (!genderFilter.value) {
    return lifters.value
  }
  return lifters.value.filter(lifter => lifter.sex === genderFilter.value)
})

// Helper function to display weight class while keeping original value for sorting
const getWeightClassDisplay = (weightClass, sex) => {
  if (weightClass === 999) {
    return sex === "M" ? "120+kg" : "84+kg"
  }
  return `${weightClass}kg`
}

// Extracted fetch function for reusability
const fetchData = async () => {
  try {
    loading.value = true
    lastError.value = null
    
    console.log('Starting API calls...')
    apiCallsCount.value++
    
    // First call - get 100 lifters quickly
    console.log('Fetching first 100 lifters...')
    const { data: liftersData100, error: error100 } = await useFetch("/api/all-lifter-ranked", {
      method: "GET",
      query: { limit: 100 }
    })

    if (error100.value) {
      console.error('Error fetching first 100:', error100.value)
      lastError.value = `Error fetching initial data: ${error100.value}`
      return
    }

    if (!liftersData100.value) {
      console.warn('No data returned from first API call')
      lastError.value = 'No data returned from first API call'
      return
    }

    console.log('First 100 lifters received:', liftersData100.value.length)
    
    // Update with first 100 results
    lifters.value = liftersData100.value.map(lifter => ({
      ...lifter,
      sex: lifter.sex === "male" ? "M" : lifter.sex === "female" ? "F" : lifter.sex,
    }))

    loading.value = false
    
    // Second call - get all lifters
    console.log('Fetching all lifters...')
    const { data: liftersData, error: errorAll } = await useFetch("/api/all-lifter-ranked")

    if (errorAll.value) {
      console.error('Error fetching all lifters:', errorAll.value)
      lastError.value = `Error fetching all data: ${errorAll.value}`
      return
    }

    if (liftersData.value) {
      console.log('All lifters received:', liftersData.value.length)
      lifters.value = liftersData.value.map(lifter => ({
        ...lifter,
        sex: lifter.sex === "male" ? "M" : lifter.sex === "female" ? "F" : lifter.sex,
      }))
    } else {
      console.warn('No data returned from second API call')
    }
    
  } catch (error) {
    console.error('Unexpected error during fetch:', error)
    lastError.value = `Unexpected error: ${error.message}`
  } finally {
    loading.value = false
  }
}

onMounted(() => {
  console.log('Component mounted, calling fetchData...')
  fetchData()
})

const headers = [
  { title: "#", value: "#", sortable: true },
  { title: "Name", value: "full_name" },
  { 
    title: "Class", 
    value: "weight_class", 
    sortable: true,
    // Custom sort function to handle the 999 value properly
    sort: (a, b) => {
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

const rowProps = ({ index }) => ({
  style: {
    backgroundColor: index % 2 === 0 ? "#2E2E2E" : "#3E3E3E"
  }
})

</script>

<style>

</style>