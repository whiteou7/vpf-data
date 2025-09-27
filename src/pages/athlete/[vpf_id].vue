<script setup lang="ts">
import type { Sex } from "~/types/athlete"

const route = useRoute()
const router = useRouter()

const vpfId = route.params.vpf_id as string
const { user } = await useAuth()

// Variable to decide whether to request to fetch private information as well
// Only request when vpf id of path matches vpf of user state (server still have to verify session_id)
const isPrivate = ref<boolean>(false)

isPrivate.value = vpfId == user.value.vpfId

const loading = ref(true)
const fullName = ref<string>()
const sex = ref<Sex>()
const compInfo = ref()

const currentTab = ref<string>(route.path.split("/").at(3) ?? "")

onMounted(async () => {
  await useFetchAthlete().fetch(vpfId, isPrivate.value)
  const data = useFetchAthlete()

  fullName.value = data.fullName.value
  sex.value = data.sex.value
  compInfo.value = data.compInfo.value

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
    <div v-else-if="compInfo">
      <!-- Shared Header -->
      <h1 class="mb-4 text-primary justify-start pa-2">
        {{ fullName + " (" + ((sex === 'male') ? 'M' : 'F') + ")" }}
      </h1>
      <!-- Navigation Buttons (only for authorized user) -->
      <div v-if="isPrivate" class="d-flex flex-column flex-md-row ga-4">
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
