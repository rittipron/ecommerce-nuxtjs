<template>
  <div class="pl-[80px] pr-[80px]">
        <div v-if="page == 'trip'" class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <NuxtLink to="/trip" class="text-[#B1B1B1] hover:text-black">
                TRIP
            </NuxtLink>
            <p class="self-center"> <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6"></p>
            <p class="text-[#B1B1B1]">{{ name.toUpperCase() }}</p>
        </div>

        <div v-if="page == 'course'" class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <NuxtLink to="/course" class="text-[#B1B1B1] hover:text-black">
              COURSE
            </NuxtLink>
            <p class="self-center"> <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6"></p>
            <p class="text-[#B1B1B1]">{{ name.toUpperCase() }}</p>
        </div>

        <div v-if="page == 'blog'" class="flex flex-row items-center gap-3 mt-6 mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center"> <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6"></p>
            <NuxtLink to="/blog" class="text-[#B1B1B1] hover:text-black">
              BLOG
            </NuxtLink>
            <p class="self-center"> <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6"></p>
            <p class="text-[#B1B1B1]">{{ name.toUpperCase() }}</p>
        </div>

        <h1 class="text-center my-10 text-[32px]" v-if="page !== 'blog'">{{ name }}</h1>
        <div class="mb-6 " v-if="exists">
          <div class="px-[12rem]" v-if="page == 'trip'">
            <DetailTrip/>
          </div>
          <div class="px-[12rem]" v-if="page == 'course'">
            <DetailCourse/>
          </div>
          <div v-if="page == 'blog'">
            <DetailBlog/>
          </div>
        </div>
    </div>
</template>

<script setup>
import { useRoute } from 'vue-router'
import { onMounted, ref } from 'vue'

import DetailBlog from '/components/detail/blog.vue'
import DetailCourse from '/components/detail/course.vue'
import DetailTrip from '/components/detail/trip.vue'

const route = useRoute()
const userId = route.params.id
const page = route.query.page
const name = route.query.name
const exists = ref(false)

onMounted(async () => {
  try {
    if (userId && page) {
      exists.value = true
    } else {
      router.push('/error')
    }
  } catch (err) {
    router.push('/error')
  }
})
</script>