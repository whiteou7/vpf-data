/*
  i kinda overengineered this
*/

import type { APIBody } from "~/types/api"

// Minimal current user state
const user = ref<{ vpfId: string }>({ vpfId: "" })

const setUserState = (vpfId: string) => {
  user.value.vpfId = vpfId
}

let validated = false // Keep track of whether validation was done so that revalidation is unnecessary

export const useAuth = async () => {
  // Login will set user state, cookie and localStorage
  const login = async (email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<{ sessionId: string, vpfId: string }>>("/api/auth/login", {
        method: "POST",
        body: { email, password },
        ignoreResponseError: true
      })

      if (response.success) {
        setUserState(response.data?.vpfId ?? "")
        localStorage.setItem("loggedIn", "true")
      }
      return response
    } catch (error) {
      return { success: false, message: (error as Error).message || "An error occurred" }
    }
  }

  const register = async (fullName: string, email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<null>>("/api/auth/register", {
        method: "POST",
        body: { fullName, email, password },
        ignoreResponseError: true
      })

      return response
    } catch (error) {
      return { success: false, message: (error as Error).message || "An error occurred" }
    }
  }

  // Logging out will clear user state, session cookie and set loggedIn in localstorage to false
  const logout = async () => {
    try {
      const response = await $fetch("/api/auth/logout", {
        method: "POST",
        ignoreResponseError: true
      })

      return response
    } catch (error) {
      return { success: false, message: (error as Error).message || "An error occurred" }
    } finally {
      localStorage.setItem("loggedIn", "false")
      setUserState("")
    }
  }

  const validate = async () => {
    try {
      const response = await $fetch<APIBody<{ vpfId: string }>>("/api/auth/validate-session", { ignoreResponseError: true })

      // Validating will set user state
      if (response.success) {
        setUserState(response.data?.vpfId ?? "")
      } else if (response.error !== "SESSION_NOT_INCLUDED") {
        logout() // Dont log out if session doesnt exist in the first place
      } else {
        localStorage.setItem("loggedIn", "false")
      }
      
    } catch (error) {
      logout()
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  // Always validate on first call and loggedIn is set to true in local storage
  if (!validated && localStorage.getItem("loggedIn") == "true") {
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
