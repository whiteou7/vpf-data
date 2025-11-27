<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div>
    <h1 class="text-primary pa-2">Male</h1>
    <RecordsTableGroup
      :loading="loading"
      :items="maleRowGroup"
    />

    <h1 class="text-primary pa-2">Female</h1>
    <RecordsTableGroup
      :loading="loading"
      :items="femaleRowGroup"
    />
  </div>
</template>

<script setup lang="ts">
import RecordsTableGroup from "~/components/RecordsTableGroup.vue"
import type { RecordTableRowGroup } from "~/types/record"
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
  const response = await $fetch<APIBody<{ male: RecordTableRowGroup, female: RecordTableRowGroup }>>("/api/records", { ignoreResponseError: true })
  if (!response.success || !response.data) {
    // TODO: Handle error
    return
  }
  loading.value = false

  const { male, female } = response.data

  // Map data to row object
  if (male) {
    maleRowGroup.squat.subjr = male.squat.subjr
    maleRowGroup.squat.jr = male.squat.jr
    maleRowGroup.squat.open = male.squat.open
    maleRowGroup.squat.mas = male.squat.mas

    maleRowGroup.bench.subjr = male.bench.subjr
    maleRowGroup.bench.jr = male.bench.jr
    maleRowGroup.bench.open = male.bench.open
    maleRowGroup.bench.mas = male.bench.mas

    maleRowGroup.deadlift.subjr = male.deadlift.subjr
    maleRowGroup.deadlift.jr = male.deadlift.jr
    maleRowGroup.deadlift.open = male.deadlift.open
    maleRowGroup.deadlift.mas = male.deadlift.mas

    maleRowGroup.total.subjr = male.total.subjr
    maleRowGroup.total.jr = male.total.jr
    maleRowGroup.total.open = male.total.open
    maleRowGroup.total.mas = male.total.mas
  }

  if (female) {
    femaleRowGroup.squat.subjr = female.squat.subjr
    femaleRowGroup.squat.jr = female.squat.jr
    femaleRowGroup.squat.open = female.squat.open
    femaleRowGroup.squat.mas = female.squat.mas

    femaleRowGroup.bench.subjr = female.bench.subjr
    femaleRowGroup.bench.jr = female.bench.jr
    femaleRowGroup.bench.open = female.bench.open
    femaleRowGroup.bench.mas = female.bench.mas

    femaleRowGroup.deadlift.subjr = female.deadlift.subjr
    femaleRowGroup.deadlift.jr = female.deadlift.jr
    femaleRowGroup.deadlift.open = female.deadlift.open
    femaleRowGroup.deadlift.mas = female.deadlift.mas

    femaleRowGroup.total.subjr = female.total.subjr
    femaleRowGroup.total.jr = female.total.jr
    femaleRowGroup.total.open = female.total.open
    femaleRowGroup.total.mas = female.total.mas
  }
  console.log(maleRowGroup)

})

</script>