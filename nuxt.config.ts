// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: ["@nuxtjs/tailwindcss", "@nuxtjs/color-mode", "shadcn-nuxt"],
  tailwindcss: {
    cssPath: '~/src/global.css',
    configPath: 'tailwind.config.js',
  },
  css: [
    '@fortawesome/fontawesome-svg-core/styles.css'
  ],
  shadcn: {
    prefix: '',
    componentDir: './components/ui'
  },
  colorMode: {
    preference: 'dark',
    classSuffix: '',
  }
})