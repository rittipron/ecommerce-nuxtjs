<template>
  <div :class="size === 'large' ? 'w-2/3' : 'w-1/3'" class="p-1">
    <img :src="img" class="w-full h-full object-cover" />
  </div>
</template>

<script setup>
defineProps({
  img: String,
  size: String
})
</script>
