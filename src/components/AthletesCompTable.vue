<script setup lang="ts">
import BaseTable from "./BaseTable.vue"

const height = ref(window.innerHeight - 200)

const updateHeight = () => {
  height.value = window.innerHeight - 200
}

onMounted(() => {
  window.addEventListener("resize", updateHeight)
})

onUnmounted(() => {
  window.removeEventListener("resize", updateHeight)
})

</script>

<template>
  <BaseTable
    :height="height"
  >
    <template #top>
      <slot name="top" />
    </template>
  </BaseTable>
</template>

<style scoped>
/* all these just to set a sticky column*/

/* Target the 2nd column of v-data-table */
::v-deep(.v-data-table__th:nth-child(2)),
::v-deep(.v-data-table__td:nth-child(2)) {
  position: sticky;
  left: 0;
  z-index: 1 !important;
  min-width: 100px;
}

:deep(.v-table__wrapper > table > thead > tr > th) {
  z-index: 0 !important;
}

:deep(.v-data-table__td:nth-child(2)) {
  white-space: normal !important;
}

/* Odd rows */
::v-deep(.v-data-table__tr:nth-child(odd) > .v-data-table__td:nth-child(2)) {
  background-color: #272727;
}

::v-deep(.v-data-table__tr:nth-child(odd)) {
  background-color: #272727;
}

/* Even rows */
::v-deep(.v-data-table__tr:nth-child(even) > .v-data-table__td:nth-child(2)) {
  background-color: rgb(var(--v-theme-surface));
}

::v-deep(.v-data-table__tr:nth-child(even)) {
  background-color: rgb(var(--v-theme-surface));
}
</style>
