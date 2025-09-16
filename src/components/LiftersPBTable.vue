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
