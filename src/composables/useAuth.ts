import { ref } from "vue"

export const useAuth = () => {
  const session = useCookie("session_id")
  const user = ref(null) // You might want to fetch user data based on the session

  const login = async (email: string, password: string) => {
    try {
      const sessionId = await $fetch("/api/auth/login", {
        params: { email, password }
      })
      if (sessionId) {
        session.value = sessionId
        // You might want to fetch user details here and set the user ref
        return { success: true }
      }
      return { success: false, message: "Cannot generate session" }
    } catch (error) {
      console.error("Login error:", error)
      return { success: false, message: error.data?.statusMessage || "An error occurred" }
    }
  }

  const register = async (email: string, password: string) => {
    try {
      const result = await $fetch("/api/auth/register", {
        method: "POST",
        body: { email, password }
      })
      return result
    } catch (error) {
      console.error("Registration error:", error)
      return { success: false, message: error.data?.statusMessage || "An error occurred" }
    }
  }

  const logout = () => {
    session.value = null
    user.value = null
  }

  // Check session on initial load
  if (session.value) {
    // You could add logic here to verify the session and fetch user data
  }

  return {
    user,
    login,
    register,
    logout,
    isLoggedIn: computed(() => !!session.value)
  }
}
