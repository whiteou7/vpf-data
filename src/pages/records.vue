<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <h1>Male</h1>
    <h2>Squat Records</h2>
    <h3>Sub Junior</h3>
    <v-data-table
      :items="items"
      :headers="headers"
      hide-default-footer
      density="compact"
    >
      <template #item.weight_class="{ item }">
        {{ getWeightClassDisplay(item.weight_class, item.sex as Sex) }}
      </template>
    </v-data-table>
    <h2>Bench Records</h2>
    <h2>Deadlift Records</h2>
    <h2>Total Records</h2>
    <h1>Female</h1>
    <h2>Squat Records</h2>
    <h2>Bench Records</h2>
    <h2>Deadlift Records</h2>
    <h2>Total Records</h2>
  </div>
</template>

<script setup lang="ts">
import type { Sex } from "~/types/lifter"
import type { NestedRecord, DivisionRecord, RecordTableRow } from "~/types/record"

const loading = ref(true)
const records = ref<NestedRecord>()
const maleRecords = ref<DivisionRecord>()
const femaleRecords = ref<DivisionRecord>()

const items = ref<RecordTableRow[]>([])

// Table header config
const headers = ref([
  { key: "weight_class", sortable: false },
  { 
    title: "Gold", 
    children: [
      { key: "gold.name", sortable: false },
      { key: "gold.result", sortable: false }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Silver", 
    children: [
      { key: "silver.name", sortable: false },
      { key: "silver.result", sortable: false }],
    align: "center" as const,
    sortable: false
  },
  { 
    title: "Bronze", 
    children: [
      { key: "bronze.name", sortable: false },
      { key: "bronze.result", sortable: false }],
    align: "center" as const,
    sortable: false
  }
])

// Fetch records
onMounted(async () => {  
  const { data: recordsData } = await useFetch<NestedRecord>("/api/records")

  if (!recordsData.value) return
  
  loading.value = false

  records.value = recordsData.value

  maleRecords.value = { 
    subjr: {
      squat: records.value.squat.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? [],
      total: records.value.total.filter(lift => lift.sex === "male" && lift.division === "subjr") ?? []
    },
    jr: {
      squat: records.value.squat.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "male" && lift.division === "jr") ?? [],
      total: records.value.total.filter(lift => lift.sex === "male" && lift.division === "jr") ?? []
    },
    open: {
      squat: records.value.squat.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "male" && lift.division === "open") ?? [],
      total: records.value.total.filter(lift => lift.sex === "male" && lift.division === "open") ?? []
    },
    mas: {
      squat: records.value.squat.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      total: records.value.total.filter(lift => lift.sex === "male" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }

  femaleRecords.value = { 
    subjr: {
      squat: records.value.squat.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? [],
      total: records.value.total.filter(lift => lift.sex === "female" && lift.division === "subjr") ?? []
    },
    jr: {
      squat: records.value.squat.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "female" && lift.division === "jr") ?? [],
      total: records.value.total.filter(lift => lift.sex === "female" && lift.division === "jr") ?? []
    },
    open: {
      squat: records.value.squat.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "female" && lift.division === "open") ?? [],
      total: records.value.total.filter(lift => lift.sex === "female" && lift.division === "open") ?? []
    },
    mas: {
      squat: records.value.squat.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      bench: records.value.bench.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      deadlift: records.value.deadlift.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? [],
      total: records.value.total.filter(lift => lift.sex === "female" && ["mas1", "mas2", "mas3", "mas4"].includes(lift.division)) ?? []
    }
  }

  items.value = transformRecordsToHeaders(maleRecords.value.open?.squat ?? [])

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