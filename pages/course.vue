<template>
    <div class="pl-[80px] pr-[80px]">
        <div class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <p class="text-[#B1B1B1]">COURSE</p>
        </div>

        <h1 class="text-center my-10 text-[32px]">FIND THE RIGHT DIVING COURSE FOR YOU</h1>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
            <Card v-for="(item, index) in items" :key="index" :img="item.img" :name="item.name" :link="item.link"
                :description="item.description" />
        </div>
    </div>
</template>

<script setup>
import Card from '/components/card.vue'

const items = [
    { img: '/images/course/item.png', name: 'OPEN WATER DIVER COURSE', link: 'detail/1?page=course&name=', description: `Open Water - This course is the basic and beginner course. You will learn how to breath and move underwater effectively and safely. It’s the basic skills to allow you to stay and enjoy underwater world freely` },
    { img: '/images/course/item1.png', name: 'ADVANCE OPEN WATER DIVER COURSE ON LIVEABOARD TRIP', link: 'detail/1?page=course&name=', description: `Advance Open Water – This course will teach you to be smart , look cool and so efficient underwater. Unlike basic course, this course will teach you so you can play and interact with underwater world more confidently.` },
    { img: '/images/course/item2.png', name: 'ADVANCE OPEN WATER DIVER COURSE', link: 'detail/1?page=course&name=', description: `Advance Open Water – This course will teach you to be smart , look cool and so efficient underwater. Unlike basic course, this course will teach you so you can play and interact with underwater world more confidently.` },
    { img: '/images/course/item3.png', name: 'DIVE MASTER COURSE', link: 'detail/1?page=course&name=', description: `Diver Master – This is a professional course. Once completed, you can work and start earning income. The benefit is endless. You will be working and surrounded by like-minded people who love diving. Which job is...` },
    { img: '/images/course/item4.png', name: 'RESCUE DIVER COURSE', link: 'detail/1?page=course&name=', description: `EFR – This is a very useful course for your everyday life. From applying bandages, count heartbeat, awareness of the critical accident, illness or injury, these are all in one course. And you can use it in all the...` },
]
</script>