<template>
  <AthletesCompTable
    ref="tableRef"
    :items="filteredAthletes"
    :headers="headers"
    :loading="loading"
    :search="filters.search.value"
    @update:sortBy="handleSort"
  >
    <template #top>
      <AthletesFilter />
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

// Load all item into table if sort, will improve later
function handleSort(e: Array<{ key: string, order: string}>) {
  if (e.length) {
    visibleCount.value = 999
  } else {
    visibleCount.value = 50
  }
}

// Reset visible count upon filter actions
watch(
  () => [filters.sexFilter.value, filters.divisionFilter.value, filters.weightClassFilter.value, filters.search.value],
  () => {
    visibleCount.value = 50
  }
)

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

// Remove event
onBeforeUnmount(() => {
  const rootEl = tableRef.value?.$el as HTMLElement
  const wrapper = rootEl?.querySelector(".v-table__wrapper") as HTMLElement
  wrapper?.removeEventListener("scroll", handleScroll)
})

// Computed filtering logic
const filteredAthletes = computed(() => {
  const result = athletes.value.filter(athlete => {
    const matchesSex = filters.sexFilter.value ? athlete.sex === filters.sexFilter.value : true
    const matchesDivision = filters.divisionFilter.value ? athlete.division === filters.divisionFilter.value : true
    const matchesWeightClass = filters.weightClassFilter.value.weight
      ? athlete.weightClass === filters.weightClassFilter.value.weight && athlete.sex === filters.weightClassFilter.value.sex
      : true
    return matchesSex && matchesDivision && matchesWeightClass
  })

  return result.slice(0, visibleCount.value) // only show up to visibleCount
})

const headers = [
  { title: "#", value: "#", sortable: true },
  { title: "Name", value: "fullName" },
  { 
    title: "Class", 
    value: "weightClass", 
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
  { title: "Sex", value: "sex" },
  { title: "Division", value: "division" },
  { title: "Squat", value: "bestSquat", sortable: true },
  { title: "Bench", value: "bestBench", sortable: true },
  { title: "Deadlift", value: "bestDead", sortable: true },
  { title: "Total", value: "total", sortable: true },
  { title: "GL", value: "gl", sortable: true },
]
</script>
