<template>
  <div class="records-grid">

    <!-- MEN – OPEN -->
    <div class="records-column">
      <h2 class="text-primary">Men Open Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.open.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.open.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.open.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.open.total || []"/>
    </div>

    <!-- MEN – JUNIOR -->
    <div class="records-column">
      <h2 class="text-primary">Men Junior Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.jr.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.jr.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.jr.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.jr.total || []"/>
    </div>

    <!-- MEN – SUB JUNIOR -->
    <div class="records-column">
      <h2 class="text-primary">Men Sub-Junior Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.subjr.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.subjr.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.subjr.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.subjr.total || []"/>
    </div>

    <!-- MEN – MASTER I -->
    <div class="records-column">
      <h2 class="text-primary">Men Master I Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.mas1.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.mas1.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.mas1.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.mas1.total || []"/>
    </div>

    <!-- MEN – MASTER II -->
    <div class="records-column">
      <h2 class="text-primary">Men Master II Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.mas2.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.mas2.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.mas2.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.mas2.total || []"/>
    </div>

    <!-- MEN – MASTER III -->
    <div class="records-column">
      <h2 class="text-primary">Men Master III Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.mas3.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.mas3.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.mas3.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.mas3.total || []"/>
    </div>

    <!-- MEN – MASTER IV -->
    <div class="records-column">
      <h2 class="text-primary">Men Master IV Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.male.mas4.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.male.mas4.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.male.mas4.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.male.mas4.total || []"/>
    </div>

    <!-- WOMEN – OPEN -->
    <div class="records-column">
      <h2 class="text-primary">Women Open Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.open.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.open.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.open.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.open.total || []"/>
    </div>

    <!-- WOMEN – JUNIOR -->
    <div class="records-column">
      <h2 class="text-primary">Women Junior Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.jr.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.jr.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.jr.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.jr.total || []"/>
    </div>

    <!-- WOMEN – SUB JUNIOR -->
    <div class="records-column">
      <h2 class="text-primary">Women Sub-Junior Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.subjr.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.subjr.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.subjr.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.subjr.total || []"/>
    </div>

    <!-- WOMEN – MASTER I -->
    <div class="records-column">
      <h2 class="text-primary">Women Master I Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.mas1.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.mas1.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.mas1.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.mas1.total || []"/>
    </div>

    <!-- WOMEN – MASTER II -->
    <div class="records-column">
      <h2 class="text-primary">Women Master II Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.mas2.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.mas2.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.mas2.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.mas2.total || []"/>
    </div>

    <!-- WOMEN – MASTER III -->
    <div class="records-column">
      <h2 class="text-primary">Women Master III Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.mas3.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.mas3.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.mas3.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.mas3.total || []"/>
    </div>

    <!-- WOMEN – MASTER IV -->
    <div class="records-column">
      <h2 class="text-primary">Women Master IV Records</h2>

      <h4>Squat</h4>
      <RecordsTable :loading="loading" :items="items.female.mas4.squat || []"/>
      <h4>Bench Press</h4>
      <RecordsTable :loading="loading" :items="items.female.mas4.bench || []"/>
      <h4>Deadlift</h4>
      <RecordsTable :loading="loading" :items="items.female.mas4.deadlift || []"/>
      <h4>Total</h4>
      <RecordsTable :loading="loading" :items="items.female.mas4.total || []"/>
    </div>

  </div>
</template>

<script setup lang="ts">
import type { RecordTableRowGroup } from "~/types/record"
defineProps<{ items: { male: RecordTableRowGroup; female: RecordTableRowGroup }; loading: boolean }>()
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