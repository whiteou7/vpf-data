<template>
  <v-data-table
    class="records-table-component"
    :items="items"
    :headers="headers"
    hide-default-footer
    density="compact"
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

// Header config for table
const headers = ref([
  { key: "weight_class", sortable: false },
  { 
    title: "Gold", 
    children: [
      { key: "gold.name", sortable: false },
      { key: "gold.result", sortable: false, align: "end" as const }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Silver", 
    children: [
      { key: "silver.name", sortable: false },
      { key: "silver.result", sortable: false, align: "end" as const }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Bronze", 
    children: [
      { key: "bronze.name", sortable: false },
      { key: "bronze.result", sortable: false, align: "end" as const }],
    align: "center" as const,
    sortable: false
  }
])

defineProps<{
  items: RecordTableRow[]
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

.records-table-component .v-data-table__td {
  height: auto !important;
  min-height: 0; 
  white-space: nowrap;
  padding: 3px 10px !important; 
}

/* Gold column styling */
.records-table-component th:nth-child(2),
.records-table-component td:nth-child(2),
.records-table-component th:nth-child(3),
.records-table-component td:nth-child(3) {
  color: #D8C276 !important;
}

.records-table-component th:nth-child(2),
.records-table-component th:nth-child(3) {
  font-weight: bold !important;
}

/* Silver column styling */
.records-table-component th:nth-child(3),
.records-table-component td:nth-child(4),
.records-table-component th:nth-child(5),
.records-table-component td:nth-child(5) {
  color: #C0C0C0 !important;
}

.records-table-component th:nth-child(4),
.records-table-component th:nth-child(5) {
  font-weight: bold !important;
}

/* Bronze column styling */
.records-table-component th:nth-child(4),
.records-table-component td:nth-child(6),
.records-table-component th:nth-child(7),
.records-table-component td:nth-child(7) {
  color: #AE8C73 !important;
}

</style>