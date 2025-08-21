<script setup lang="ts">
import BaseTable from "./BaseTable.vue"

</script>

<template>
  <BaseTable
    height="600"
  >
    <template #top>
      <slot name="top" />
    </template>
  </BaseTable>
</template>
