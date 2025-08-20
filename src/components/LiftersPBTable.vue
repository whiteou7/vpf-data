<!-- eslint-disable vue/valid-v-slot -->
<template>
  <v-data-table
    fixed-header
    hide-default-footer
    height="600"
    :headers="headers"
    :items="filteredLifters"
    density="compact"
    items-per-page="-1"
    :search="search"
    striped="odd"
    :loading="loading"
    hover
  >
    <template #top>
      <slot name="top" />
    </template>
    <template #loading>
      <v-skeleton-loader type="table-row@10"/>
    </template>
    <template #item.full_name="{ item }">
      <NuxtLink :to="`/lifter/${item.athlete_id}`" class="hover:underline">
        {{ item.full_name }}
      </NuxtLink>
    </template>
    <template #item.sex="{ item }">
      {{ item.sex === 'male' ? 'M' : item.sex === 'female' ? 'F' : item.sex }}
    </template>
    <template #item.division="{ item }">
      {{ divisionMap[item.division] ?? item.division }}
    </template>
    <template #item.weight_class="{ item }">
      {{ getWeightClassDisplay(item.weight_class, item.sex as Sex) }}
    </template>
    <template #item.best_squat="{ item }">
      <span class="text-yellow-400 font-semibold">{{ item.best_squat }}</span>
    </template>
    <template #item.best_bench="{ item }">
      <span class="text-cyan-400 font-semibold">{{ item.best_bench }}</span>
    </template>
    <template #item.best_dead="{ item }">
      <span class="text-purple-400 font-semibold">{{ item.best_dead }}</span>
    </template>
  </v-data-table>
</template>
<script setup lang="ts">
import type { LifterResult, Sex } from "~/types/lifter"
import { divisionMap } from "~/utils/mappings"
// eslint-disable-next-line @typescript-eslint/no-unused-vars
const props = defineProps<{
  filteredLifters: LifterResult[]
  search: string
  loading: boolean
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  headers: any[]
}>()
</script>