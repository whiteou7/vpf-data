<script setup lang="ts">
import type { APIBody } from "~/types/api"
import type { FormTextFieldConfig } from "~/types/component"
import VuePictureCropper, { cropper } from "vue-picture-cropper"

const { personalInfo } = useFetchAthlete()
const fieldConfig: Array<FormTextFieldConfig> = [
  { value: "email", label: "Email", icon: "mdi-email-outline", type: "email" },
  { value: "nationality", label: "Nationality", icon: "mdi-flag", type: "nationality" },
  { value: "dob", label: "Year of Birth", icon: "mdi-calendar-range", type: "year" },
  { value: "nationalId", label: "National ID", icon: "mdi-card-account-details", type: "text-digit-only" },
  { value: "address", label: "Address", icon: "mdi-home" },
  { value: "phoneNumber", label: "Phone Number", icon: "mdi-phone", type: "text-digit-only" },
  { value: "instagramUsername", label: "Instagram Username", icon: "mdi-instagram" }
]
const snackbar = useSnackbar()

const nationalIdImage = ref<File | undefined>()
const croppedImageUrl = ref<string | undefined>()

const rerender = ref<number>(0) // temp variable to trigger image rerender

// Image cropper related refs
const isCropperModalOpen = ref<boolean>(false)
const uncroppedImageUrl = ref<string | undefined>("") // unprocessed base64 URL fed to cropper

const isUploadModalOpen = ref(false)
const route = useRoute()
const vpfId = route.params.vpf_id as string

// ChatGPT wrote this shit
// Init necessary variables and open modal
const prepareCropping = () => {
  if (!nationalIdImage.value) return
  
  uncroppedImageUrl.value = ""
  croppedImageUrl.value = ""

  const reader = new FileReader()
  reader.readAsDataURL(nationalIdImage.value)
  reader.onload = () => {
    uncroppedImageUrl.value = String(reader.result)
    isCropperModalOpen.value = true
  }
}

// Get data from cropper and store to previewUrl as well as national id pic
const handleCropping = async () => {
  if (!cropper) return

  const base64 = cropper.getDataURL()
  croppedImageUrl.value = base64
  isCropperModalOpen.value = false
  
  // Convert base64 to File object
  const response = await fetch(base64)
  const blob = await response.blob()
  const file = new File([blob], "national-id.jpg", { type: "image/jpeg" })
  nationalIdImage.value = file
}

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

    rerender.value++
  } else {
    snackbar.push({
      text: response.message,
      color: "error",
    })
  }
  
  isUploadModalOpen.value = false
  
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
          :on-submit="submit"
        />
      </v-card-text>
      <v-card-text v-else>
        No personal information available.
      </v-card-text>
    </v-card>

    <v-card max-width="500" style="flex: 1;" title="National ID">
      <!-- Display national ID image/placeholder text -->
      <v-card-text>
        <div v-if="personalInfo?.nationalIdImageUrl">
          <v-img
            :key="rerender"
            :src="`${personalInfo.nationalIdImageUrl}?t=${Date.now()}`"
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

      <!-- Button to edit/upload -->
      <v-card-actions class="d-flex justify-end pa-0 pb-4">
        <div class="text-center px-4">
          <v-btn class="px-4" @click="isUploadModalOpen = true">
            Edit/Upload National ID
          </v-btn>
        </div>
      </v-card-actions>
    </v-card>

    <!-- Modal for uploading image -->
    <v-dialog
      v-model="isUploadModalOpen"
      width="auto"
      persistent
    >
      <v-card
        class="pa-4"
      >
        <v-card-title v-if="croppedImageUrl" class="pb-2 pt-0 px-0">Preview Image</v-card-title>
        <v-file-upload 
          v-if="!croppedImageUrl"
          v-model="nationalIdImage"
          accept="image/*"
          @update:model-value="prepareCropping"
        />
        
        <!-- Show preview of cropped image -->
        <v-img
          v-if="croppedImageUrl"
          :src="croppedImageUrl"
          aspect-ratio="16/9"
          alt="National ID Preview"
          class="rounded-lg"
        />
        
        <template #actions>
          <v-btn
            v-if="croppedImageUrl"
            class="mx-auto"
            text="Retry"
            @click="croppedImageUrl = undefined; uncroppedImageUrl = undefined; nationalIdImage = undefined"
          />
          <v-btn
            class="mx-auto"
            text="Cancel"
            @click="isUploadModalOpen = false"
          />
          <v-btn
            v-if="nationalIdImage"
            color="primary"
            class="mx-auto"
            text="Upload"
            @click="handleUpload"
          />
        </template>
      </v-card>
    </v-dialog>

    <!-- Cropper Modal -->
    <v-dialog v-model="isCropperModalOpen" width="auto" persistent>
      <v-card>
        <v-card-title>Crop Image</v-card-title>
        <v-card-text class="px-4 py-0">
          <div>
            <VuePictureCropper
              :box-style="{
                width: '100%',
                height: '100%',
                backgroundColor: '#f8f8f8',
                margin: 'auto',
              }"
              :img="uncroppedImageUrl"
              :options="{
                viewMode: 1,
                dragMode: 'crop',
                aspectRatio: 16 / 9,
              }"
            />
          </div>
        </v-card-text>
        <v-card-actions class="justify-end">
          <v-btn class="mx-auto" color="primary" text="Crop Image" @click="handleCropping" />
          <v-btn
            class="mx-auto"
            text="Cancel"
            @click="isUploadModalOpen = false; isCropperModalOpen = false; nationalIdImage = undefined"
          />
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>

</template>