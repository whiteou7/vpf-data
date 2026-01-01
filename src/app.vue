<template>
  <v-snackbar
    v-model="snackbar"
    :color="snackbarColor"
    timeout="3000"
    :location="snackbarLocation"
    variant="tonal"
  >
    {{ snackbarText }}
  </v-snackbar>
  <NuxtLoadingIndicator color="#ffffff"/>
  <div v-show="!loading">
    <NuxtLayout >
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script setup lang="ts">
const loading = ref(true) 
onMounted(() => { loading.value = false })
const { snackbar, snackbarColor, snackbarLocation, snackbarText } = useSnackbar()
useHead({
  meta: [
    { name: "keywords", content: "vietnam, powerlifting, tracking, pwl, squat, bench, deadlift" },
  ]
})
useSeoMeta({
  ogImage: "/logo.jpg",
  ogType: "website"
})
</script>

<style>
.button-container {
  flex: 1; min-width: 150px; max-width: 200px; height: 45px;
}
</style>
