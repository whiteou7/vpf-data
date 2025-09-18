<template>
  <div class="min-h-screen py-5 md:py-10">
    <v-card max-width="500" class="mx-4 mx-md-auto">
      <v-card-text>
        <v-form @submit.prevent="handleRegister">
          <!-- Full Name field -->
          <v-text-field
            v-model="fullName"
            variant="outlined"
            density="compact"
            label="Full Name"
            type="text"
            required
            prepend-inner-icon="mdi-account-outline"
          />

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

          <!-- Confirm Password field with toggle -->
          <v-text-field
            v-model="confirmPassword"
            variant="outlined"
            density="compact"
            :type="showPassword ? 'text' : 'password'"
            label="Confirm Password"
            required
            prepend-inner-icon="mdi-lock-outline"
            :append-inner-icon="showPassword ? 'mdi-eye-off' : 'mdi-eye'"
            @click:append-inner="togglePassword"
          />

          <!-- Register button -->
          <v-btn type="submit" color="primary" variant="tonal" block>
            Register
          </v-btn>
        </v-form>
        <div class="text-center mt-4">
          <NuxtLink to="/login" class="text-sm">
            Already have an account? Login
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

const fullName = ref("")
const email = ref("")
const password = ref("")
const confirmPassword = ref("")
const showPassword = ref(false)
const snackbar = ref(false)
const snackbarText = ref("")
const snackbarColor = ref("error")

const { register } = useAuth()
const router = useRouter()
const { smAndDown } = useDisplay()

const snackbarLocation = computed(() => smAndDown.value ? "bottom" : "top")

const togglePassword = () => {
  showPassword.value = !showPassword.value
}

const handleRegister = async () => {
  if (password.value !== confirmPassword.value) {
    snackbarText.value = "Passwords do not match."
    snackbar.value = true
    return
  }
  const response = await register(fullName.value, email.value, password.value)
  if (response.success) {
    snackbarColor.value = "success"
    snackbarText.value = "Registration successful! Redirecting to login in 3 seconds..."
    snackbar.value = true
    setTimeout(() => {
      router.push("/login")
    }, 3000)
  } else {
    snackbarText.value = response.message || "An unknown error occurred."
    snackbar.value = true
  }
}
</script>