<template>
  <div class="flex flex-wrap gap-8 records-grid">
    <div class="records-column">
      <h2 class="text-xl font-semibold text-primary">Squat</h2>
      <h4 class="text-base font-medium text-primary">Sub Junior</h4>
      <RecordsTable :loading="loading" :items="items.squat.subjr || []"/>
      <h4 class="text-base font-medium text-primary">Junior</h4>
      <RecordsTable :loading="loading" :items="items.squat.jr || []"/>
      <h4 class="text-base font-medium text-primary">Open</h4>
      <RecordsTable :loading="loading" :items="items.squat.open || []"/>
      <h4 class="text-base font-medium text-primary">Masters</h4>
      <RecordsTable :loading="loading" :items="items.squat.mas || []"/>
    </div>
    
    <div class="records-column">
      <h2 class="text-xl font-semibold text-primary">Bench</h2>
      <h4 class="text-base font-medium text-primary">Sub Junior</h4>
      <RecordsTable :loading="loading" :items="items.bench.subjr || []"/>
      <h4 class="text-base font-medium text-primary">Junior</h4>
      <RecordsTable :loading="loading" :items="items.bench.jr || []"/>
      <h4 class="text-base font-medium text-primary">Open</h4>
      <RecordsTable :loading="loading" :items="items.bench.open || []"/>
      <h4 class="text-base font-medium text-primary">Masters</h4>
      <RecordsTable :loading="loading" :items="items.bench.mas || []"/>
    </div>
    
    <div class="records-column">
      <h2 class="text-xl font-semibold text-primary">Deadlift</h2>
      <h4 class="text-base font-medium text-primary">Sub Junior</h4>
      <RecordsTable :loading="loading" :items="items.deadlift.subjr || []"/>
      <h4 class="text-base font-medium text-primary">Junior</h4>
      <RecordsTable :loading="loading" :items="items.deadlift.jr || []"/>
      <h4 class="text-base font-medium text-primary">Open</h4>
      <RecordsTable :loading="loading" :items="items.deadlift.open || []"/>
      <h4 class="text-base font-medium text-primary">Masters</h4>
      <RecordsTable :loading="loading" :items="items.deadlift.mas || []"/>
    </div>
    
    <div class="records-column">
      <h2 class="text-xl font-semibold text-primary">Total</h2>
      <h4 class="text-base font-medium text-primary">Sub Junior</h4>
      <RecordsTable :loading="loading" :items="items.total.subjr || []"/>
      <h4 class="text-base font-medium text-primary">Junior</h4>
      <RecordsTable :loading="loading" :items="items.total.jr || []"/>
      <h4 class="text-base font-medium text-primary">Open</h4>
      <RecordsTable :loading="loading" :items="items.total.open || []"/>
      <h4 class="text-base font-medium text-primary">Masters</h4>
      <RecordsTable :loading="loading" :items="items.total.mas || []"/>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { RecordTableRowGroup } from "~/types/record"

defineProps<{
  items: RecordTableRowGroup
  loading: boolean
}>()
</script>

<style scoped>
.records-grid {
  /* Default: 1 column (portrait) */
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.records-column {
  background: rgba(255,255,255,0.03);
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px 0 rgba(0,0,0,0.04);
  padding: 1rem;
  width: 100%;
}

.records-grid h2 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.records-grid h4 {
  margin: 0.5rem 0 0.2rem 0;
}

/* Landscape orientation: 2 columns */
@media screen and (orientation: landscape) {
  .records-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
  }
  
  .records-column {
    width: auto;
  }
}

</style>