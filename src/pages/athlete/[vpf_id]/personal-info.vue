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
  <div>
    <v-card max-width="500" class="mx-auto my-4">
      <v-card-title class="text-2xl">
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
  </div>
</template>