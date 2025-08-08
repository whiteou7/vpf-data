<!-- eslint-disable vue/valid-v-slot -->
<template>
  <v-data-table
    :items="items"
    :headers="headers"
    hide-default-footer
    density="compact"
  >
    <template #item.weight_class="{ item }">
      {{ getWeightClassDisplay(item.weight_class, item.sex) }}
    </template>
  </v-data-table>
</template>

<script setup lang="ts">
import type { RecordTableRow } from "~/types/record"
// eslint-disable-next-line @typescript-eslint/no-unused-vars
const props = defineProps<{
  items: RecordTableRow[]
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  headers: any[]
}>()
</script>
