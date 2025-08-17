<template>
  <div class="flex flex-wrap gap-4 px-4 my-2">
    <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
      <v-text-field
        v-model="filters.search.value"
        density="compact"
        label="Search lifters"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
      <v-select
        v-model="filters.sexFilter.value"
        :items="filters.sexOptions"
        label="Sex"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
      <v-select
        v-model="filters.divisionFilter.value"
        :items="filters.divisionOptions"
        label="Division"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div class="flex-1 min-w-[100px] max-w-[200px] h-9">
      <v-select
        v-model="filters.weightClassFilter.value"
        :items="filters.weightClassOptions"
        label="Weight Class"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import { useLiftersFilter } from "~/composables/useLiftersFilter"

const filters = useLiftersFilter()

</script>
