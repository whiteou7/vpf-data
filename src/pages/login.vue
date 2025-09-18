<template>
  <div class="min-h-screen py-5 md:py-10">
    <v-card max-width="500" class="mx-4 mx-md-auto">
      <v-card-text>
        <v-form @submit.prevent="handleLogin">
          <!-- Email field -->
          <v-text-field
            v-model="email"
            variant="outlined"
            density="compact"
            label="Email"
            type="email"
            required
            prepend-inner-icon="mdi-email-outline"
          />

          <!-- Password field with toggle -->
          <v-text-field
            v-model="password"
            variant="outlined"
            density="compact"
            :type="showPassword ? 'text' : 'password'"
            label="Password"
            required
            prepend-inner-icon="mdi-lock-outline"
            :append-inner-icon="showPassword ? 'mdi-eye-off' : 'mdi-eye'"
            @click:append-inner="togglePassword"
          />

          <!-- Login button -->
          <v-btn type="submit" color="primary" variant="tonal" block>
            Log in
          </v-btn>
        </v-form>
        <div class="text-center mt-4">
          <NuxtLink to="/register" class="text-sm">
            Don't have an account? Register
          </NuxtLink>
        </div>
      </v-card-text>
    </v-card>
    <v-snackbar
      v-model="snackbar"
      :color="snackbarColor"
      timeout="3000"
      :location="snackbarLocation"
      variant="tonal"
    >
      {{ snackbarText }}
    </v-snackbar>
  </div>
</template>

<script setup lang="ts">
import { ref, computed } from "vue"
import { useAuth } from "~/composables/useAuth"
import { useRouter } from "vue-router"
import { useDisplay } from "vuetify"

const email = ref("")
const password = ref("")
const showPassword = ref(false)
const snackbar = ref(false)
const snackbarText = ref("")
const snackbarColor = ref("error")

const { login } = useAuth()
const router = useRouter()
const { smAndDown } = useDisplay()

const snackbarLocation = computed(() => smAndDown.value ? "bottom" : "top")

const togglePassword = () => {
  showPassword.value = !showPassword.value
}

const handleLogin = async () => {
  const response = await login(email.value, password.value)
  if (response.success) {
    router.push("/")
  } else {
    snackbarText.value = response.message || "An unknown error occurred."
    snackbar.value = true
  }
}
</script>
