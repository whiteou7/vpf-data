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
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>

<script setup lang="ts">
const { snackbar, snackbarColor, snackbarLocation, snackbarText } = useSnackbar()
useHead({
  meta: [
    { name: "description", content: "Powerlifting results tracking page for VPF (Vietnamese Powerlifting Federation)." },
    { name: "keywords", content: "vietnam, powerlifting, tracking, pwl, squat, bench, deadlift" },
    { property: "og:description", content: "Powerlifting results tracking page for VPF (Vietnamese Powerlifting Federation)." },
    { property: "og:image", content: "/logo.jpg" },
    { property: "og:type", content: "website" },
  ]
})
</script>

<style>
.button-container {
  flex: 1; min-width: 150px; max-width: 200px; height: 45px;
}
</style>
