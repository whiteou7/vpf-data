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
        <template v-for="item in navigationItems" :key="item.name">
          <!-- External Link -->
          <v-btn
            v-if="item.external"
            :href="item.path"
            target="_blank"
            rel="noopener"
            text
            color="secondary"
            class="mx-1"
          >
            {{ item.name }}
          </v-btn>

          <!-- Internal Link -->
          <v-btn
            v-else
            :to="item.path"
            text
            color="secondary"
            class="mx-1"
            :class="{ 'v-btn--active': $route.path === item.path }"
          >
            {{ item.name }}
          </v-btn>
        </template>

        <!-- Rendered depending on logged in state -->
        <ClientOnly>
          <template v-if="!isLoggedIn">
            <v-btn to="/login" text color="secondary" class="mx-1">
              Login
            </v-btn>
          </template>
          <template v-else>
            <v-btn text color="secondary" class="mx-1" :to="`/athlete/${user.vpfId}`">
              Profile
            </v-btn>
            <v-btn text color="secondary" class="mx-1" @click="handleLogout">
              Logout
            </v-btn>
          </template>
        </ClientOnly>
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
        <template v-for="item in navigationItems" :key="item.name">
          <!-- External Link -->
          <v-list-item
            v-if="item.external"
            :href="item.path"
            target="_blank"
            rel="noopener"
            @click="drawer = false"
          >
            <v-list-item-title class="text-secondary">
              {{ item.name }}
            </v-list-item-title>
          </v-list-item>

          <!-- Internal Link -->
          <v-list-item
            v-else
            :to="item.path"
            @click="drawer = false"
          >
            <v-list-item-title class="text-secondary">
              {{ item.name }}
            </v-list-item-title>
          </v-list-item>
        </template>
        <!-- Rendered depending on logged in state -->
        <ClientOnly>
          <template v-if="!isLoggedIn">
            <v-list-item to="/login" @click="drawer = false">
              <v-list-item-title class="text-secondary">Login</v-list-item-title>
            </v-list-item>
          </template>
          <template v-else>
            <v-list-item :to="`/athlete/${user.vpfId}`" @click="drawer = false">
              <v-list-item-title class="text-secondary">Profile</v-list-item-title>
            </v-list-item>
            <v-list-item @click="handleLogout">
              <v-list-item-title class="text-secondary">Logout</v-list-item-title>
            </v-list-item>
          </template>
        </ClientOnly>
      </v-list>
    </v-navigation-drawer>

    <!-- Main Content -->
    <v-main>
      <v-container fluid class="pa-0">
        <slot />
      </v-container>
    </v-main>
    <v-snackbar
      v-model="snackbar"
      :color="snackbarColor"
      timeout="3000"
      :location="top"
      variant="tonal"
    >
      {{ snackbarText }}
    </v-snackbar>
  </v-app>
</template>

<script setup>
import { ref, watch, onMounted } from "vue"
import { useAuth } from "~/composables/useAuth"

const { isLoggedIn, user, logout, validate } = useAuth()
const router = useRouter()

const snackbar = ref(false)
const snackbarText = ref("")
const snackbarColor = ref("error")

onMounted(async () => {
  await validate()
})

const handleLogout = async () => {
  const { success, message } = await logout()
  if (!success) {
    snackbarText.value = message || "An unknown error occurred."
    snackbar.value = true
    return
  } else {
    router.push("/login")
  }
}

// Mobile drawer state
const drawer = ref(false)

// Get public runtime config
const config = useRuntimeConfig()
const SHOP_URL = config.public.SHOP_URL

// Navigation items
const navigationItems = [
  { name: "Rankings", path: "/" },
  { name: "Records", path: "/records" },
  { name: "Meets", path: "/meet/all" },
  { name: "Shop", path: SHOP_URL, external: true },
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
