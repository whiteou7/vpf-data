<template>
  <AthletesCompTable
    ref="tableRef"
    :items="athletesDisplay"
    :headers="headers"
    :loading="loading"
    :search="filters.search.value"
    disable-sort
  >
    <template #top>
      <AthletesFilter>
        <template #meetTypeFilter>
          <v-select
            v-model="filters.meetTypeFilter.value"
            :items="filters.meetTypeOptions"
            label="Competition Type"
            density="compact"
            color="primary"
            variant="solo-inverted"
          />
        </template>
      </AthletesFilter>
    </template>
  </AthletesCompTable>
</template>

<script setup lang="ts">
import type { Athlete } from "~/types/athlete"
import AthletesCompTable from "~/components/AthletesCompTable.vue"
import AthletesFilter from "~/components/AthletesFilter.vue"
import { useAthletesFilter } from "~/composables/useAthletesFilter"
import type { APIBody } from "~/types/api"

const athletes = ref<Athlete[]>([])
const loading = ref(true)

const filters = useAthletesFilter()
const visibleCount = ref(50)

const tableRef = ref()

// Load more item on the end of table
function handleScroll(e: Event) {
  const el = e.target as HTMLElement
  if (el.scrollTop + el.clientHeight >= el.scrollHeight - 10) {
    if (visibleCount.value < athletes.value.length) {
      visibleCount.value += 50
    }
  }
}

// Handle filtering and sorting
let initialized = false
watch(
  () => [
    filters.sexFilter.value,
    filters.divisionFilter.value,
    filters.weightClassFilter.value.weight,
    filters.weightClassFilter.value.sex,
    filters.sort.value,
    filters.meetTypeFilter.value
  ],
  async () => {
    if (!initialized) {
      initialized = true
      return
    }
    const params = new URLSearchParams()

    params.set("sort", filters.sort.value)

    // optional filters
    if (filters.sexFilter.value)
      params.set("sex", filters.sexFilter.value)

    if (filters.divisionFilter.value)
      params.set("division", filters.divisionFilter.value)

    if (filters.meetTypeFilter.value)
      params.set("type", filters.meetTypeFilter.value)

    const wc = filters.weightClassFilter.value
    if (wc?.weight != null)
      params.set("weightClass", String(wc.weight))

    if (wc?.sex)
      params.set("weightSex", wc.sex)

    const response = await $fetch<APIBody<{ athletes: Athlete[] }>>(
      `/api/athletes?${params.toString()}`,
      { ignoreResponseError: true }
    )

    if (!response.success) return

    athletes.value = response.data.athletes
    visibleCount.value = 50
  }
)

// Make sure that searching is done on the entire data set
watch(() => [filters.search.value, athletes.value], () => {
  console.log("triggered")
  if (filters.search.value === "") {
    visibleCount.value = 50
  } else {
    console.log("debug")
    visibleCount.value = 9999
  }
})

onMounted(async () => {  
  // Fetch
  const response = await $fetch<APIBody<{ athletes: Athlete[] }>>("/api/athletes", { ignoreResponseError: true })
  if (!response.success) {
    // TODO: Handle error
    return
  }
  loading.value = false
  athletes.value = response.data.athletes

  // Manually add scroll event to table
  const rootEl = tableRef.value?.$el as HTMLElement
  if (!rootEl) return

  const wrapper = rootEl.querySelector(".v-table__wrapper") as HTMLElement
  if (wrapper) {
    wrapper.addEventListener("scroll", handleScroll)
  }
})

// pagnitation
const athletesDisplay = computed(() => athletes.value.slice(0, visibleCount.value))

// Remove event
onBeforeUnmount(() => {
  const rootEl = tableRef.value?.$el as HTMLElement
  const wrapper = rootEl?.querySelector(".v-table__wrapper") as HTMLElement
  wrapper?.removeEventListener("scroll", handleScroll)
})

const headers = [
  { title: "#", value: "#", sortable: true },
  { title: "Name", value: "fullName", width: "15%" },
  { 
    title: "Class", 
    value: "weightClass", 
    align: "end", width: "10%",
    sortable: true,
    // Custom sort function to handle the 999 value properly
    sort: (a: number, b: number): number => {
      // For males: 999 should sort after 120, for females: 999 should sort after 84
      if (a === 999 && b !== 999) return 1
      if (b === 999 && a !== 999) return -1
      if (a === 999 && b === 999) return 0
      return a - b
    }
  },
  { title: "Sport Gender", value: "sex", align: "end", width: "10%" },
  { title: "Division", value: "division", align: "end", width: "10%" },
  { title: "Squat", value: "bestSquat", sortable: true, align: "end", width: "10%" },
  { title: "Bench", value: "bestBench", sortable: true, align: "end", width: "10%" },
  { title: "Deadlift", value: "bestDead", sortable: true, align: "end", width: "10%" },
  { title: "Total", value: "total", sortable: true, align: "end", width: "10%" },
  { title: "GL", value: "gl", sortable: true, align: "end", width: "10%" },
]

useHead({ 
  title: "VPF Athlete Rankings"
})
</script>
