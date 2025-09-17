<template>
  <v-container>
    <v-card max-width="500" class="mx-auto">
      <v-card-title>Login</v-card-title>
      <v-card-text>
        <v-form @submit.prevent="handleLogin">
          <v-text-field
            v-model="email"
            label="Email"
            type="email"
            required
          />
          <v-text-field
            v-model="password"
            label="Password"
            type="password"
            required
          />
          <v-btn type="submit" color="primary">Login</v-btn>
        </v-form>
        <p v-if="error" class="text-red">{{ error }}</p>
      </v-card-text>
    </v-card>
  </v-container>
</template>

<script setup lang="ts">
import { ref } from "vue"
import { useAuth } from "~/composables/useAuth"

const email = ref("")
const password = ref("")
const error = ref<string | null>(null)

const { login } = useAuth()
const router = useRouter()

const handleLogin = async () => {
  const response = await login(email.value, password.value)
  if (response.success) {
    router.push("/")
  } else {
    error.value = response.error || "An unknown error occurred."
  }
}
</script>
