<script setup lang="ts">
const { compSettings } = useFetchAthlete()
</script>

<template>
  <div class="py-10">
    <v-card class="max-w-2xl mx-auto">
      <v-card-title class="text-2xl font-bold">
        Competition Settings
      </v-card-title>
      <v-card-text v-if="compSettings">
        <v-text-field
          v-model="compSettings.squatRackPin"
          label="Squat Rack Pin"
          readonly
        />
        <v-text-field
          v-model="compSettings.benchRackPin"
          label="Bench Rack Pin"
          readonly
        />
        <v-text-field
          v-model="compSettings.benchSafetyPin"
          label="Bench Safety Pin"
          readonly
        />
        <v-text-field
          v-model="compSettings.benchFootBlock"
          label="Bench Foot Block"
          readonly
        />
      </v-card-text>
      <v-card-text v-else>
        No competition settings available.
      </v-card-text>
    </v-card>
  </div>
</template>