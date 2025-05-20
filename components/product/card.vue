<template>
  <div class="flex flex-col w-full max-w-[260px]" @click="goToLink">
    <img :src="item.image" alt="Card image" class="w-full h-[320px] object-cover mb-1" />
    <p class="font-semibold text-[16px] mb-1 text-center my-4 text-[#F9B200]">{{ item.title }}</p>
    <p v-if="!item.discount" class="text-[18px] font-semibold my-4 text-center">{{ item.price }} ฿</p>
    <div v-if="item.discount" class="flex justify-center">
      <p class="text-[#DD0A0A] text-[18px] mr-2">{{ item.price }} ฿</p>
      <p class="text-[14px] text-[#909090] line-through">{{ item.discount }} ฿</p>
    </div>
  </div>
</template>

<script setup>
defineProps({
  item: Object
});

const goToLink = () => {
  let url = "/product/detail"
  if (!url) return 

  if (/^https?:\/\//.test(url)) {
    window.location.href = url
  } else {
    navigateTo(url)
  }
}
</script>