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
</script>
