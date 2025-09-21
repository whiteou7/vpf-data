<template>
  <div>
    <v-text-field
      v-for="field in fields"
      :key="field.value"
      v-model="model[field.value]"
      :label="field.label"
      variant="outlined"
      density="compact"
      :prepend-inner-icon="field.icon"
    />
  </div>
</template>
  
<script setup>
defineProps({
  fields: {
    type: Array,
    required: true
  },
  model: {
    type: Object,
    required: true
  }
})
</script>
