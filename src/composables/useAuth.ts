import type { APIBody } from "~/types/api"

const user = ref<{ vpf_id: string }>({ vpf_id: "" })

const setUserState = (vpf_id: string) => {
  user.value.vpf_id = vpf_id
}

export const useAuth = () => {
  const login = async (email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<{ session_id: string, vpf_id: string }>>("/api/auth/login", {
        method: "POST",
        body: { email, password }
      })

      if (response.success) {
        setUserState(response.data?.vpf_id ?? "")
        return response
      }
      
      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

  const register = async (fullName: string, email: string, password: string) => {
    try {
      const response = await $fetch<APIBody<null>>("/api/auth/register", {
        method: "POST",
        body: { full_name: fullName, email, password }
      })

      return response
    } catch (error) {
      return { success: false, error: (error as Error).message || "An error occurred" }
    }
  }

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
      const response = await $fetch<APIBody<{ vpf_id: string }>>("/api/auth/validate-session")

      // Insane if clauses
      // Dont log out if session doesnt exist in the first place
      if (response.success) {
        setUserState(response.data?.vpf_id ?? "")
        return response
      } else if (response.error == "SESSION_NOT_INCLUDED") {
        return response
      } else {
        logout()
        return response
      }
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
