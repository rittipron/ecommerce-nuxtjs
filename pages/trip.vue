<template>
    <div class="pl-[80px] pr-[80px]">
        <div class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <p class="text-[#B1B1B1]">TRIP</p>
        </div>

        <h1 class="text-center my-10 text-[32px]">GO ON A TRIP</h1>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            <Card v-for="(item, index) in items" :key="index" :img="item.img" :name="item.name" :link="item.link"
                :description="item.description" />
        </div>
    </div>
</template>

<script setup>
import Card from '/components/card.vue'

const items = [
    { img: '/images/trip/item.png', name: 'RAJA AMPAT MISOOL', link: 'detail/1?page=trip&name=', description: `Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin` },
    { img: '/images/trip/item1.png', name: 'KOH LOREM IPSUM', link: 'detail/2?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },
    { img: '/images/trip/item.png', name: 'KOH LOREM IPSUM', link: 'detail/3?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },
    { img: '/images/trip/item1.png', name: 'KOH LOREM IPSUM', link: 'detail/4?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },
    { img: '/images/trip/item1.png', name: 'KOH LOREM IPSUM', link: 'detail/5?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },
    { img: '/images/trip/item.png', name: 'RAJA AMPAT MISOOL', link: 'detail/6?page=trip&name=', description: `Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin` },
    { img: '/images/trip/item1.png', name: 'KOH LOREM IPSUM', link: 'detail/7?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },
    { img: '/images/trip/item1.png', name: 'KOH LOREM IPSUM', link: 'detail/8?page=trip&name=', description: 'Lorem ipsum dolor sit amet consectet ur. Amet aliquam quis commodo pulv inar. Ante dolor malesuada id consec tetur. Tincidunt orci odio volutpat hen drerit amet nunc. Amet lectus volutpa etiam nibh risus libero. Massa proin' },

]
</script>