<template>
  <div>
    <!-- Athlete PBs -->
    <h2 class="my-4 text-secondary pa-2">
      Athlete PBs
    </h2>
    <BaseTable
      :headers="pbHeaders"
      :items="pb"
      striped="odd"
    />
    <!-- Competition History -->
    <h2 class="my-4 text-secondary pa-2">
      Competition History
    </h2>
    <BaseTable
      :headers="compInfoHeaders"
      :items="compInfo"
      striped="odd"
    />
  </div>
</template>

<script lang="ts" setup>
import type { AthletePB, AthleteCompInfo } from "~/types/athlete"

const pb = ref<AthletePB[]>()
const compInfo = ref<AthleteCompInfo[]>()

onMounted(async () => {
  const data = await useFetchAthlete()

  compInfo.value = data.compInfo.value
  pb.value = data.pb.value
})
const pbHeaders = [
  { title: "Squat PB", value: "squatPb", key: "bestSquat" },
  { title: "Bench PB", value: "benchPb", key: "bestBench" },
  { title: "Deadlift PB", value: "deadliftPb", key: "bestDead" },
  { title: "Total PB", value: "totalPb" },
  { title: "GL PB", value: "glPb" },
]

const compInfoHeaders = [
  { title: "Competition", value: "meetName" },
  { title: "Weight Class", value: "weightClass" },
  { title: "Division", value: "division" },
  { title: "Best Squat", value: "bestSquat", align: "end" },
  { title: "Best Bench", value: "bestBench", align: "end" },
  { title: "Best Deadlift", value: "bestDead", align: "end" },
  { title: "Total", value: "total", align: "end" },
  { title: "GL", value: "gl", align: "end" },
  { title: "Body Weight", value: "bodyWeight", align: "end" },
  { title: "#", value: "placement", align: "end" }
]
</script>
