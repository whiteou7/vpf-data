<script setup lang="ts">
import type { APIBody } from "~/types/api"
import type { FormTextFieldConfig } from "~/types/component"

const { personalInfo } = useFetchAthlete()
const fieldConfig: Array<FormTextFieldConfig> = [
  { value: "email", label: "Email", icon: "mdi-email-outline", type: "email" },
  { value: "nationality", label: "Nationality", icon: "mdi-flag" },
  { value: "dob", label: "Date of Birth", icon: "mdi-calendar-range" },
  { value: "nationalId", label: "National ID", icon: "mdi-card-account-details", type: "number" },
  { value: "address", label: "Address", icon: "mdi-home" },
  { value: "phoneNumber", label: "Phone Number", icon: "mdi-phone", type: "number" }
]
const snackbar = useSnackbar()
const nationalIdImage = ref<File>()
const previewUrl = computed(() =>
  nationalIdImage.value ? window.URL.createObjectURL(nationalIdImage.value) : ""
)
const dialog = ref(false)
const route = useRoute()
const vpfId = route.params.vpf_id as string

const handleUpload = async () => {
  if (!nationalIdImage.value) return

  const formData = new FormData()
  formData.append("national_id", nationalIdImage.value)

  const response = await $fetch<APIBody<{ imageUrl: string }>>(`/api/athletes/${vpfId}/national-id`, {
    method: "PUT",
    body: formData,
    ignoreResponseError: true
  })

  if (response.success) {
    snackbar.push({
      text: response.message ?? "",
      color: "success",
    })
    // Refetch to display new image
    await useFetchAthlete().fetch(vpfId, true)
  } else {
    snackbar.push({
      text: response.message,
      color: "error",
    })
  }
  
  dialog.value = false
  
}

const submit = async () => {
  // Filter out unnecessary keys
  const { active, nationalIdImageUrl, ...bodyRaw } = personalInfo.value
  const body = normalizeFormData(bodyRaw, fieldConfig)
  const response = await $fetch(`/api/athletes/${vpfId}/personal-info`, {
    ignoreResponseError: true,
    method: "PATCH",
    body
  })

  snackbar.push({
    color: response.success ? "success" : "error",
    text: response.message ?? "An error has occured"
  })
}
</script>

<template>
  <div class="d-flex flex-column flex-md-row ga-4 my-4 justify-center">
    <v-card max-width="500" style="flex: 1;">
      <v-card-title>
        Membership status: {{ personalInfo?.active ? "active" : "inactive" }}
      </v-card-title>
      <v-card-text v-if="personalInfo">
        <DataForm
          :model="personalInfo"
          :fields="fieldConfig"
          :onSubmit="submit"
        />
      </v-card-text>
      <v-card-text v-else>
        No personal information available.
      </v-card-text>
    </v-card>

    <v-card max-width="500" style="flex: 1;" title="National ID">
      <v-card-text>
        <div v-if="personalInfo?.nationalIdImageUrl">
          <v-img
            :src="personalInfo.nationalIdImageUrl"
            aspect-ratio="16/9"
            alt="National ID"
            class="rounded-lg"
          >
            <template #placeholder>
              <div class="d-flex align-center justify-center fill-height">
                <v-progress-circular 
                  class="mx-auto d-block" 
                  color="primary" 
                  indeterminate 
                  :size="81"/>
              </div>
            </template>
          </v-img>
        </div>
        <div v-else>
          <v-alert type="info" variant="tonal">
            No National ID image uploaded.
          </v-alert>
        </div>
      </v-card-text>
      <v-card-actions class="d-flex justify-end">
        <div class="text-center px-4">
          <v-btn class="px-4" @click="dialog = true">
            Edit/Upload National ID
          </v-btn>

          <v-dialog
            v-model="dialog"
            width="auto"
          >
            <v-card
              width="600"
              class="pa-4"
            >
              <v-file-upload 
                v-if="!nationalIdImage"
                v-model="nationalIdImage"
                accept="image/*"
              />
              <v-img
                v-else
                :src="previewUrl"
                aspect-ratio="16/9"
                alt="National ID Preview"
                class="rounded-lg"
              />
              <template #actions>
                <v-btn
                  class="mx-auto"
                  text="Cancel"
                  @click="dialog = false"
                />
                <v-btn
                  v-if="nationalIdImage"
                  class="mx-auto"
                  text="Retry"
                  @click="nationalIdImage = undefined"
                />
                <v-btn
                  v-if="nationalIdImage"
                  class="mx-auto"
                  text="Upload"
                  @click="handleUpload"
                />
              </template>
            </v-card>
          </v-dialog>
        </div>
      </v-card-actions>
    </v-card>
  </div>
</template>