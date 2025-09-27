<script setup lang="ts">
import type { FormTextFieldConfig } from "~/types/component"

const { compSettings } = useFetchAthlete()
const fieldConfig: Array<FormTextFieldConfig> = [
  { value: "squatRackPin", label: "Squat Rack Pin", type: "number" },
  { value: "benchRackPin", label: "Bench Rack Pin", type: "number" },
  { value: "benchSafetyPin", label: "Bench Safety Pin", type: "number" },
  { value: "benchFootBlock", label: "Bench Foot Block", type: "number" },
]
const route = useRoute()
const vpfId = route.params.vpf_id as string

const snackbar = useSnackbar()

const submit = async () => {
  const body = normalizeFormData(compSettings.value, fieldConfig)
  const response = await $fetch(`/api/athletes/${vpfId}/comp-settings`, {
    method: "PATCH",
    body,
    ignoreResponseError: true
  })

  snackbar.push({
    color: response.success ? "success" : "error",
    text: response.message ?? "An error has occured"
  })
}
</script>

<template>
  <div>
    <v-card max-width="500" class="mx-auto my-4">
      <v-card-text v-if="compSettings">
        <DataForm
          :model="compSettings"
          :fields="fieldConfig"
          :on-submit="submit"
        />
      </v-card-text>
      <v-card-text v-else>
        No competition settings available.
      </v-card-text>
    </v-card>
  </div>
</template>