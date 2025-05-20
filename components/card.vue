<template>
    <div class="flex w-full justify-center mb-10">
        <div class="flex flex-col rounded w-[308px]">
            <img class="mb-5" :src="img" width="308" height="200" />

            <div class="flex-1 h-[214px] mb-5 px-1">
                <p class="text-[16px] font-bold mb-6">
                    {{ name }}
                </p>
                <p class="text-[18px] text-gray-600 break-words">
                    {{ description }}
                </p>
            </div>

            <button
                @click="goToLink(link+name)"       
                class="w-full mt-auto hover:bg-black hover:text-white text-black bg-white border border-black text-center py-3 px-1">
                View
            </button>
        </div>
    </div>

</template>

<script setup>
defineProps({
    img: String,
    name: String,
    description: String,
    link: String
})

const goToLink = (url) => {
  if (/^https?:\/\//.test(url)) {
    window.location.href = url
  } else {
    navigateTo(url)
  }
}
</script>