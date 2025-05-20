<template>
  <div>
    <Header />
    <slot />
    <Footer />
  </div>
</template>

<script setup>
import Header from '../components/layouts/header.vue'
import Footer from '../components/layouts/footer.vue'
</script>
