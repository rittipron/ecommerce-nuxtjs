<template>
    <div class="pl-[80px] pr-[80px] mb-10">
        <div class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <p class="text-[#B1B1B1]">BLOG</p>
        </div>

        <h1 class="text-center my-10 text-[32px]">BLOG</h1>

        <div class="flex flex-col items-center">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-8 gap-y-10 mb-10 gap-4">
                <Card v-for="(item, index) in visibleItems" :key="index" :item="item" />
            </div>

            <button v-if="visibleCount < cards.length"
                class="px-6 py-2 border border-black text-black hover:bg-black hover:text-white" @click="showMore">
                SEE MORE
            </button>
        </div>
    </div>
</template>

<script setup>
import { ref, computed } from 'vue'
import Card from '../components/blog/card.vue'
import Blog from '../mock/blog.json'

const cards = ref(Blog)

const visibleCount = ref(12)
const visibleItems = computed(() => cards.value.slice(0, visibleCount.value))

const showMore = () => {
    visibleCount.value = Math.min(visibleCount.value + 12, cards.value.length)
}
</script>
