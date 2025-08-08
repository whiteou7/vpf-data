<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10 px-4 md:px-12">
    <h1 class="text-3xl font-bold mb-6 text-primary tracking-wide pb-2 pt-2 px-2">Male</h1>
    <div class="records-grid pb-8">
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Squat</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="maleRow.squat.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="maleRow.squat.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="maleRow.squat.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="maleRow.squat.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Bench</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="maleRow.bench.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="maleRow.bench.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="maleRow.bench.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="maleRow.bench.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Deadlift</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="maleRow.deadlift.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="maleRow.deadlift.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="maleRow.deadlift.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="maleRow.deadlift.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Total</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="maleRow.total.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="maleRow.total.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="maleRow.total.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="maleRow.total.mas.value || []" :headers="headers" />
      </div>
    </div>
    <h1 class="text-3xl font-bold mb-6 text-primary tracking-wide pb-2 pt-2 px-2">Female</h1>
    <div class="records-grid pb-8">
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Squat</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="femaleRow.squat.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="femaleRow.squat.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="femaleRow.squat.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="femaleRow.squat.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Bench</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="femaleRow.bench.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="femaleRow.bench.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="femaleRow.bench.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="femaleRow.bench.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Deadlift</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="femaleRow.deadlift.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="femaleRow.deadlift.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="femaleRow.deadlift.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="femaleRow.deadlift.mas.value || []" :headers="headers" />
      </div>
      <div class="p-3 md:p-5">
        <h2 class="text-xl font-semibold mb-2 text-primary pb-1 pt-1 px-1">Total</h2>
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Sub Junior</h4>
        <RecordsTable :items="femaleRow.total.subjr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Junior</h4>
        <RecordsTable :items="femaleRow.total.jr.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-1 text-primary pb-1 pt-1 px-1">Open</h4>
        <RecordsTable :items="femaleRow.total.open.value || []" :headers="headers" />
        <h4 class="text-base font-medium mb-2 text-primary pb-1 pt-1 px-1">Masters</h4>
        <RecordsTable :items="femaleRow.total.mas.value || []" :headers="headers" />
      </div>
    </div>
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
.records-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 2rem;
  margin-bottom: 3rem;
}
.records-grid > div {
  background: rgba(255,255,255,0.03);
  padding: 1rem;
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px 0 rgba(0,0,0,0.04);
}
.records-grid h2 {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 1.3rem;
  font-weight: 600;
}
.records-grid h4 {
  margin: 0.5rem 0 0.2rem 0;
  font-size: 1rem;
  font-weight: 500;
}
</style>