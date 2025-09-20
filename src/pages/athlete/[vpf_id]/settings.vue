<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto">
      <!-- Shared Header -->
      <h1 class="text-3xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        {{ personalInfo?.full_name }}
        <span v-if="personalInfo?.sex"> ({{ personalInfo.sex === 'male' ? 'M' : 'F' }})</span>
      </h1>
      <!-- Navigation Buttons -->
      <div class="flex gap-4 mb-6">
        <v-btn :color="activeTab === 'history' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('history')">
          Competition History
        </v-btn>
        <v-btn :color="activeTab === 'personal' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('personal')">
          Personal Info
        </v-btn>
        <v-btn :color="activeTab === 'competition' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('competition')">
          Competition Settings
        </v-btn>
      </div>
      <div v-if="loading" class="flex items-center justify-center h-96">
        <v-progress-circular color="primary" indeterminate :size="81" />
      </div>
      <div v-else>
        <v-card v-if="activeTab === 'personal'" class="card bg-surface mb-6" max-width="500">
          <v-card-title class="text-xl font-bold">Personal Information</v-card-title>
          <v-card-text>
            <div class="space-y-2">
              <div><strong>Name:</strong> {{ personalInfo.full_name }}</div>
              <div><strong>Email:</strong> {{ personalInfo.email }}</div>
              <div><strong>Nationality:</strong> {{ personalInfo.nationality }}</div>
              <div><strong>Date of Birth:</strong> {{ personalInfo.dob }}</div>
              <div><strong>National ID:</strong> {{ personalInfo.national_id }}</div>
              <div><strong>Address:</strong> {{ personalInfo.address }}</div>
              <div><strong>Phone Number:</strong> {{ personalInfo.phone_number }}</div>
            </div>
          </v-card-text>
        </v-card>
        <v-card v-else-if="activeTab === 'competition'" class="card bg-surface mb-6" max-width="500">
          <v-card-title class="text-xl font-bold">Competition Settings</v-card-title>
          <v-card-text>
            <div class="space-y-2">
              <div><strong>Squat Rack Pin:</strong> {{ compSettings.squat_rack_pin }}</div>
              <div><strong>Bench Rack Pin:</strong> {{ compSettings.bench_rack_pin }}</div>
              <div><strong>Bench Safety Pin:</strong> {{ compSettings.bench_safety_pin }}</div>
              <div><strong>Bench Foot Block:</strong> {{ compSettings.bench_foot_block }}</div>
              <div><strong>Active:</strong> {{ compSettings.active ? 'Yes' : 'No' }}</div>
              <div><strong>Drug Violate:</strong> {{ compSettings.drug_violate ? 'Yes' : 'No' }}</div>
            </div>
          </v-card-text>
        </v-card>
      </div>
    </div>
  </div>
  </template>
  
<script setup lang="ts">
import type { AthleteCompSettings, AthletePersonalInfo } from "~/types/athlete"

const router = useRouter()
const personalInfo = ref<AthletePersonalInfo>()
const compSettings = ref<AthleteCompSettings>()
const loading = ref(true)
const activeTab = ref("personal") // can be "history", "personal", "competition"

function goToTab(tab: "history" | "personal" | "competition") {
  const route = router.currentRoute.value
  const vpfId = route.params.vpf_id
  if (tab === "history") {
    router.push(`/athlete/${vpfId}`)
  } else if (tab === "personal") {
    activeTab.value = "personal"
    router.push(`/athlete/${vpfId}/settings?tab=personal`)
  } else if (tab === "competition") {
    activeTab.value = "competition"
    router.push(`/athlete/${vpfId}/settings?tab=competition`)
  }
}

onMounted(async () => {
  try {
    // Get session info from validate-session endpoint
    const sessionRes = await $fetch("/api/auth/validate-session")
    if (!sessionRes.success || !sessionRes.data?.vpf_id) {
      router.replace("/")
      return
    }

    const vpfId = sessionRes.data.vpf_id
    // Fetch settings for the logged-in user
    const res = await $fetch(`/api/athletes/${vpfId}`)
    if (!res.success || !res.data) {
      router.replace("/")
      return
    }

    personalInfo.value = res.data.personal_info
    compSettings.value = res.data.comp_settings
    // Set tab from query param if present
    const tabParam = router.currentRoute.value.query.tab
    if (tabParam === "personal" || tabParam === "competition") {
      activeTab.value = tabParam
    }
  } catch {
    router.replace("/")
  } finally {
    loading.value = false
  }
})
</script>
  
  <style scoped>
  .card {
    border-radius: 0.5rem;
    box-shadow: 0 2px 8px 0 rgba(0,0,0,0.04);
    padding: 1rem;
  }
  </style>
