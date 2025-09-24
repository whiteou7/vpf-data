export default defineNuxtConfig({
  routeRules: {
    "/": {
      headers: {
        "Cache-Control": "public, max-age=3600, s-maxage=3600",
      },
    },
  },
  runtimeConfig: {
    public: {
      SHOP_URL: process.env.SHOP_URL
    }
  },
  app: {
    head: {
      meta: [
        { name: "viewport", content: "width=device-width, initial-scale=1.0" }
      ]
    }
  },
  ssr: false,
  build: {
    transpile: ["vuetify"],
  },
  compatibilityDate: "2025-05-15",
  devtools: { enabled: true },
  modules: ["vuetify-nuxt-module", "@nuxt/eslint"],
  vuetify: {
    moduleOptions: {
      /* module specific options */
    },
    vuetifyOptions: {
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
    }
  }
})