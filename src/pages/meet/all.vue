<template>
  <div class="min-h-screen py-5 md:py-10">
    <div class="max-w-[95%] mx-auto rounded-lg">
      <BaseTable
        :items="filteredMeets"
        :headers="headers"
        :loading="loading"
      >
        <template #top>
          <div class="flex flex-wrap gap-4 px-4 my-2">
            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="cityFilter"
                :items="cityOptions"
                label="City"
                density="compact"
                color="primary"
                variant="solo-inverted"
              />
            </div>
            <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
              <v-select
                v-model="yearFilter"
                :items="yearOptions"
                label="Year"
                density="compact"
                color="primary"
                variant="solo-inverted"
              />
            </div>
          </div>
        </template>
      </BaseTable>
    </div>
  </div>
</template>

<script setup lang="ts">
import BaseTable from "~/components/BaseTable.vue"
import type { Meet } from "~/types/meet"

// Fetch all meet
import type { APIBody } from "~/types/api"

const meets = ref<Meet[]>([])
const loading = ref(true)
const cityFilter = ref<string | null>(null)
const yearFilter = ref<number | null>(null)

onMounted(async () => {
  const response = await $fetch<APIBody<{ meets: Meet[] }>>("/api/all-meet")

  if (!response.success) {
    // TODO: Handle error
    return
  }

  loading.value = false
  meets.value = response.data?.meets ?? []
})

// Auto generated items for filter buttons
const cityOptions = computed<{ title: string, value: string | null }[]>(() => {
  const cities = new Set<string | null>(meets.value.map(meet => meet.city))
  const options: { title: string, value: string | null }[] = [{ title: "All", value: null }]
  cities.forEach(city => options.push({ title: city ?? " ", value: city }))
  return options
})

const yearOptions = computed<{ title: string, value: number | null }[]>(() => {
  const years = new Set(meets.value.map(meet => new Date(meet.host_date).getFullYear()))
  const options: { title: string, value: number | null }[] = [{ title: "All", value: null }]
  years.forEach(year => options.push({ title: year.toString(), value: year }))
  return options
})

const filteredMeets = computed(() => {
  return meets.value.filter(meet => {
    const matchesCity = cityFilter.value ? meet.city === cityFilter.value : true
    const matchesYear = yearFilter.value ? new Date(meet.host_date).getFullYear() === yearFilter.value : true
    return matchesCity && matchesYear
  })
})

// Table header config
const headers = [
  { title: "Date", value: "host_date", sortable: false },
  { title: "City", value: "city", sortable: false },
  { title: "Name", value: "name", key: "meet_name", sortable: false },
  { title: "Athletes", value: "count" },
  { title: "Media", value: "media_link", sortable: false }
]
</script>

<style>
</style>
