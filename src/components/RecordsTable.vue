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
  { key: "weightClass", width: "15%" },
  { key: "fullName", title: "Name", width: "25%" },
  { key: "yearOfBirth", title: "Year Of Birth", align: "end", width: "15%" },
  { key: "bodyWeight", title: "Body Weight", align: "end", width: "15%" },
  { key: "result", title: "Result", align: "end", width: "15%" },
  { key: "date", title: "Date", align: "end", width: "15%" }
])

defineProps<{
  items: RecordTableRow[]
  loading: boolean
}>()
</script>