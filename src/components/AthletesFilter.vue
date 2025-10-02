<template>
  <div style="display: flex; flex-wrap: wrap; gap: 1rem; padding: 0 1rem; margin: 0.5rem 0;">
    <div style="flex: 1; min-width: 150px; max-width: 200px; height: 36px;">
      <v-text-field
        v-model="searchText"
        density="compact"
        label="Search athlete"
        color="primary"
        variant="solo-inverted"
        @input="onInput"
      />
    </div>

    <div style="flex: 1; min-width: 75px; max-width: 200px; height: 36px;">
      <v-select
        v-model="filters.sexFilter.value"
        :items="filters.sexOptions"
        label="Sex"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div style="flex: 1; min-width: 75px; max-width: 200px; height: 36px;">
      <v-select
        v-model="filters.divisionFilter.value"
        :items="filters.divisionOptions"
        label="Division"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div style="flex: 1; min-width: 75px; max-width: 200px; height: 36px;">
      <v-select
        v-model="filters.weightClassFilter.value"
        :items="filters.weightClassOptions"
        label="Weight Class"
        density="compact"
        color="primary"
        variant="solo-inverted"
      />
    </div>

    <div style="flex: 1; min-width: 75px; max-width: 200px; height: 36px;">
      <slot name="meetTypeFilter"/>
    </div>
  </div>
</template>

<script setup lang="ts">
import { useAthletesFilter } from "~/composables/useAthletesFilter"
import debounce from "lodash.debounce"

const filters = useAthletesFilter()
const searchText = ref<string>("")

const onInput = debounce(() => {
  filters.search.value = searchText.value
}, 500)

</script>
