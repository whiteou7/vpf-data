<template>
  <v-form validate-on="submit" @submit.prevent="onSubmit">
    <v-text-field
      v-for="field in fields"
      :key="field.value"
      v-model="model[field.value]"
      :label="field.label"
      variant="outlined"
      density="compact"
      :prepend-inner-icon="field.icon"
      :type="field.type"
      :rules="field.type == 'text-digit-only' ? [value => /^\d*$/.test(value)] : undefined"
    />
    <div class="d-flex justify-end">
      <v-btn class="max-auto" variant="text" text="Submit" type="submit"/>
    </div>
  </v-form>
</template>

<script setup lang="ts">
import type { FormTextFieldConfig } from "~/types/component"

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
