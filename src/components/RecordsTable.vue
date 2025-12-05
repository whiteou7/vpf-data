<template>
  <BaseTable
    :items="items"
    :headers="headers"
    :loading="loading"
    disable-sort
    striped="odd"
  >
    <template #loading>
      <v-skeleton-loader type="table-row@10"/>
    </template>
  </BaseTable>
</template>

<script setup lang="ts">
import type { RecordTableRow } from "~/types/record"

// Header config for table
const headers = ref([
  { key: "weightClass" },
  { key: "fullName", title: "Name" },
  { key: "yearOfBirth", title: "Year Of Birth" },
  { key: "bodyWeight", title: "Body Weight" },
  { key: "result", title: "Result" },
  { key: "date", title: "Date" }
])

defineProps<{
  items: RecordTableRow[]
  loading: boolean
}>()
</script>