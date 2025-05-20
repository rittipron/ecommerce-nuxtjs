<template>
  <div class="flex flex-col w-full max-w-[260px]">
    <img :src="item.image" alt="Card image" class="w-full h-[160px] object-cover mb-1" />
    <p class="font-semibold text-[16px] mb-1 text-center my-4">{{ item.title }}</p>
    <p class="text-sm text-gray-500 mb-2 line-clamp-2 text-center">{{ item.description }}</p>
    <button @click="goToLink(item.link + item.title)"
      class="text-[14px] font-semibold hover:text-[#FEC32D] hover:underline my-4">
      READ MORE
    </button>
  </div>
</template>

<script setup>
defineProps({
  item: Object
});

const goToLink = (url) => {
  console.log("Navigating to:", url) 

  if (!url) return 

  if (/^https?:\/\//.test(url)) {
    window.location.href = url
  } else {
    navigateTo(url)
  }
}
</script>