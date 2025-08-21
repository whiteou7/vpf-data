// plugins/vuetify.ts
import { createVuetify } from "vuetify"
import "vuetify/styles"
import "@mdi/font/css/materialdesignicons.css"

export default defineNuxtPlugin((nuxtApp) => {
  const vuetify = createVuetify({
    theme: {
      defaultTheme: "dark",
      themes: {
        dark: {
          dark: true,
          colors: {
            background: "#121212", // very dark gray
            surface: "#1E1E1E", // dark gray surface
            primary: "#EF4444", // Tailwind red-500
            secondary: "#F87171", // Tailwind red-400
            error: "#DC2626", // Tailwind red-600
            success: "4CAF50", // green-500
            onBackground: "#FFFFFF",
            onSurface: "#E5E5E5",
          }
        }
      }
    }
  })

  nuxtApp.vueApp.use(vuetify)
})
