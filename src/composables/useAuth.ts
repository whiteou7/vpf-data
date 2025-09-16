import { ref } from "vue"
import type { APIBody } from "~/types/api"

export const useAuth = () => {
  const session = useCookie("session_id")
  const user = ref<{ vpf_id: string } | null>(null)

  const login = async (email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<{ session_id: string }>>("/api/auth/login", {
        method: "POST",
        body: { email, password }
      })

      if (response.success) {
        session.value = response.data?.session_id
        await validate()
        return response
      }
      
      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  const register = async (email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<null>>("/api/auth/register", {
        method: "POST",
        body: { email, password }
      })

      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  // TODO: invalidate session after logging out
  const logout = () => {
    session.value = null
    user.value = null
  }

  const validate = async () => {
    if (!session.value) {
      user.value = null
      return { success: false, error: "No session" }
    }

    try {
      const response = await $fetch<APIBody<{ vpf_id: string }>>(`/api/auth/validate?session_id=${session.value}`)

      if (response.success) {
        user.value = { vpf_id: response.data?.vpf_id ?? "" }
      } else {
        logout()
      }

      return response
    } catch (error) {
      logout()
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  return {
    user,
    login,
    register,
    logout,
    validate
  }
}
