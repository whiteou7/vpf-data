<template>
  <div class="records-division-group">
    <h2 class="text-primary division-title sticky-header">{{ title }}</h2>
    
    <div class="records-tables-grid">
      <div class="records-table-item">
        <h4>Squat</h4>
        <div class="table-wrapper">
          <RecordsTable :loading="loading" :items="items.squat || []"/>
        </div>
      </div>
      
      <div class="records-table-item">
        <h4>Bench Press</h4>
        <div class="table-wrapper">
          <RecordsTable :loading="loading" :items="items.bench || []"/>
        </div>
      </div>
      
      <div class="records-table-item">
        <h4>Deadlift</h4>
        <div class="table-wrapper">
          <RecordsTable :loading="loading" :items="items.deadlift || []"/>
        </div>
      </div>
      
      <div class="records-table-item">
        <h4>Total</h4>
        <div class="table-wrapper">
          <RecordsTable :loading="loading" :items="items.total || []"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import type { RecordTableRowGroup } from "~/types/record"

type DivisionKey = keyof RecordTableRowGroup

defineProps<{ 
  items: RecordTableRowGroup[DivisionKey]
  loading: boolean
  title: string
}>()
</script>

<style scoped>
.records-division-group {
  background: rgba(255,255,255,0.03);
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px 0 rgba(0,0,0,0.04);
  padding: 1rem;
  width: 100%;
  display: flex;
  flex-direction: column;
  min-height: 0;
  flex: 1;
  overflow: hidden;
}

.division-title {
  margin-bottom: 0.75rem;
  flex-shrink: 0;
}

.records-tables-grid {
  display: flex;
  flex-direction: column;
  flex: 1;
  min-height: 0;
}

.records-table-item {
  width: 100%;
  display: flex;
  flex-direction: column;
  min-height: 0;
}

.records-table-item h4 {
  margin: 0.5rem 0 0.5rem 0;
  flex-shrink: 0;
}

.table-wrapper {
  flex: 1;
  min-height: 0;
  overflow-y: auto;
}

/* Landscape orientation: 2x2 grid */
@media screen and (orientation: landscape) {
  .records-division-group {
    padding: 0.75rem;
  }
  
  .division-title {
    margin-bottom: 0.5rem;
    font-size: 1.25rem;
  }
  
  .records-tables-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: 1fr 1fr;
    column-gap: 0.75rem;
    row-gap: 0;
    height: 100%;
  }
  
  .records-table-item {
    width: auto;
    height: 100%;
  }
  
  .records-table-item h4 {
    margin: 0.25rem 0 0.25rem 0;
    font-size: 0.9rem;
  }
}
</style>