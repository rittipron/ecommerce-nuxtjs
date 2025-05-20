<template>
    <div class="flex w-full justify-center">
        <div class="rounded">
            <img class="mb-5" :src="img" width="148" height="185"/>
            <p class="text-center text-[16px] font-bold mb-6 text-[#FEC32D]">
                {{ name }}
            </p>
            <p class="text-[18px] text-gray-600 mb-[50px] text-center">{{ price }} ฿</p>
        </div>
    </div>
</template>

<script setup>
defineProps({
    img: String,
    name: String,
    price: String
})
</script>