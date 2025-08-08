<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <h1>Male</h1>
    <h2>Squat Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="maleRow.squat.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="maleRow.squat.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="maleRow.squat.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="maleRow.squat.mas.value || []" :headers="headers" />

    <h2>Bench Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="maleRow.bench.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="maleRow.bench.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="maleRow.bench.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="maleRow.bench.mas.value || []" :headers="headers" />

    <h2>Deadlift Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="maleRow.deadlift.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="maleRow.deadlift.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="maleRow.deadlift.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="maleRow.deadlift.mas.value || []" :headers="headers" />

    <h2>Total Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="maleRow.total.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="maleRow.total.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="maleRow.total.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="maleRow.total.mas.value || []" :headers="headers" />

    <h1>Female</h1>
    <h2>Squat Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="femaleRow.squat.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="femaleRow.squat.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="femaleRow.squat.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="femaleRow.squat.mas.value || []" :headers="headers" />

    <h2>Bench Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="femaleRow.bench.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="femaleRow.bench.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="femaleRow.bench.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="femaleRow.bench.mas.value || []" :headers="headers" />

    <h2>Deadlift Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="femaleRow.deadlift.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="femaleRow.deadlift.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="femaleRow.deadlift.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="femaleRow.deadlift.mas.value || []" :headers="headers" />

    <h2>Total Records</h2>
    <h3>Sub Junior</h3>
    <RecordsTable :items="femaleRow.total.subjr.value || []" :headers="headers" />
    <h3>Junior</h3>
    <RecordsTable :items="femaleRow.total.jr.value || []" :headers="headers" />
    <h3>Open</h3>
    <RecordsTable :items="femaleRow.total.open.value || []" :headers="headers" />
    <h3>Masters</h3>
    <RecordsTable :items="femaleRow.total.mas.value || []" :headers="headers" />
  </div>
</template>

<script setup lang="ts">
import RecordsTable from "~/components/RecordsTable.vue"
import type { NestedRecord, RecordTableRow, DivisionRecord } from "~/types/record"
import { mapRecordsToDivisions, transformRecordsToRows } from "~/utils/utils"

const loading = ref(true)

// Factory function to create row objects for male & female records
function createRowGroup() {
  return {
    squat: {
      subjr: ref<RecordTableRow[]>(),
      jr: ref<RecordTableRow[]>(),
      open: ref<RecordTableRow[]>(),
      mas: ref<RecordTableRow[]>()
    },
    bench: {
      subjr: ref<RecordTableRow[]>(),
      jr: ref<RecordTableRow[]>(),
      open: ref<RecordTableRow[]>(),
      mas: ref<RecordTableRow[]>()
    },
    deadlift: {
      subjr: ref<RecordTableRow[]>(),
      jr: ref<RecordTableRow[]>(),
      open: ref<RecordTableRow[]>(),
      mas: ref<RecordTableRow[]>()
    },
    total: {
      subjr: ref<RecordTableRow[]>(),
      jr: ref<RecordTableRow[]>(),
      open: ref<RecordTableRow[]>(),
      mas: ref<RecordTableRow[]>()
    }
  }
}

const maleRow = createRowGroup()
const femaleRow = createRowGroup()

// Header config for table
const headers = ref([
  { key: "weight_class", sortable: false },
  { 
    title: "Gold", 
    children: [
      { key: "gold.name", sortable: false },
      { key: "gold.result", sortable: false, align: "end" }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Silver", 
    children: [
      { key: "silver.name", sortable: false },
      { key: "silver.result", sortable: false, align: "end" }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Bronze", 
    children: [
      { key: "bronze.name", sortable: false },
      { key: "bronze.result", sortable: false, align: "end" }],
    align: "center" as const,
    sortable: false
  }
])

onMounted(async () => {  
  // Fetch
  const { data: recordsData } = await useFetch<NestedRecord>("/api/records")
  if (!recordsData.value) return
  loading.value = false

  // Destructure raw data to male and female
  const { maleRecords, femaleRecords } = mapRecordsToDivisions(recordsData.value)

  // Helper function to map raw data to row object
  function fillRowData(
    target: ReturnType<typeof createRowGroup>,
    source: DivisionRecord
  ) {
    const categories = ["squat", "bench", "deadlift", "total"] as const
    const divisions = ["subjr", "jr", "open", "mas"] as const

    for (const category of categories) {
      for (const division of divisions) {
        target[category][division].value = transformRecordsToRows(
          source?.[division]?.[category] ?? []
        )
      }
    }
  }

  if (maleRecords) {
    fillRowData(maleRow, maleRecords)
  }
  if (femaleRecords) {
    fillRowData(femaleRow, femaleRecords)
  }

})

</script>

<style>
.v-data-table thead tr:nth-child(2) {
  display: none;
}
.v-data-table th,
.v-data-table td {
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.v-data-table {
  border-collapse: collapse; 
}
</style>