<script setup lang="ts">
import { useRoute } from "vue-router"
import BaseTable from "~/components/BaseTable.vue"
import type { AthletePB, AthleteCompInfo } from "~/types/athlete"
import type { APIBody } from "~/types/api"

const route = useRoute()
const vpfId = route.params.id

const athleteResult = ref<AthleteCompInfo[]>()
const athletePB = ref<AthletePB>()

onMounted(async () => {
  const response = await $fetch<APIBody<{
    results: AthleteCompInfo[]
    pb: AthletePB
  }>>(`/api/athletes/${vpfId}/stats`)

  if (response.success) {
    athleteResult.value = response.data?.results
    athletePB.value = response.data?.pb
  }
})

const pb_headers = [
  { title: "Squat PB", value: "squat_pb", key: "best_squat" },
  { title: "Bench PB", value: "bench_pb", key: "best_bench" },
  { title: "Deadlift PB", value: "deadlift_pb", key: "best_dead" },
  { title: "Total PB", value: "total_pb" },
  { title: "GL PB", value: "gl_pb" },
]

const results_headers = [
  { title: "Meet", value: "meet_name" },
  { title: "Weight Class", value: "weight_class" },
  { title: "Division", value: "division" },
  { title: "Best Squat", value: "best_squat" },
  { title: "Best Bench", value: "best_bench" },
  { title: "Best Deadlift", value: "best_dead" },
  { title: "Total", value: "total" },
  { title: "GL", value: "gl" },
  { title: "Body Weight", value: "body_weight" },
  { title: "#", value: "placement" }
]
</script>

<template>
  <div class="min-h-screen py-10">
    <div
      v-if="athleteResult && athletePB"
      class="max-w-[95%] mx-auto"
    >
      <h1 class="text-3xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        {{ athleteResult[0].full_name + " (" + (athleteResult[0].sex === 'male' ? 'M' : 'F') + ")" }}
      </h1>
      <h2 class="text-2xl font-bold mt-4 mb-4 text-secondary tracking-wide pb-2 pt-2 px-2">
        Athlete PBs
      </h2>
      <BaseTable
        :headers="pb_headers"
        :items="[athletePB]"
      />

      <h2 class="text-2xl font-bold mt-4 mb-4 text-secondary tracking-wide pb-2 pt-2 px-2">
        Competition History
      </h2>
      <BaseTable
        :headers="results_headers"
        :items="athleteResult"
      />
    </div>
  </div>
</template>
