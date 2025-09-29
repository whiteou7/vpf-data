<template>
  <v-form validate-on="submit" @submit.prevent="onSubmit">
    <template v-for="field in fields" :key="field.value">
      <!-- Nationality field -->
      <v-select
        v-if="field.type === 'nationality'"
        v-model="model[field.value]"
        :label="field.label"
        :items="nationalities"
        variant="outlined"
        density="compact"
        :prepend-inner-icon="field.icon"
      />

      <!-- Default text fields -->
      <v-text-field
        v-else
        v-model="model[field.value]"
        :label="field.label"
        variant="outlined"
        density="compact"
        :prepend-inner-icon="field.icon"
        :type="field.type"
        :rules="field.type === 'text-digit-only' ? [value => /^\d*$/.test(value)] : field.type === 'year' ? [value => isValidYOB(value)] : undefined"
      />
    </template>

    <div class="d-flex justify-end">
      <v-btn variant="text" text="Submit" type="submit" />
    </div>
  </v-form>
</template>

<script setup lang="ts">
import type { FormTextFieldConfig } from "~/types/component"
import { nationalities } from "~/utils/data"

defineProps({
  fields: {
    type: Array<FormTextFieldConfig>,
    required: true
  },
  model: {
    type: Object,
    required: true
  },
  onSubmit: {
    type: Function as PropType<(e?: Event) => void>,
    required: true
  }
})
</script>
