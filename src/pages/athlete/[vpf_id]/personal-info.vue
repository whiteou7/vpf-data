<script setup lang="ts">
const { personalInfo } = useFetchAthlete()
console.log(personalInfo.value)
</script>

<template>
  <div class="py-10">
    <v-card class="max-w-2xl mx-auto">
      <v-card-title class="text-2xl font-bold">
        Personal Information
      </v-card-title>
      <v-card-text v-if="personalInfo">
        <v-text-field
          v-model="personalInfo.email"
          label="Email"
          readonly
        />
        <v-text-field
          v-model="personalInfo.nationality"
          label="Nationality"
          readonly
        />
        <v-text-field
          v-model="personalInfo.dob"
          label="Date of Birth"
          readonly
        />
        <v-text-field
          v-model="personalInfo.nationalId"
          label="National ID"
          readonly
        />
        <v-text-field
          v-model="personalInfo.address"
          label="Address"
          readonly
        />
        <v-text-field
          v-model="personalInfo.phoneNumber"
          label="Phone Number"
          readonly
        />
        <v-switch
          v-model="personalInfo.active"
          label="Active"
          readonly
          color="primary"
        />
      </v-card-text>
      <v-card-text v-else>
        No personal information available.
      </v-card-text>
    </v-card>
  </div>
</template>