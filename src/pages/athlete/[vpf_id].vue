<script setup lang="ts">
import type { Sex, AthletePB, AthleteCompInfo } from "~/types/athlete"

const route = useRoute()
const vpfId = route.params.vpf_id as string

const loading = ref(true)
const personalInfo = ref()
const sex = ref<Sex>()
const pb = ref<AthletePB[]>()
const compInfo = ref<AthleteCompInfo[]>()

useSeoMeta({
  ogType: "website",
  ogDescription: "VPF Athlete PB Info & Competition History"
})

const { data: athleteData, pending } = await useFetch(`/api/athletes/${vpfId}`, {
  method: "GET"
})

if (athleteData.value?.success && athleteData.value.data) {
  personalInfo.value = athleteData.value.data.personalInfo
  compInfo.value = athleteData.value.data.compInfo
  pb.value = athleteData.value.data.pb

  useSeoMeta({
    title: `${personalInfo.value?.fullName ?? ""}`,
    ogTitle: `${personalInfo.value?.fullName ?? ""}`
  })

  if (compInfo.value && compInfo.value.length > 0) {
    sex.value = compInfo.value[0].sex
  } else {
    sex.value = undefined
  }
}

loading.value = pending.value

const routeInstagram = () => {
  window.open(`https://instagram.com/${personalInfo.value.instagramUsername}`)
}

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

<template>
  <div>
    <div v-if="loading" class="pa-10">
      <v-progress-circular 
        class="mx-auto d-block" 
        color="primary" 
        indeterminate 
        :size="81"/>
    </div>
    <div v-else-if="personalInfo">
      <!-- Shared Header -->
      <div class="d-flex align-center">
        <h1 
          class="justify-start pa-2"
          :class="personalInfo.decorator_1 && personalInfo.decorator_2 ? 'gradient-name' : 'text-primary'"
          :style="
            personalInfo.decorator_1 && personalInfo.decorator_2
              ? { '--c1': personalInfo.decorator_1, '--c2': personalInfo.decorator_2 }
              : {}
          "
        >
          {{ personalInfo.fullName + " (" + ((sex === 'male') ? 'M' : 'F') + ")" }}
        </h1>
        <v-icon-btn
          v-if="personalInfo.instagramUsername"
          variant="plain"
          icon="mdi-instagram"
          @click="routeInstagram"
        />
      </div>
      
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
    <div v-else>
      <h1 class="mb-4 text-error pa-2">
        No competition data is available.
      </h1>
    </div>
  </div>
</template>

<style scoped>
.gradient-name[style*="--c1"][style*="--c2"] {
  color: transparent;
  -webkit-background-clip: text;
  background-clip: text;
  background-image: linear-gradient(to right, var(--c1), var(--c2)) !important;
}
</style>