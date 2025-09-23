<template>
  <div>
    <AthletesFilter/>
    <div v-if="loading" class="pa-10">
      <v-progress-circular 
        class="mx-auto d-block" 
        color="primary" 
        indeterminate 
        :size="81"/>
    </div>

    <div v-for="(group, session) in groupedResults" :key="session" class="card bg-surface my-8">
      <h2 class="ps-2 text-primary">
        Session {{ session }}
      </h2>

      <BaseTable
        :headers="headers"
        :items="group"
        :search="filters.search.value"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted, computed } from "vue"
import { useRoute } from "vue-router"
import type { MeetResult } from "~/types/meet"
import { useAthletesFilter } from "~/composables/useAthletesFilter"
import AthletesFilter from "~/components/AthletesFilter.vue"

import type { APIBody } from "~/types/api"

const route = useRoute()
const slug = route.params.slug as string
const filters = useAthletesFilter()

const results = ref<MeetResult[]>([])
const loading = ref(true)

// Fetch meet result
onMounted(async () => {
  const response = await $fetch<APIBody<{ results: MeetResult[] }>>(`/api/meets/${slug}`)
  if (response.success) {
    results.value = response.data?.results ?? []
  }

  loading.value = false
})

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

const headers = [
  { title: "Full Name", value: "fullName" },
  { title: "Sex", value: "sex" },
  { title: "Weight Class", value: "weightClass" },
  { title: "Division", value: "division" },
  { title: "Body Weight", value: "bodyWeight" },
  { title: "Flight", value: "flight" },
  { title: "Squat 1", value: "squat1" },
  { title: "Squat 2", value: "squat2" },
  { title: "Squat 3", value: "squat3" },
  { title: "Bench 1", value: "bench1" },
  { title: "Bench 2", value: "bench2" },
  { title: "Bench 3", value: "bench3" },
  { title: "Deadlift 1", value: "dead1" },
  { title: "Deadlift 2", value: "dead2" },
  { title: "Deadlift 3", value: "dead3" },
  { title: "Total", value: "total" },
  { title: "GL Points", value: "gl" },
  { title: "#", value: "placement" }
]
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