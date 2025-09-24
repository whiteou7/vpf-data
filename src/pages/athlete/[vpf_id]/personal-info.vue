<script setup lang="ts">
const { personalInfo } = useFetchAthlete()
const fieldConfig = [
  { value: "email", label: "Email", icon: "mdi-email-outline" },
  { value: "nationality", label: "Nationality", icon: "mdi-flag" },
  { value: "dob", label: "Date of Birth", icon: "mdi-calendar-range" },
  { value: "nationalId", label: "National ID", icon: "mdi-card-account-details" },
  { value: "address", label: "Address", icon: "mdi-home" },
  { value: "phoneNumber", label: "Phone Number", icon: "mdi-phone" }
]
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
        <div v-if="personalInfo?.socialIdImageUrl">
          <v-img
            :src="personalInfo.socialIdImageUrl"
            aspect-ratio="16/9"
            alt="National ID"
            class="rounded-lg"
          />
        </div>
        <div v-else>
          <v-alert type="info" variant="tonal">
            No National ID image uploaded.
          </v-alert>
        </div>
      </v-card-text>
    </v-card>
  </div>
</template>