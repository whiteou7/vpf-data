<!-- eslint-disable vue/valid-v-slot -->
<template>
  <div>
    <RecordsTableGroup
      :loading="loading"
      :items="records"
    />
  </div>
</template>

<script setup lang="ts">
import RecordsTableGroup from "~/components/RecordsTableGroup.vue"
import type { RecordTableRowGroup } from "~/types/record"
import type { APIBody } from "~/types/api"

const loading = ref(true)

const emptyGroup = (): RecordTableRowGroup => ({
  subjr: { squat: [], bench: [], deadlift: [], total: [] },
  jr:    { squat: [], bench: [], deadlift: [], total: [] },
  open:  { squat: [], bench: [], deadlift: [], total: [] },
  mas:   { squat: [], bench: [], deadlift: [], total: [] },
})

const records = ref<{
  male: RecordTableRowGroup
  female: RecordTableRowGroup
}>({
  male: emptyGroup(),
  female: emptyGroup()
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