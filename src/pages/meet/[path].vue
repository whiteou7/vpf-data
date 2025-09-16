<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto">
      <LiftersFilter/>
      <div v-if="loading" class="flex justify-center items-center py-10">
        <v-progress-circular color="primary" indeterminate :size="81"/>
      </div>

      <div v-for="(group, session) in groupedResults" :key="session" class="card bg-surface my-8">
        <h2 class="text-2xl font-bold text-primary">
          Session {{ session }}
        </h2>

        <BaseTable
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
import type { MeetResultDetailed } from "~/types/meet"
import { meetToPath } from "~/utils/mappings"
import { useLiftersFilter } from "~/composables/useLiftersFilter"
import LiftersFilter from "~/components/LiftersFilter.vue"

import type { APIBody } from "~/types/api"

const route = useRoute()
const path = route.params.path as string
const filters = useLiftersFilter()

const results = ref<MeetResultDetailed[]>([])
const loading = ref(true)

const pathToMeet = Object.fromEntries(Object.entries(meetToPath).map(([key, value]) => [value, key]))
const meetId = pathToMeet[path]

onMounted(async () => {
  if (meetId) {
    const response = await $fetch<APIBody<MeetResultDetailed[]>>(`/api/meet-info?meet_id=${meetId}`)
    if (response.success) {
      results.value = response.data ?? []
    }
  }
  loading.value = false
})

const filteredResults = computed(() => {
  return results.value.filter(r => {
    const matchesSex = filters.sexFilter.value ? r.sex === filters.sexFilter.value : true
    const matchesDivision = filters.divisionFilter.value ? r.division === filters.divisionFilter.value : true
    const matchesWeightClass = filters.weightClassFilter.value.weight
      ? r.weight_class === filters.weightClassFilter.value.weight && r.sex === filters.weightClassFilter.value.sex
      : true
    return matchesSex && matchesDivision && matchesWeightClass
  })
})

const groupedResults = computed(() => {
  return filteredResults.value.reduce((groups, item) => {
    const session = item.session || "Uncategorized"
    if (!groups[session]) {
      groups[session] = []
    }
    groups[session].push(item)
    return groups
  }, {} as Record<string, MeetResultDetailed[]>)
})

const headers = [
  { title: "Full Name", value: "full_name" },
  { title: "Sex", value: "sex" },
  { title: "Weight Class", value: "weight_class" },
  { title: "Division", value: "division" },
  { title: "Body Weight", value: "body_weight" },
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