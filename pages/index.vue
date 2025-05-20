<template>
    <div class="">
      <div>
        <img class="w-full" src="/assets/images/home/slick.png" alt="" width="">
      </div>
      <div class="px-[335px]">
        <Banner/>
        <QandA/>
        <FeaturedTrip/>
        <div class="w-full flex justify-center">
          <Equipment/>
        </div>
      </div>
    </div>
  </template>

<script setup>
  import Banner from '/components/home/banner.vue'
  import QandA from '/components/home/qanda.vue'
  import FeaturedTrip from '/components/home/featuredtrip.vue'
  import Equipment from '/components/home/equipment.vue'
</script>