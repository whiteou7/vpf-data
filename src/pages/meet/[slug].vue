<template>
  <div>
    <div v-if="loading" class="pa-10">
      <v-progress-circular 
        class="mx-auto d-block" 
        color="primary" 
        indeterminate 
        :size="81"/>
    </div>

    <!-- Overall Results Section -->
    <div v-else>
      <h2 class="text-primary">Results</h2>
      
      <div v-for="sex in ['male', 'female']" :key="sex" >
        <div v-for="division in divisions(sex)" :key="`${sex}-${division}`" class="card bg-surface my-4">
          <h2 class="ps-2 text-primary">{{ sex === 'male' ? 'Men' : 'Women' }} {{ divisionToText[division] }} Result</h2>
        
          <BaseTable
            :headers="overallHeaders"
            :items="getOverallResults(sex, division)"
            disable-sort
            striped="odd"
          />
        </div>
      </div>

      <!-- Session Results Section -->
      <h2 class="text-primary">Session View</h2>
      <div v-for="(group, session) in groupedResults" :key="session" class="card bg-surface my-4">
        <h2 class="ps-2 text-primary">
          Session {{ session }}
        </h2>

        <MeetResultTable
          :headers="headers"
          :items="group"
          :search="filters.search.value"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, computed } from "vue"
import { useRoute } from "vue-router"
import type { MeetResult } from "~/types/meet"
import { useAthletesFilter } from "~/composables/useAthletesFilter"

import type { APIBody } from "~/types/api"

const route = useRoute()
const slug = route.params.slug as string
const filters = useAthletesFilter()

const results = ref<MeetResult[]>([])
const loading = ref(true)

// Division order for display
const divisionOrder = ["open", "jr", "subjr", "mas1"]

const divisions = (sex: string) => {
  return divisionOrder
    .filter(d => {
      const results = getOverallResults(sex, d)
      return Array.isArray(results) && results.length > 0
    })
}

const divisionToText = {
  "open": "Open",
  "jr": "Junior",
  "subjr": "Sub-Junior",
  "mas1": "Master"
}

// Fetch meet result
onMounted(async () => {
  const response = await $fetch<APIBody<{ results: MeetResult[] }>>(`/api/meets/${slug}`, { ignoreResponseError: true })
  if (response.success) {
    results.value = response.data?.results ?? []
  }

  loading.value = false
})

// Helper function to calculate best lift
const getBestLift = (lift1: number, lift2: number, lift3: number): number => {
  return Math.max(0, lift1 || 0, lift2 || 0, lift3 || 0)
}

// Get overall results for a specific sex and division
const getOverallResults = (sex: string, division: string) => {
  const filtered = results.value.filter(r => r.sex === sex && r.division === division)
  
  const withBestLifts = filtered.map(r => ({
    ...r,
    weightClassDisplay: r.placement == 1 ? "-" + getWeightClassDisplay(r.weightClass, r.sex) : "",
    bestSquat: getBestLift(r.squat1, r.squat2, r.squat3),
    bestBench: getBestLift(r.bench1, r.bench2, r.bench3),
    bestDead: getBestLift(r.dead1, r.dead2, r.dead3)
  }))
  
  // Filter only top 3 placements and sort by weight class, then placement
  return withBestLifts
    .filter(item => item.placement >= 1 && item.placement <= 3)
    .sort((a, b) => {
      // First sort by weight class
      if (a.weightClass !== b.weightClass) {
        // Handle both string and number weight classes
        const wcA = String(a.weightClass)
        const wcB = String(b.weightClass)
        return wcA.localeCompare(wcB, undefined, { numeric: true })
      }
      // Then by placement within the same weight class
      return (a.placement || 999) - (b.placement || 999)
    })
}

// Computed values based on filters
const filteredResults = computed(() => {
  return results.value.filter(r => {
    const matchesSex = filters.sexFilter.value ? r.sex === filters.sexFilter.value : true
    const matchesDivision = filters.divisionFilter.value ? r.division === filters.divisionFilter.value : true
    const matchesWeightClass = filters.weightClassFilter.value.weight
      ? r.weightClass === filters.weightClassFilter.value.weight && r.sex === filters.weightClassFilter.value.sex
      : true
    return matchesSex && matchesDivision && matchesWeightClass
  })
})

// Categorize results into sessions
const groupedResults = computed(() => {
  return filteredResults.value.reduce((groups, item) => {
    const session = item.session || "Uncategorized"
    if (!groups[session]) {
      groups[session] = []
    }
    groups[session].push(item)
    return groups
  }, {} as Record<string, MeetResult[]>)
})

const overallHeaders = [
  { title: "Class", value: "weightClassDisplay" },
  { title: "#", value: "placement", sortable: false },
  { title: "Full Name", value: "fullName", sortable: false },
  { title: "Body Weight", value: "bodyWeight", sortable: false },
  { title: "Best Squat", value: "bestSquat", sortable: false },
  { title: "Best Bench", value: "bestBench", sortable: false },
  { title: "Best Deadlift", value: "bestDead", sortable: false },
  { title: "Total", value: "total", sortable: false },
  { title: "GL", value: "gl", sortable: false }
]

const headers = [
  { title: "Full Name", value: "fullName" },
  { title: "Sex", value: "sex" },
  { title: "Class", value: "weightClass", sortable: true },
  { title: "Division", value: "division", sortable: true },
  { title: "Body Weight", value: "bodyWeight", sortable: true },
  { title: "Flight", value: "flight" },
  { title: "Squat 1", value: "squat1", sortable: true },
  { title: "Squat 2", value: "squat2", sortable: true },
  { title: "Squat 3", value: "squat3", sortable: true },
  { title: "Bench 1", value: "bench1", sortable: true },
  { title: "Bench 2", value: "bench2", sortable: true },
  { title: "Bench 3", value: "bench3", sortable: true },
  { title: "Deadlift 1", value: "dead1", sortable: true },
  { title: "Deadlift 2", value: "dead2", sortable: true },
  { title: "Deadlift 3", value: "dead3", sortable: true },
  { title: "Total", value: "total", sortable: true },
  { title: "GL Points", value: "gl", sortable: true },
  { title: "#", value: "placement", sortable: true }
]

useHead({ 
  title: "VPF Competition Result"
})
</script>

<style scoped>
.card {
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px 0 rgba(0,0,0,0.04);
  padding: 1rem;
}

.card h2 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}
</style>