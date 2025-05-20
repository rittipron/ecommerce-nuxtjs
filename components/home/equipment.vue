<template>
    <div class="max-w-5xl">
        <h1 class="flex justify-center mb-5 mt-5 text-[14px]">EQUIPMENT</h1>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            <CardBox v-for="(item, index) in items" :key="index" :img="item.img" :name="item.name"
                :price="item.price" />
        </div>
    </div>
</template>

<script setup>
import CardBox from './equipment/cardbox.vue'

const items = [
    { img: '/images/home/equipment/item.png', name: 'Beanie', price: '2,700.00' },
    {
        img: '/images/home/equipment/item1.png', name: `Black Pearl - 2 Pieces -
    Longjohn - 2mm`, price: '13,500.00'
    },
    { img: '/images/home/equipment/item2.png', name: 'Beanie', price: '1,360.00' },
    { img: '/images/home/equipment/item3.png', name: 'Beanie', price: '39,990.00' },
]
</script>