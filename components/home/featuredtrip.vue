<template>
    <div class="max-w-5xl mx-auto">
        <h1 class="flex justify-center mb-5 text-[32px]">Featured Trip</h1>
        <div v-for="(pair, rowIndex) in imagePairs" :key="rowIndex" class="flex mb-2">
            <ImageCard :img="pair[0]" :size="rowIndex % 2 === 0 ? 'large' : 'small'" />
            <ImageCard :img="pair[1]" :size="rowIndex % 2 === 0 ? 'small' : 'large'" />
        </div>
    </div>
</template>

<script setup>
import ImageCard from './featuredtrip/Imagecard.vue'

const images = [
    '/images/home/featuredtrip/item.png',
    '/images/home/featuredtrip/item1.png',
    '/images/home/featuredtrip/item2.png',
    '/images/home/featuredtrip/item3.png',
    '/images/home/featuredtrip/item4.png',
    '/images/home/featuredtrip/item5.png',
]

// แบ่งภาพออกเป็นคู่
const imagePairs = []
for (let i = 0; i < images.length; i += 2) {
    imagePairs.push([images[i], images[i + 1]])
}
</script>