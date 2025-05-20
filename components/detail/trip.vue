<template>
  <div>
    <div class="space-y-12 px-4 md:px-12 py-8">
      <!-- Hero Image -->
      <img src="/images/detail/trip/item.png" alt="Island View" class="mb-4" />

      <!-- Activities Section -->
      <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
        <img src="/images/detail/trip/item1.png" />
        <img src="/images/detail/trip/item2.png" />
        <img src="/images/detail/trip/item3.png" />
        <img src="/images/detail/trip/item4.png" />
      </div>

      <!-- Description Text -->
      <div class="text-gray-700 text-justify max-w-4xl mx-auto">
        <p>
          Lorem ipsum dolor sit amet consectetur. Amet aliquam quis commodo pulvinar. Ante dolor malesuada id
          consectetur. Tincidunt orci odio volutpat hendrerit amet nunc. Amet lectus volutpat etiam nibh risus libero.
          Massa proin sit leo sit quam vitae sed turpis dis. Convallis sit volutpat fringilla id. Feugiat parturient
          lorem eu auctor nisl. Bibendum sagittis pulvinar porta vitae quam etiam sodales. Turpis quisque condimentum ut
          tincidunt lorem maecenas.
          Consequat turpis quam accumsan tristique eu ullamcorper habitant posuere. Ante nulla amet neque tincidunt et
          volutpat in a. Ut rhoncus fringilla vestibulum sem condimentum. Consectetur rhoncus vitae imperdiet vitae
          purus nulla morbi. Pellentesque et habitant id mi sapien gravida. Maecenas sit purus sed ac cursus nunc morbi.
          Iaculis id faucibus quis purus velit laoreet hendrerit vel. Mi tempor duis imperdiet id facilisis aenean eget
          interdum egestas. Libero et dictumst nunc cursus a mi pharetra nec. Sed venenatis dignissim sodales
          sollicitudin lorem nunc enim commodo.
          Tincidunt ac euismod velit turpis sit amet rhoncus morbi tempor. Cursus aliquam tellus morbi dictum eget. Enim
          amet commodo cursus vitae semper sollicitudin id. Nisi cursus diam nisl magna arcu purus ridiculus. Justo
          proin praesent nisi amet fermentum aliquet. Vitae vitae parturient praesent ultricies eget. Ultrices pharetra
          neque phasellus posuere vel nulla hendrerit.
        </p>
      </div>

      <!-- Room Cards -->
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div v-for="(room, index) in rooms" :key="index" class=" p-4">
          <img :src="room.image" alt="Room" class="w-full h-48 object-cover rounded-md mb-4" />
          <div class="flex justify-between">
            <h2 class="text-lg text-[#FEC32D] font-semibold mb-1">{{ room.title }}</h2>
            <p class="font-bold">{{ room.price }}</p>
          </div>
          <p class="text-gray-500 mb-2">{{ room.description }}</p>
        </div>
      </div>
    </div>
    <div class="bg-[url('/images/detail/trip/item6.png')] bg-no-repeat w-full py-12 px-6 md:px-20">
      <!-- Timeline -->
      <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-10">
        <div class="md:col-span-2">
          <div v-for="(day, index) in itinerary" :key="index" class="relative pl-10 pb-10 border-l-2 border-yellow-400">
            <div v-if="index != 1" class="absolute -left-2 top-1 w-4 h-4 rounded-full bg-yellow-400"></div>
            <h3 v-if="index != 1" class="text-lg font-semibold text-gray-900 mb-1">Day {{ day.day }}</h3>
            <p class="text-sm text-gray-600 mb-1" v-if="day.time && index != 1">{{ day.time }}</p>
            <p v-if="index != 1" class="text-gray-700 whitespace-pre-line">
              {{ day.description }}
            </p>
            <div v-if="index == 1" class="absolute -left-2 top-1 w-4 h-4 rounded-full bg-yellow-400"></div>
            <h3 v-if="index == 1" class="text-lg font-semibold text-gray-900 mb-1">Day 2</h3>
            <p v-if="index == 1" class="text-sm text-gray-600 mb-2">00:30 (+1)</p>
            <p v-if="index == 1" class="text-gray-700 whitespace-pre-line mb-4">Transit CGK-SOQ (3:35 hrs.)</p>
            <p v-if="index == 1" class="text-sm text-gray-600 mb-2">06:35</p>
            <p v-if="index == 1" class="text-gray-700 whitespace-pre-line mb-4">Check dive at Red Light District (Lampu Merah)</p>
            <p v-if="index == 1" class="text-sm text-gray-600 mb-2">14:00</p>
            <p v-if="index == 1" class="text-gray-700 whitespace-pre-line">Transfer to local hotel or airport</p>
          </div>
          <div class="relative pl-10 pb-10 border-l-2 border-transparent">
            <div class="absolute -left-2 top-1 w-4 h-4 rounded-full bg-yellow-400"></div>
            <h3 class="text-lg font-semibold text-gray-900 mb-1">Day 9</h3>
            <p class="text-sm text-gray-600 mb-2">05:00</p>
            <p class="text-gray-700 whitespace-pre-line mb-4">Check out after light breakfast, farewells</p>
            <p class="text-sm text-gray-600 mb-2">12:00</p>
            <p class="text-gray-700 whitespace-pre-line">Transfer to local hotel or airport</p>
            <p class="text-gray-700 whitespace-pre-line">Departure from Sorong to Jakarta</p>
            <p class="text-gray-700 whitespace-pre-line">Jakarta - Bangkok</p>
          </div>
          <hr class="border-t border-[#909090]  ml-10" />
          <div class="text-[#909090]  pl-10">*Dive Site may change due to the weather*</div>
        </div>

        <!-- Price Boxes -->
        <div class="space-y-6 m-auto">
          <div class="border border-yellow-300 bg-white p-4 rounded shadow">
            <h4 class="font-bold mb-2">Price Included:</h4>
            <ul class="list-disc list-inside text-sm text-gray-700 space-y-1">
              <li>Marine park & harbor fee</li>
              <li>Local airport transfers</li>
              <li>All meals</li>
              <li>Accommodation on board (Air con)</li>
              <li>Fruits, snacks</li>
              <li>Daily cabin service</li>
              <li>Dive guide</li>
              <li>Air tanks, belt & weights, all dives</li>
            </ul>
          </div>

          <div class="border border-yellow-300 bg-white p-4 rounded shadow">
            <h4 class="font-bold mb-2">Price Excluded:</h4>
            <ul class="list-disc list-inside text-sm text-gray-700 space-y-1">
              <li>All flights</li>
              <li>International/domestic airfare and airport tax 25,000 - 34,000 baht</li>
              <li>Soft drinks and alcohol beverages</li>
              <li>Dive & travel insurance</li>
              <li>Massage</li>
              <li>Diving gear subject to availability: dive, computer and torch. 15L tank rental</li>
              <li>Nitrox refills (15USD/Day)</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const rooms = [
  {
    title: 'Standard Room',
    price: '2,620 USD',
    image: '/images/detail/trip/item5.png',
    description: 'Lorem ipsum dolor sit amet consectetur. Mollis quis lobortis bibendum ultrices. Id pharetra sit ac ipsum eleifend. Sit sit venenatis senectus.',
  },
  {
    title: 'Standard Room',
    price: '2,820 USD',
    image: '/images/detail/trip/item5.png',
    description: 'Lorem ipsum dolor sit amet consectetur. Mollis quis lobortis bibendum ultrices. Id pharetra sit ac ipsum eleifend. Sit sit venenatis senectus.',
  },
  {
    title: 'Suite Room',
    price: '3,280 USD',
    image: '/images/detail/trip/item5.png',
    description: 'Lorem ipsum dolor sit amet consectetur. Mollis quis lobortis bibendum ultrices. Id pharetra sit ac ipsum eleifend. Sit sit venenatis senectus.',
  },
]
const itinerary = [
  {
    day: 1,
    time: '17:20 - 20:55',
    description: 'Take a flight BKK-CGK',
  },
  {
    day: 2,
    time: '00:30 - (3:35 hrs.)\n06:35\n14:00',
    description: 'Transit CGK-SOQ\nArrive Sorong (SOQ) transfer to Raja Manta\nCheck dive at Red Light District (Lampu Merah)',
  },
  {
    day: 3,
    description: '4 Dives / Misool; Wayil area\nBeautiful lagoon for boat tour and super dives',
  },
  {
    day: 4,
    description: '3 Dives / Misool; Fiabacet & Boo area\nSail to overnight to Central & North Raja Ampat',
  },
  {
    day: 5,
    description: '4 Dives / Pianemu area; including famous Melissa’s Garden and stunning View Point hike',
  },
  {
    day: 6,
    description: '4 Dives / Manta ridge & Dampier Strait',
  },
  {
    day: 7,
    description: '4 Dives / Kri area; including Big Fish, Cape Kri, Sardine Run & excellent night dive',
  },
  {
    day: 8,
    description: '4 Dives / Misokon island; Blue Magic & Yellow Fever',
  }
]
</script>