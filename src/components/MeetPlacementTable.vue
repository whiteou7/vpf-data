<script setup lang="ts">
import BaseTable from "./BaseTable.vue"
    
</script>
    
<template>
    <BaseTable
    >
    <template #top>
        <slot name="top" />
    </template>
    </BaseTable>
</template>

<style scoped>
/* all these just to set a sticky column*/

/* Target the 3rd column of v-data-table */
::v-deep(.v-data-table__th:nth-child(3)),
::v-deep(.v-data-table__td:nth-child(3)) {
    position: sticky;
    left: 0;
    z-index: 1 !important;
    min-width: 150px;
}

:deep(.v-table__wrapper > table > thead > tr > th) {
    z-index: 0 !important;
}

:deep(.v-data-table__td:nth-child(3)) {
    white-space: normal !important;
}

/* Odd rows */
::v-deep(.v-data-table__tr:nth-child(odd) > .v-data-table__td:nth-child(3)) {
    background-color: #272727;
}

::v-deep(.v-data-table__tr:nth-child(odd)) {
    background-color: #272727;
}

/* Even rows */
::v-deep(.v-data-table__tr:nth-child(even) > .v-data-table__td:nth-child(3)) {
    background-color: rgb(var(--v-theme-surface));
}

::v-deep(.v-data-table__tr:nth-child(even)) {
    background-color: rgb(var(--v-theme-surface));
}
</style>
