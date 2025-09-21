<script setup lang="ts">
const { compSettings } = useFetchAthlete()
const fieldConfig = [
  { value: "squatRackPin", label: "Squat Rack Pin" },
  { value: "benchRackPin", label: "Bench Rack Pin" },
  { value: "benchSafetyPin", label: "Bench Safety Pin" },
  { value: "benchFootBlock", label: "Bench Foot Block" },
]
</script>

<template>
  <div>
    <v-card class="max-w-2xl mx-auto">
      <v-card-text v-if="compSettings">
        <FormTextFields
          :model="compSettings"
          :fields="fieldConfig"
        />
      </v-card-text>
      <v-card-text v-else>
        No competition settings available.
      </v-card-text>
    </v-card>
  </div>
</template>