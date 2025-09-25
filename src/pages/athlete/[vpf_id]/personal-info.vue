<script setup lang="ts">
import type { APIBody } from "~/types/api"

const { personalInfo } = useFetchAthlete()
const fieldConfig = [
  { value: "email", label: "Email", icon: "mdi-email-outline" },
  { value: "nationality", label: "Nationality", icon: "mdi-flag" },
  { value: "dob", label: "Date of Birth", icon: "mdi-calendar-range" },
  { value: "nationalId", label: "National ID", icon: "mdi-card-account-details" },
  { value: "address", label: "Address", icon: "mdi-home" },
  { value: "phoneNumber", label: "Phone Number", icon: "mdi-phone" }
]
const snackbar = useSnackbar()
const nationalIdImage = ref<File>()
const previewUrl = computed(() =>
  nationalIdImage.value ? window.URL.createObjectURL(nationalIdImage.value) : ""
)
const dialog = ref(false)

const handleUpload = async () => {
  if (!nationalIdImage.value) return

  const route = useRoute()
  const vpfId = route.params.vpf_id as string

  const formData = new FormData()
  formData.append("national_id", nationalIdImage.value)

  const response = await $fetch<APIBody<{ imageUrl: string }>>(`/api/athletes/${vpfId}/national-id`, {
    method: "PUT",
    body: formData,
  })

  if (response.success) {
    snackbar.push({
      text: response.message ?? "",
      color: "success",
    })
    // Refetch
    await useFetchAthlete().fetch(vpfId, true)
  } else {
    snackbar.push({
      text: response.message,
      color: "error",
    })
  }
  
  dialog.value = false
  
}
</script>

<template>
  <div class="d-flex ga-4 justify-center">
    <v-card max-width="500" style="flex: 1;" class="ma-4">
      <v-card-title>
        Membership status: {{ personalInfo?.active ? "active" : "inactive" }}
      </v-card-title>
      <v-card-text v-if="personalInfo">
        <FormTextFields
          :model="personalInfo"
          :fields="fieldConfig"
        />
      </v-card-text>
      <v-card-text v-else>
        No personal information available.
      </v-card-text>
    </v-card>

    <v-card max-width="500" style="flex: 1;" class="ma-4" title="National ID">
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
        <div class="text-center pa-4">
          <v-btn @click="dialog = true">
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