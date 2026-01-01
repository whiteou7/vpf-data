<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div class="records-page-container">
    <div class="filters-container">
      <div class="button-container">
        <v-select
          v-model="selectedGender"
          :items="genderOptions"
          label="Sport Gender"
          density="compact"
          color="primary"
          variant="solo-inverted"
        />
      </div>
      
      <div class="button-container">
        <v-select
          v-model="selectedDivision"
          :items="divisionOptions"
          label="Division"
          density="compact"
          color="primary"
          variant="solo-inverted"
        />
      </div>
    </div>

    <RecordsDivisionGroup
      v-if="selectedRecords"
      :loading="loading"
      :items="selectedRecords"
      :title="displayTitle"
    />
  </div>
</template>

<script setup lang="ts">
import RecordsDivisionGroup from "~/components/RecordsDivisionGroup.vue"
import type { RecordTableRowGroup } from "~/types/record"
import type { APIBody } from "~/types/api"

const loading = ref(true)

const emptyGroup = (): RecordTableRowGroup => ({
  subjr: { squat: [], bench: [], deadlift: [], total: [] },
  jr:    { squat: [], bench: [], deadlift: [], total: [] },
  open:  { squat: [], bench: [], deadlift: [], total: [] },
  mas1:  { squat: [], bench: [], deadlift: [], total: [] },
  mas2:  { squat: [], bench: [], deadlift: [], total: [] },
  mas3:  { squat: [], bench: [], deadlift: [], total: [] },
  mas4:  { squat: [], bench: [], deadlift: [], total: [] },
})

const records = ref<{
  male: RecordTableRowGroup
  female: RecordTableRowGroup
}>({
  male: emptyGroup(),
  female: emptyGroup()
})

const selectedGender = ref<"male" | "female">("male")
const selectedDivision = ref<keyof RecordTableRowGroup>("open")

const genderOptions = [
  { title: "Male", value: "male" },
  { title: "Female", value: "female" }
]

const divisionOptions = [
  { title: "Open", value: "open" },
  { title: "Junior", value: "jr" },
  { title: "Sub-Junior", value: "subjr" },
  { title: "Master I", value: "mas1" },
  { title: "Master II", value: "mas2" },
  { title: "Master III", value: "mas3" },
  { title: "Master IV", value: "mas4" }
]

const selectedRecords = computed(() => {
  const genderGroup = records.value[selectedGender.value]
  if (!genderGroup) return null
  return genderGroup[selectedDivision.value]
})

const displayTitle = computed(() => {
  const genderLabel = selectedGender.value === "male" ? "Men" : "Women"
  const divisionLabel = divisionOptions.find(d => d.value === selectedDivision.value)?.title || ""
  return `${genderLabel} ${divisionLabel} Records`
})

onMounted(async () => {
  const response = await $fetch<
    APIBody<{ male: RecordTableRowGroup, female: RecordTableRowGroup }>
  >("/api/records", { ignoreResponseError: true })

  if (!response.success || !response.data) {
    return
  }

  // assign directly since structure matches
  records.value = {
    male: response.data.male,
    female: response.data.female
  }

  loading.value = false
})

useHead({ 
  meta: [
    { property: "og:type", content: "website" },
    { property: "og:title", content: "VPF National Records" },
    { property: "og:description", content: "VPF National Records across all Weight Classes & Divisions" },
  ],
  title: "VPF National Records"
})

</script>

<style scoped>
.records-page-container {
  display: flex;
  flex-direction: column;
  height: 100%;
  min-height: 0;
  overflow: hidden;
}

.filters-container {
  overflow-x:auto; overflow-y: hidden; display: flex; gap: 1rem; padding: 0 1rem; margin: 0.5rem 0;
}

/* Landscape: reduce spacing and ensure fit */
@media screen and (orientation: landscape) {
  .records-page-container {
    height: calc(100vh - 64px - 3rem);
    max-height: calc(100vh - 64px - 3rem);
  }
  
  .filters-container {
    margin-bottom: 0.5rem;
    gap: 0.75rem;
  }
  
  .filter-item {
    height: 40px;
  }
}
</style>