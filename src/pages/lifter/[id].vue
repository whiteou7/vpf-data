<script setup lang="ts">
import { useRoute } from "vue-router"
import type { LifterPB, LifterResult } from "~/types/lifter"
import { divisionMap } from "~/utils/mappings"

const route = useRoute()
const athleteId = route.params.id

const { data, pending, error } = await useFetch<{
  results: LifterResult[]
  pb: LifterPB
}>(`/api/lifter-result?athlete_id=${athleteId}`)

const pb_headers = [
  { title: "Squat PB", value: "squat_pb" },
  { title: "Bench PB", value: "bench_pb" },
  { title: "Deadlift PB", value: "deadlift_pb" },
  { title: "Total PB", value: "total_pb" },
  { title: "Dots PB", value: "dots_pb" },
]

const results_headers = [
  { title: "Meet", value: "meet_name" },
  { title: "Weight Class", value: "weight_class" },
  { title: "Division", value: "division" },
  { title: "Best Squat", value: "best_squat" },
  { title: "Best Bench", value: "best_bench" },
  { title: "Best Deadlift", value: "best_dead" },
  { title: "Total", value: "total" },
  { title: "Dots", value: "dots" },
  { title: "Body Weight", value: "body_weight" },
  { title: "#", value: "placement" }
]
</script>

<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto">
      <div v-if="pending">
        <v-skeleton-loader type="table-row@10" />
      </div>
      <div v-else-if="error">
        Error: {{ error.message }}
      </div>
      <div v-else-if="data">
        <h1 class="text-3xl font-bold mb-6 text-primary tracking-wide pb-2 pt-2 px-2">
          Lifter PBs
        </h1>
        <v-data-table
          :headers="pb_headers"
          :items="[data.pb]"
          hide-default-footer
          density="compact"
          :row-props="rowProps"
          hover
        >
          <template #item.squat_pb="{ item }">
            <span class="text-yellow-400 font-semibold">{{ item.squat_pb }}</span>
          </template>
          <template #item.bench_pb="{ item }">
            <span class="text-cyan-400 font-semibold">{{ item.bench_pb }}</span>
          </template>
          <template #item.deadlift_pb="{ item }">
            <span class="text-purple-400 font-semibold">{{ item.deadlift_pb }}</span>
          </template>
        </v-data-table>

        <h1 class="text-3xl font-bold mt-8 mb-6 text-primary tracking-wide pb-2 pt-2 px-2">
          Competition History
        </h1>
        <v-data-table
          :headers="results_headers"
          :items="data.results"
          hide-default-footer
          density="compact"
          items-per-page="-1"
          fixed-header
          hover
        >
          <template #item.division="{ item }">
            {{ divisionMap[item.division] ?? item.division }}
          </template>
          <template #item.best_squat="{ item }">
            <span class="text-yellow-400 font-semibold">{{ item.best_squat }}</span>
          </template>
          <template #item.best_bench="{ item }">
            <span class="text-cyan-400 font-semibold">{{ item.best_bench }}</span>
          </template>
          <template #item.best_dead="{ item }">
            <span class="text-purple-400 font-semibold">{{ item.best_dead }}</span>
          </template>
        </v-data-table>
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Add any additional styling here */
</style>