<template>
  <v-data-table
    class="records-table-component"
    :items="items"
    :headers="headers"
    hide-default-footer
    density="compact"
    hover
    :loading="loading"
  >
    <template #item.weight_class="{ item }">
      {{ getWeightClassDisplay(item.weight_class, item.sex) }}
    </template>
    <template #loading>
      <v-skeleton-loader type="table-row@10"/>
    </template>
  </v-data-table>
</template>

<script setup lang="ts">
import type { RecordTableRow } from "~/types/record"
const props = defineProps<{
  items: RecordTableRow[]
  headers: any[],
  loading: boolean
}>()
</script>

<style>
.records-table-component thead tr:nth-child(2) {
  display: none;
}

.records-table-component th,
.records-table-component td {
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.records-table-component {
  border-collapse: collapse; 
}
</style>