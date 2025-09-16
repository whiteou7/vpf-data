<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="min-h-screen py-10">
    <div class="max-w-[95%] mx-auto">
      <h1 class="text-3xl font-bold mb-6 text-primary tracking-wide pb-2 pt-2 px-2">Male</h1>
      <RecordsTableGroup
        :loading="loading"
        :items="maleRowGroup"
      />

      <h1 class="text-3xl font-bold mb-6 text-primary tracking-wide pb-2 pt-2 px-2">Female</h1>
      <RecordsTableGroup
        :loading="loading"
        :items="femaleRowGroup"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import RecordsTableGroup from "~/components/RecordsTableGroup.vue"
import type { DestructuredRecord, RecordTableRowGroup } from "~/types/record"
import { transformRecordsToRows } from "~/utils/utils"
import type { APIBody } from "~/types/api"

const loading = ref(true)

// Objects to hold data for table group
const maleRowGroup: RecordTableRowGroup = {
  squat: { subjr: [], jr: [], open: [], mas: [] },
  bench: { subjr: [], jr: [], open: [], mas: [] },
  deadlift: { subjr: [], jr: [], open: [], mas: [] },
  total: { subjr: [], jr: [], open: [], mas: [] },
}
const femaleRowGroup: RecordTableRowGroup = {
  squat: { subjr: [], jr: [], open: [], mas: [] },
  bench: { subjr: [], jr: [], open: [], mas: [] },
  deadlift: { subjr: [], jr: [], open: [], mas: [] },
  total: { subjr: [], jr: [], open: [], mas: [] },
}

onMounted(async () => {  
  // Fetch
  const response = await $fetch<APIBody<{ male: DestructuredRecord, female: DestructuredRecord }>>("/api/records")
  if (!response.success || !response.data) {
    // TODO: Handle error
    return
  }
  loading.value = false

  const { male, female } = response.data

  // Map data to row object
  if (male) {
    maleRowGroup.squat.subjr = transformRecordsToRows(male.squat.subjr)
    maleRowGroup.squat.jr = transformRecordsToRows(male.squat.jr)
    maleRowGroup.squat.open = transformRecordsToRows(male.squat.open)
    maleRowGroup.squat.mas = transformRecordsToRows(male.squat.mas)

    maleRowGroup.bench.subjr = transformRecordsToRows(male.bench.subjr)
    maleRowGroup.bench.jr = transformRecordsToRows(male.bench.jr)
    maleRowGroup.bench.open = transformRecordsToRows(male.bench.open)
    maleRowGroup.bench.mas = transformRecordsToRows(male.bench.mas)

    maleRowGroup.deadlift.subjr = transformRecordsToRows(male.deadlift.subjr)
    maleRowGroup.deadlift.jr = transformRecordsToRows(male.deadlift.jr)
    maleRowGroup.deadlift.open = transformRecordsToRows(male.deadlift.open)
    maleRowGroup.deadlift.mas = transformRecordsToRows(male.deadlift.mas)

    maleRowGroup.total.subjr = transformRecordsToRows(male.total.subjr)
    maleRowGroup.total.jr = transformRecordsToRows(male.total.jr)
    maleRowGroup.total.open = transformRecordsToRows(male.total.open)
    maleRowGroup.total.mas = transformRecordsToRows(male.total.mas)
  }

  if (female) {
    femaleRowGroup.squat.subjr = transformRecordsToRows(female.squat.subjr)
    femaleRowGroup.squat.jr = transformRecordsToRows(female.squat.jr)
    femaleRowGroup.squat.open = transformRecordsToRows(female.squat.open)
    femaleRowGroup.squat.mas = transformRecordsToRows(female.squat.mas)

    femaleRowGroup.bench.subjr = transformRecordsToRows(female.bench.subjr)
    femaleRowGroup.bench.jr = transformRecordsToRows(female.bench.jr)
    femaleRowGroup.bench.open = transformRecordsToRows(female.bench.open)
    femaleRowGroup.bench.mas = transformRecordsToRows(female.bench.mas)

    femaleRowGroup.deadlift.subjr = transformRecordsToRows(female.deadlift.subjr)
    femaleRowGroup.deadlift.jr = transformRecordsToRows(female.deadlift.jr)
    femaleRowGroup.deadlift.open = transformRecordsToRows(female.deadlift.open)
    femaleRowGroup.deadlift.mas = transformRecordsToRows(female.deadlift.mas)

    femaleRowGroup.total.subjr = transformRecordsToRows(female.total.subjr)
    femaleRowGroup.total.jr = transformRecordsToRows(female.total.jr)
    femaleRowGroup.total.open = transformRecordsToRows(female.total.open)
    femaleRowGroup.total.mas = transformRecordsToRows(female.total.mas)
  }

})

</script>