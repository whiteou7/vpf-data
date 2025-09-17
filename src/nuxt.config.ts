// https://nuxt.com/docs/api/configuration/nuxt-config

import vuetify, { transformAssetUrls } from "vite-plugin-vuetify"
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
  css: ["~/assets/css/main.css"],
  modules: [
    "@nuxtjs/tailwindcss",
    (_options, nuxt) => {
      nuxt.hooks.hook("vite:extendConfig", (config) => {
        // @ts-expect-error
        config.plugins.push(vuetify({ autoImport: true }))
      })
    },
    "@nuxt/eslint"
  ],
  vite: {
    vue: {
      template: {
        transformAssetUrls,
      },
    },
  }
})