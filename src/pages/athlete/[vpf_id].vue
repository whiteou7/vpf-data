<script setup lang="ts">
import { useRoute, useRouter } from "vue-router"
import BaseTable from "~/components/BaseTable.vue"
import type { Sex } from "~/types/athlete"

const route = useRoute()
const router = useRouter()

const vpfId = route.params.vpf_id as string
const isPrivate = route.query?.private == "true"

const loading = ref(true)
const fullName = ref<string>()
const sex = ref<Sex>()
const compInfo = ref()
const pb = ref()

onMounted(async () => {
  await useFetchAthlete().fetch(vpfId, isPrivate)
  const data = useFetchAthlete()

  fullName.value = data.fullName.value
  sex.value = data.sex.value
  compInfo.value = data.compInfo.value
  pb.value = data.pb.value

  loading.value = false
})

function goToTab(tab: "compHistory" | "personalInfo" | "compSettings") {
  if (tab === "compHistory") {
    router.push(`/athlete/${vpfId}`)
  } else if (tab === "personalInfo") {
    router.push(`/athlete/${vpfId}/personal-info`)
  } else if (tab === "compSettings") {
    router.push(`/athlete/${vpfId}/settings`)
  }
}

const pbHeaders = [
  { title: "Squat PB", value: "squatPb", key: "bestSquat" },
  { title: "Bench PB", value: "benchPb", key: "bestBench" },
  { title: "Deadlift PB", value: "deadliftPb", key: "bestDead" },
  { title: "Total PB", value: "totalPb" },
  { title: "GL PB", value: "glPb" },
]

const compInfoHeaders = [
  { title: "Meet", value: "meetName" },
  { title: "Weight Class", value: "weightClass" },
  { title: "Division", value: "division" },
  { title: "Best Squat", value: "bestSquat" },
  { title: "Best Bench", value: "bestBench" },
  { title: "Best Deadlift", value: "bestDead" },
  { title: "Total", value: "total" },
  { title: "GL", value: "gl" },
  { title: "Body Weight", value: "bodyWeight" },
  { title: "#", value: "placement" }
]
</script>

<template>
  <div class="min-h-screen py-10">
    <div v-if="loading" class="flex items-center justify-center h-96">
      <v-progress-circular color="primary" indeterminate :size="81" />
    </div>
    <div v-else-if="compInfo" class="max-w-[95%] mx-auto">
      <!-- Shared Header -->
      <h1 class="text-3xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        {{ fullName + " (" + ((sex === 'male') ? 'M' : 'F') + ")" }}
      </h1>
      <!-- Navigation Buttons (only for authorized user) -->
      <div v-if="isPrivate" class="flex gap-4 mb-6">
        <v-btn :color="'primary'" variant="tonal" @click="goToTab('compHistory')">
          Competition History
        </v-btn>
        <v-btn :color="'secondary'" variant="tonal" @click="goToTab('personalInfo')">
          Personal Info
        </v-btn>
        <v-btn :color="'secondary'" variant="tonal" @click="goToTab('compSettings')">
          Competition Settings
        </v-btn>
      </div>
      <!-- Athlete PBs -->
      <h2 class="text-2xl font-bold mt-4 mb-4 text-secondary tracking-wide pb-2 pt-2 px-2">
        Athlete PBs
      </h2>
      <BaseTable
        :headers="pbHeaders"
        :items="pb"
      />
      <!-- Competition History -->
      <h2 class="text-2xl font-bold mt-4 mb-4 text-secondary tracking-wide pb-2 pt-2 px-2">
        Competition History
      </h2>
      <BaseTable
        :headers="compInfoHeaders"
        :items="compInfo"
      />
    </div>
    <div v-else>
      <h1 class="text-2xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        No competition data is available.
      </h1>
    </div>
  </div>
</template>
