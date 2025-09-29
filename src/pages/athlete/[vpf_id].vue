<script setup lang="ts">
import type { Sex } from "~/types/athlete"

const route = useRoute()
const router = useRouter()

const vpfId = route.params.vpf_id as string
const { user } = await useAuth()

const renderButtons = ref<boolean>(false)
renderButtons.value = vpfId == user.value.vpfId

const loading = ref(true)
const personalInfo = ref()
const sex = ref<Sex>()

const currentTab = ref<string>(route.path.split("/").at(3) ?? "")

onMounted(async () => {
  await useFetchAthlete().fetch(vpfId)
  const data = useFetchAthlete()

  personalInfo.value = data.personalInfo.value
  if (data.compInfo.value && data.compInfo.value.length > 0) {
    sex.value = data.compInfo.value[0].sex
  } else {
    sex.value = undefined
  }

  loading.value = false
})

function goToTab(tab: "compHistory" | "personalInfo" | "compSettings") {
  if (tab === "compHistory") {
    currentTab.value = ""
    router.push(`/athlete/${vpfId}`)
  } else if (tab === "personalInfo") {
    currentTab.value = "personal-info"
    router.push(`/athlete/${vpfId}/personal-info`)
  } else if (tab === "compSettings") {
    currentTab.value = "settings"
    router.push(`/athlete/${vpfId}/settings`)
  }
}

const routeInstagram = () => {
  window.open(`https://instagram.com/${personalInfo.value.instagramUsername}`)
}
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
        <h1 class="text-primary justify-start pa-2">
          {{ personalInfo.fullName + " (" + ((sex === 'male') ? 'M' : 'F') + ")" }}
        </h1>
        <v-icon-btn
          v-if="personalInfo.instagramUsername"
          variant="plain"
          icon="mdi-instagram"
          @click="routeInstagram"
        />
      </div>
      
      <!-- Navigation Buttons (only for authorized user) -->
      <div v-if="renderButtons" class="d-flex flex-column flex-md-row ga-4">
        <v-btn :color="currentTab == '' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('compHistory')">
          Competition History
        </v-btn>
        <v-btn :color="currentTab == 'personal-info' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('personalInfo')">
          Personal Info
        </v-btn>
        <v-btn :color="currentTab == 'settings' ? 'primary' : 'secondary'" variant="tonal" @click="goToTab('compSettings')">
          Competition Settings
        </v-btn>
      </div>
      <NuxtPage/>
    </div>
    <div v-else>
      <h1 class="mb-4 text-error pa-2">
        No competition data is available.
      </h1>
    </div>
  </div>
</template>
