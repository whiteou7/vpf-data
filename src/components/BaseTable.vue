<!-- eslint-disable vue/valid-v-slot -->
<template>
  <v-data-table
    items-per-page="-1"
    fixed-header
    hide-default-footer
    density="compact"
    striped="odd"
    class="rounded-lg bold-header-no-wrap-no-cursor"
    @click:row="rowClick"
  >
    <template #top>
      <slot name="top" />
    </template>
    <template #loading>
      <v-skeleton-loader type="table-row@10"/>
    </template>
    <template #item.fullName="{ item }">
      <NuxtLink :to="`/athlete/${item.vpfId}`" class="hover:text-red-500 active:text-red-500">
        {{ item.fullName }}
      </NuxtLink>
    </template>

    <template #item.meetName="{ item }">
      <NuxtLink :to="`/meet/${item.slug}`" class="hover:underline text-primary">
        {{ item.meetName }}
      </NuxtLink>
    </template>

    <template #item.mediaLink="{ item }">
      <a v-if="item.mediaLink" :href="item.mediaLink" target="_blank">
        <v-icon icon="mdi-folder-outline"/>
      </a>
      <a v-else class="cursor-not-allowed">
        <v-icon icon="mdi-folder-off-outline" color="grey"/>
      </a>

    </template>

    <template #item.sex="{ item }">
      {{ item.sex === 'male' ? 'M' : item.sex === 'female' ? 'F' : item.sex }}
    </template>
    <template #item.division="{ item }">
      {{ divisionMap[item.division] ?? item.division }}
    </template>
    <template #item.weightClass="{ item }">
      {{ getWeightClassDisplay(item.weightClass, item.sex as Sex) }}
    </template>
    <template #item.bestSquat="{ item }">
      <span class="text-yellow-400 font-semibold">{{ item.bestSquat !== null && item.bestSquat !== undefined ? item.bestSquat : item.squatPb }}</span>
    </template>
    <template #item.bestBench="{ item }">
      <span class="text-cyan-400 font-semibold">{{ item.bestBench !== null && item.bestBench !== undefined ? item.bestBench : item.benchPb }}</span>
    </template>
    <template #item.bestDead="{ item }">
      <span class="text-purple-400 font-semibold">{{ item.bestDead !== null && item.bestDead !== undefined ? item.bestDead : item.deadliftPb }}</span>
    </template>

    <template #item.squat1="{ item }">
      <span :class="item.squat1 <= 0 ? 'text-error' : 'text-success'">{{ item.squat1 }}</span>
    </template>
    <template #item.squat2="{ item }">
      <span :class="item.squat2 <= 0 ? 'text-error' : 'text-success'">{{ item.squat2 }}</span>
    </template>
    <template #item.squat3="{ item }">
      <span :class="item.squat3 <= 0 ? 'text-error' : 'text-success'">{{ item.squat3 }}</span>
    </template>

    <template #item.bench1="{ item }">
      <span :class="item.bench1 <= 0 ? 'text-error' : 'text-success'">{{ item.bench1 }}</span>
    </template>
    <template #item.bench2="{ item }">
      <span :class="item.bench2 <= 0 ? 'text-error' : 'text-success'">{{ item.bench2 }}</span>
    </template>
    <template #item.bench3="{ item }">
      <span :class="item.bench3 <= 0 ? 'text-error' : 'text-success'">{{ item.bench3 }}</span>
    </template>

    <template #item.dead1="{ item }">
      <span :class="item.dead1 <= 0 ? 'text-error' : 'text-success'">{{ item.dead1 }}</span>
    </template>
    <template #item.dead2="{ item }">
      <span :class="item.dead2 <= 0 ? 'text-error' : 'text-success'">{{ item.dead2 }}</span>
    </template>
    <template #item.dead3="{ item }">
      <span :class="item.dead3 <= 0 ? 'text-error' : 'text-success'">{{ item.dead3 }}</span>
    </template>
  </v-data-table>
</template>
<script setup lang="ts">
import type { Sex } from "~/types/athlete"
import { divisionMap } from "~/utils/mappings"

let currentRow = null

// Change the bg of clicked row
const rowClick = (row) => { 
  const tr = row.target.closest("tr")

  // Remove the effect if clicking on the same row
  if (currentRow === tr) {
    tr.bgColor = null
    currentRow = null
    return
  }
  
  // Clear previous row if it exists
  if (currentRow) {
    currentRow.bgColor = null
  }

  // Set new row
  currentRow = tr
  tr.bgColor = "#303030"
}
</script>
<style>
.bold-header-no-wrap-no-cursor .v-data-table__th {
  font-weight: bold !important;
}
.bold-header-no-wrap-no-cursor .v-data-table__td {
  white-space: nowrap;
}
.bold-header-no-wrap-no-cursor .v-data-table__tr--clickable {
  cursor: auto !important;
}
</style>