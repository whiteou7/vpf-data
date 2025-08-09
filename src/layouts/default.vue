<template>
  <v-app>
    <!-- App Bar -->
    <v-app-bar
      color="surface"
      dark
      app
      elevation="1"
    >
      <!-- Logo with Image -->
      <v-img
        src="/logo.jpg"
        cover
        class="diagonal-blur-image"
        height="100%"
      />

      <v-spacer/>

      <!-- Desktop Navigation -->
      <div class="d-none d-md-flex align-center">
        <v-btn
          v-for="item in navigationItems"
          :key="item.name"
          :to="item.path"
          text
          color="secondary"
          class="mx-1"
          :class="{ 'v-btn--active': $route.path === item.path }"
        >
          {{ item.name }}
        </v-btn>
      </div>

      <!-- Mobile Menu Button -->
      <v-app-bar-nav-icon
        class="d-md-none"
        color="secondary"
        @click="drawer = !drawer"
      />
    </v-app-bar>

    <!-- Mobile Navigation Drawer -->
    <v-navigation-drawer
      v-model="drawer"
      temporary
      location="right"
      color="surface"
      dark
    >
      <v-list nav>
        <v-list-item
          v-for="item in navigationItems"
          :key="item.name"
          :to="item.path"
          @click="drawer = false"
        >
          <v-list-item-title class="text-secondary">
            {{ item.name }}
          </v-list-item-title>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <!-- Main Content -->
    <v-main>
      <v-container fluid class="pa-0">
        <slot />
      </v-container>
    </v-main>
  </v-app>
</template>

<script setup>
import { ref } from "vue"

// Mobile drawer state
const drawer = ref(false)

// Navigation items
const navigationItems = [
  { name: "Rankings", path: "/" },
  { name: "Records", path: "/records" },
  { name: "Meets", path: "/meets" },
  { name: "Shop", path: "/shop" },
  { name: "Contact", path: "/contact" }
]

// Close drawer when route changes
const route = useRoute()
watch(() => route.path, () => {
  drawer.value = false
})
</script>

<style scoped>
.diagonal-blur-image {
  mask: linear-gradient(135deg, black 60%, transparent 100%);
  -webkit-mask: linear-gradient(135deg, black 60%, transparent 100%);
}

</style>