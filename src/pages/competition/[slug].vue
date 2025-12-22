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
      <h2 v-if="!emptyPlacement" class="text-primary">Results</h2>
      <div v-for="sex in ['male', 'female']" :key="sex" >
        <div v-for="division in divisions(sex)" :key="`${sex}-${division}`" class="card bg-surface my-4">
          <h2 class="ps-2 text-primary sticky-header">{{ sex === 'male' ? 'Men' : 'Women' }} {{ divisionToText[division] }} Result</h2>
        
          <MeetPlacementTable
            :headers="overallHeaders"
            :items="getOverallResults(sex, division)"
            disable-sort
          />
        </div>
      </div>

      <!-- Best Lifter Section -->
      <h2 class="text-primary">Best Lifters</h2>
      <div class="card bg-surface my-4">
        <h2 class="ps-2 text-primary sticky-header">
          Male Best Lifters
        </h2>

        <MeetPlacementTable
          :headers="bestLiftersHeaders"
          :items="bestLifters.male"
          disable-sort
        />
      </div>

      <div class="card bg-surface my-4">
        <h2 class="ps-2 text-primary sticky-header">
          Female Best Lifters
        </h2>

        <MeetPlacementTable
          :headers="bestLiftersHeaders"
          :items="bestLifters.female"
          disable-sort
        />
      </div>

      <!-- Session Results Section -->
      <h2 v-if="meetId > 2" class="text-primary">Session View</h2>
      <div v-for="(group, session) in groupedResults" :key="session" class="card bg-surface my-4">
        <h2 v-if="meetId > 2" class="ps-2 text-primary sticky-header">
          Session {{ session }}
        </h2>

        <MeetResultTable 
          v-if="meetId > 2"
          :headers="headers"
          :items="group"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, computed } from "vue"
import { useRoute } from "vue-router"
import type { MeetResult } from "~/types/meet"

import type { APIBody } from "~/types/api"

const route = useRoute()
const slug = route.params.slug as string

const results = ref<MeetResult[]>([])
const loading = ref(true)
const meetId = ref()
const bestLifters = ref()

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

const emptyPlacement = computed(() =>
  results.value.every(v => v.placement == null)
)

type BestLifterInfo = {
  placement: number
  weightClass: number
  fullName: string
  vpfId: string
  slug: string
  bodyWeight: number
  bestSquat: number
  bestBench: number
  bestDead: number
  total: number
  gl: number
}

// Fetch meet result
onMounted(async () => {
  const response = await $fetch<APIBody<{ name: string, results: MeetResult[], bestLifters: { male: BestLifterInfo, female: BestLifterInfo } }>>(`/api/meets/${slug}`, { ignoreResponseError: true })
  if (response.success) {
    results.value = response.data?.results ?? []
    meetId.value = response.data?.results[0].meetId
    bestLifters.value = response.data?.bestLifters ?? []
    useHead({ 
      meta: [
        { property: "og:type", content: "website" },
        { property: "og: title", content: response.data.name ?? "VPF Competition Result" },
        { property: "og:description", content: "VPF Competition Result" },
      ],
      title: response.data.name ?? "VPF Competition Result"
    })

  }

  loading.value = false
})

// Get overall results for a specific sex and division
const getOverallResults = (sex: string, division: string) => {
  const filtered = results.value.filter(r => r.sex === sex && r.division === division)
  
  const withBestLifts = filtered.map(r => ({
    ...r,
    weightClassDisplay: r.placement == 1 ? "-" + getWeightClassDisplay(r.weightClass, r.sex) : ""
  }))
  
  // Filter only top 3 placements and sort by weight class, then placement
  return withBestLifts
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

// Categorize results into sessions
const groupedResults = computed(() => {
  return results.value.reduce((groups, item) => {
    const session = item.session || "Uncategorized"
    if (!groups[session]) {
      groups[session] = []
    }
    groups[session].push(item)
    return groups
  }, {} as Record<string, MeetResult[]>)
})

const overallHeaders = [
  { title: "Class", value: "weightClassDisplay", width: "7.5%" },
  { title: "#", value: "placement", sortable: false, width: "7.5%" },
  { title: "Full Name", value: "fullName", sortable: false, width: "15%" },
  { title: "Body Weight", value: "bodyWeight", sortable: false, align: "end", width: "10%" },
  { title: "Best Squat", value: "bestSquat", sortable: false, align: "end", width: "12.5%" },
  { title: "Best Bench", value: "bestBench", sortable: false, align: "end", width: "12.5%" },
  { title: "Best Deadlift", value: "bestDead", sortable: false, align: "end", width: "12.5%" },
  { title: "Total", value: "total", sortable: false, align: "end", width: "12.5%" },
  { title: "GL", value: "gl", sortable: false, align: "end" }
]

const bestLiftersHeaders = [
  { title: "", width: "7.5%" },
  { title: "#", value: "placement", sortable: false, width: "7.5%" },
  { title: "Full Name", value: "fullName", sortable: false, width: "15%" },
  { title: "Body Weight", value: "bodyWeight", sortable: false, align: "end", width: "10%" },
  { title: "Best Squat", value: "bestSquat", sortable: false, align: "end", width: "12.5%" },
  { title: "Best Bench", value: "bestBench", sortable: false, align: "end", width: "12.5%" },
  { title: "Best Deadlift", value: "bestDead", sortable: false, align: "end", width: "12.5%" },
  { title: "Total", value: "total", sortable: false, align: "end", width: "12.5%" },
  { title: "GL", value: "gl", sortable: false, align: "end" }
]

const headers = [
  { title: "Full Name", value: "fullName", width: "12.5%" },
  { title: "Sex", value: "sex" },
  { title: "Class", value: "weightClass", sortable: true, align: "end", width: "5%" },
  { title: "Division", value: "division", sortable: true, align: "end", width: "7.5%" },
  { title: "Body Weight", value: "bodyWeight", sortable: true, align: "end", width: "5%" },
  { title: "Flight", value: "flight", align: "end", width: "5%" },
  { title: "Squat 1", value: "squat1", sortable: true, align: "end", width: "5%" },
  { title: "Squat 2", value: "squat2", sortable: true, align: "end", width: "5%" },
  { title: "Squat 3", value: "squat3", sortable: true, align: "end", width: "5%" },
  { title: "Bench 1", value: "bench1", sortable: true, align: "end", width: "5%" },
  { title: "Bench 2", value: "bench2", sortable: true, align: "end", width: "5%" },
  { title: "Bench 3", value: "bench3", sortable: true, align: "end", width: "5%" },
  { title: "Deadlift 1", value: "dead1", sortable: true, align: "end", width: "5%" },
  { title: "Deadlift 2", value: "dead2", sortable: true, align: "end", width: "5%" },
  { title: "Deadlift 3", value: "dead3", sortable: true, align: "end", width: "5%" },
  { title: "Total", value: "total", sortable: true, align: "end", width: "5%" },
  { title: "GL Points", value: "gl", sortable: true, align: "end", width: "5%" },
  { title: "#", value: "placement", sortable: true, align: "end", width: "3%" }
]

useHead({ 
  meta: [
    { property: "og:type", content: "website" },
    { property: "og:description", content: "VPF Competition Result" },
  ],
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

.sticky-header {
  position: sticky;
  top: 64px;
  z-index: 10;
  background-color: rgb(var(--v-theme-surface)); 
}
</style>