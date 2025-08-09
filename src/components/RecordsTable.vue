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

const props = defineProps<{
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

@media (max-width: 768px) {
  .records-table-component {
    font-size: 0.75rem;
  }
  
  .records-table-component th,
  .records-table-component td {
    padding: 4px 6px !important;
    white-space: nowrap;
  }
  
  .records-table-component th {
    font-size: 0.7rem;
    font-weight: 600;
  }
}

/* Very small screens - even smaller */
@media (max-width: 480px) {
  .records-table-component {
    font-size: 0.65rem;
  }
  
  .records-table-component th,
  .records-table-component td {
    padding: 2px 4px !important;
  }
  
  .records-table-component th {
    font-size: 0.6rem;
  }
}
</style>