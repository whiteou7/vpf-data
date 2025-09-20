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
    router.push(`/athlete/${vpfId}`)
  } else if (tab === "personalInfo") {
    router.push(`/athlete/${vpfId}/personal-info`)
  } else if (tab === "compSettings") {
    router.push(`/athlete/${vpfId}/settings`)
  }
}
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
      <NuxtPage/>
    </div>
    <div v-else>
      <h1 class="text-2xl font-bold mb-4 text-primary tracking-wide pb-2 pt-2 px-2">
        No competition data is available.
      </h1>
    </div>
  </div>
</template>
