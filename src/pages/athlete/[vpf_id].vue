<script setup lang="ts">
import { useRoute, useRouter } from "vue-router"
import BaseTable from "~/components/BaseTable.vue"
import { ref, onMounted } from "vue"
import type { AthletePB, AthleteCompInfo, AthletePersonalInfo, AthleteCompSettings } from "~/types/athlete"
import type { APIBody } from "~/types/api"

const route = useRoute()
const router = useRouter()
const vpfId = route.params.vpf_id

const compInfo = ref<AthleteCompInfo[]>()
const pb = ref<AthletePB>()
const personalInfo = ref<AthletePersonalInfo>()
const compSettings = ref<AthleteCompSettings>()
const authorized = ref(false)
const loading = ref(true)
const activeTab = ref<'history' | 'personal' | 'competition'>('history')

onMounted(async () => {
  // Fetch athlete data
  const response = await $fetch<APIBody<{
    compInfo: AthleteCompInfo[]
    pb: AthletePB
    personalInfo?: AthletePersonalInfo
    compSettings?: AthleteCompSettings
  }>>(`/api/athletes/${vpfId}`)
  if (response.success) {
    compInfo.value = response.data?.compInfo
    pb.value = response.data?.pb
    personalInfo.value = response.data?.personalInfo
    compSettings.value = response.data?.compSettings
  }

  // Check authorization
  try {
    const sessionRes = await $fetch('/api/auth/validate-session')
    if (sessionRes.success && sessionRes.data?.vpfId == vpfId) {
      authorized.value = true
    }
  } catch {}
  loading.value = false
})

function goToTab(tab: 'history' | 'personal' | 'competition') {
  if (tab === 'history') {
    router.push(`/athlete/${vpfId}`)
  } else if (tab === 'personal') {
    router.push(`/athlete/${vpfId}/settings`)
  } else if (tab === 'competition') {
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
    <div v-else-if="compInfo && pb" class="max-w-[95%] mx-auto">
      <!-- Shared Header -->
      <h1 class="text-3xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        {{ compInfo[0].fullName + " (" + (compInfo[0].sex === 'male' ? 'M' : 'F') + ")" }}
      </h1>
      <!-- Navigation Buttons (only for authorized user) -->
      <div v-if="authorized" class="flex gap-4 mb-6">
        <v-btn :color="'primary'" variant="tonal" @click="goToTab('history')">
          Competition History
        </v-btn>
        <v-btn :color="'secondary'" variant="tonal" @click="goToTab('personal')">
          Personal Info
        </v-btn>
        <v-btn :color="'secondary'" variant="tonal" @click="goToTab('competition')">
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
  </div>
</template>
