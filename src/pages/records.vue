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
import type { NestedRecord, DivisionRecord, RecordTableRowGroup } from "~/types/record"
import { mapRecordsToDivisions, transformRecordsToRows } from "~/utils/utils"

const loading = ref(true)

// Objects to hold data for table group
const maleRowGroup: RecordTableRowGroup = {
  squat: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  bench: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  deadlift: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  total: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  }
}
const femaleRowGroup: RecordTableRowGroup = {
  squat: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  bench: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  deadlift: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  },
  total: {
    subjr: [],
    jr: [],
    open: [],
    mas: []
  }
}

onMounted(async () => {  
  // Fetch
  const { data: recordsData } = await useFetch<NestedRecord>("/api/records")
  if (!recordsData.value) return
  loading.value = false

  // Destructure raw data to male and female
  const { maleRecords, femaleRecords } = mapRecordsToDivisions(recordsData.value)

  // Helper function to map raw data to objects for table group
  function fillRowData(
    target: RecordTableRowGroup,
    source: DivisionRecord
  ) {
    const categories = ["squat", "bench", "deadlift", "total"] as const
    const divisions = ["subjr", "jr", "open", "mas"] as const

    for (const category of categories) {
      for (const division of divisions) {
        target[category][division] = transformRecordsToRows(
          source?.[division]?.[category] ?? []
        )
      }
    }
  }

  if (maleRecords) {
    fillRowData(maleRowGroup, maleRecords)
  }
  if (femaleRecords) {
    fillRowData(femaleRowGroup, femaleRecords)
  }

})

</script>
