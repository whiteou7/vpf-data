<template>
    <v-card class="mx-auto bg-surface" max-width="400">
      <template v-slot:title>
        <span class="font-weight-black">OpenVPF Beta</span>
      </template>
  
      <v-card-text class="bg-background pa-4 pl-6 pr-6">
        <p>
          <v-icon size="20" class="mr-1">mdi-facebook</v-icon>
          <NuxtLink :to="`https://www.facebook.com/vietpowerlifting`" class="link" target="_blank" rel="noopener noreferrer">
            Vietnam Powerlifting Federation - VPF
            </NuxtLink>
        </p>
        <p>
          <v-icon size="20" class="mr-1">mdi-instagram</v-icon>
          <NuxtLink :to="`https://www.instagram.com/vpf.vietnampowerliftingfed`" class="link" target="_blank" rel="noopener noreferrer">
            vpf.vietnampowerliftingfed
            </NuxtLink>
        </p>
        <p>
          <v-icon size="20" class="mr-1">mdi-email</v-icon>
          vietnampowerliftingfederation@gmail.com
        </p>
        <br>
        <p style="color: gray; font-style: italic;">
        Site maintained by tungproduceslift
        </p>
      </v-card-text>
    </v-card>
  </template>

<style scoped>
.link {
  text-decoration: none;
  color: inherit;
}
.link:hover,
.link:active {
  color: rgb(var(--v-theme-primary));
}
</style>