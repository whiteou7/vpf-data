<!-- eslint-disable vue/valid-v-slot -->
<template>
  <v-data-table
    items-per-page="-1"
    fixed-header
    hide-default-footer
    density="compact"
    class="rounded-lg bold-header-no-wrap-no-cursor"
    @click:row="rowClick"
  >
    <template #top>
      <slot name="top" />
    </template>
    <template #loading>
      <v-skeleton-loader type="table-row@10"/>
    </template>
    <template #item.bodyWeight="{ item }">
      {{ item.bodyWeight == 0 ? "-" : formatFloat(item.bodyWeight) }}
    </template>
    <template #item.yearOfBirth="{ item }">
      {{ item.yearOfBirth == 0 ? "-" : item.yearOfBirth }}
    </template>
    <template #item.result="{ item }">
      {{ item.result == 0 ? "-" : formatFloat(item.result) }}
    </template>
    <template #item.rank="{ item }">
      <v-tooltip :text="'This result was achieved on ' + new Date(item.date).toLocaleDateString('en-GB').slice(0, 10)">
        <template #activator="{ props }">
          {{ item.rank }}<sup v-bind="props" style="font-style: italic;">{{ item.new ? "new" : "" }}</sup>
        </template>
      </v-tooltip>
      
    </template>

    <!-- Links config -->
    <template #item.fullName="{ item }">
      <NuxtLink
        v-if="item.slug"
        :to="`/athlete/${item.slug}`"
        class="athlete-link gradient-name"
        style="margin-right: 3px"
        :style="
          item.decorator_1 && item.decorator_2
            ? { '--c1': item.decorator_1, '--c2': item.decorator_2 }
            : {}
        "
      >
        {{ item.fullName }}
      </NuxtLink>
      <span
        v-else
        :style="
          item.decorator_1 && item.decorator_2
            ? { '--c1': item.decorator_1, '--c2': item.decorator_2 }
            : {}
        "
      > {{ item.fullName }} </span>

      <v-icon-btn
        v-if="item.instagramUsername"
        size="small"
        variant="plain"
        icon="mdi-instagram"
        style="margin-bottom: 3px; width: var(--v-icon-btn-width) - 1px;"
        @click="routeInstagram(item.instagramUsername)"
      />
    </template>

    <template #item.meetName="{ item }">
      <NuxtLink :to="`/competition/${item.meetSlug}`" class="meet-link">
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

    <!-- Gender/Division/WC display config -->
    <template #item.sex="{ item }">
      {{ item.sex === 'male' ? 'M' : item.sex === 'female' ? 'F' : item.sex }}
    </template>

    <template #item.division="{ item }">
      {{ divisionMap[item.division] ?? item.division }}
    </template>

    <template #item.placement="{ item }">
      {{ item.placement == null ? "-" : item.placement }}
    </template>

    <template #item.weightClass="{ item }">
      {{ getWeightClassDisplay(item.weightClass, item.sex as Sex) }}
    </template>

    <!-- SBD Coloring config-->
    <template #item.bestSquat="{ item }">
      <span style="color: #facc15; font-weight: 600;">{{ item.bestSquat !== null && item.bestSquat !== undefined ? formatFloat(item.bestSquat) : formatFloat(item.squatPb) }}</span>
    </template>
    <template #item.bestBench="{ item }">
      <span style="color: #22d3ee; font-weight: 600;">{{ item.bestBench !== null && item.bestBench !== undefined ? formatFloat(item.bestBench) : formatFloat(item.benchPb) }}</span>
    </template>
    <template #item.bestDead="{ item }">
      <span style="color: #c084fc; font-weight: 600;">{{ item.bestDead !== null && item.bestDead !== undefined ? formatFloat(item.bestDead) : formatFloat(item.deadliftPb) }}</span>
    </template>

    <template #item.total="{ item }">
      {{ formatFloat(item.total) }}
    </template>
    <template #item.gl="{ item }">
      {{ formatFloat(item.gl) }}
    </template>

    <template #item.squat1="{ item }">
      <span :class="item.squat1 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.squat1) }}</span>
    </template>
    <template #item.squat2="{ item }">
      <span :class="item.squat2 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.squat2) }}</span>
    </template>
    <template #item.squat3="{ item }">
      <span :class="item.squat3 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.squat3) }}</span>
    </template>

    <template #item.bench1="{ item }">
      <span :class="item.bench1 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.bench1) }}</span>
    </template>
    <template #item.bench2="{ item }">
      <span :class="item.bench2 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.bench2) }}</span>
    </template>
    <template #item.bench3="{ item }">
      <span :class="item.bench3 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.bench3) }}</span>
    </template>

    <template #item.dead1="{ item }">
      <span :class="item.dead1 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.dead1) }}</span>
    </template>
    <template #item.dead2="{ item }">
      <span :class="item.dead2 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.dead2) }}</span>
    </template>
    <template #item.dead3="{ item }">
      <span :class="item.dead3 <= 0 ? 'text-error' : 'text-success'">{{ formatFloat(item.dead3) }}</span>
    </template>
  </v-data-table>
</template>
<script setup lang="ts">
import type { Sex } from "~/types/athlete"
import { divisionMap } from "~/utils/mappings"

function formatFloat(value: string | number): string {
  if (typeof value == "string") return value
  const n = Number(value)
  if (!Number.isFinite(n)) return "000.00"

  return n.toFixed(2)
}

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

const routeInstagram = (username: string) => {
  window.open(`https://instagram.com/${username}`)
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
.athlete-link {
  text-decoration: none;
  color: inherit;
}
.athlete-link:hover,
.athlete-link:active {
  color: rgb(var(--v-theme-primary));
}
.meet-link {
  text-decoration: none;
  color: rgb(var(--v-theme-primary))
}
.gradient-name:not(:hover):not(:active)[style*="--c1"][style*="--c2"] {
  color: transparent;
  -webkit-background-clip: text;
  background-clip: text;
  background-image: linear-gradient(to right, var(--c1), var(--c2)) !important;
}

</style>