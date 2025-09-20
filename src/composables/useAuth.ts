import type { APIBody } from "~/types/api"

// Minimal current user state
const user = ref<{ vpfId: string }>({ vpfId: "" })

const setUserState = (vpfId: string) => {
  user.value.vpfId = vpfId
}

let validated = false

export const useAuth = async () => {
  // Login will set session cookie
  const login = async (email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<{ sessionId: string, vpfId: string }>>("/api/auth/login", {
        method: "POST",
        body: { email, password }
      })

      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  const register = async (fullName: string, email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<null>>("/api/auth/register", {
        method: "POST",
        body: { fullName, email, password }
      })

      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  // Logging out will clear user state and session cookie
  const logout = async () => {
    try {
      const response = await $fetch("/api/auth/logout", {
        method: "POST",
      })

      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    } finally {
      setUserState("")
    }
  }

  const validate = async () => {
    try {
      const response = await $fetch<APIBody<{ vpfId: string }>>("/api/auth/validate-session")

      // Validating will set user state
      if (response.success) {
        setUserState(response.data?.vpfId ?? "")
      } else if (response.error !== "SESSION_NOT_INCLUDED") {
        logout() // Dont log out if session doesnt exist in the first place
      } 
    } catch (error) {
      logout()
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  // Always validate on first call
  if (!validated) {
    await validate()
    validated = true
  }

  return {
    isLoggedIn: computed(() => !!user.value.vpfId),
    user,
    login,
    register,
    logout,
    validate
  }
}
