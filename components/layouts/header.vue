<template>
  <div class="min-h-full">
    <Disclosure as="nav" class="bg-[#FEC32D]" v-slot="{ open }">
      <div class="mx-auto h-[84px] py-3 px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center lg:justify-center justify-between">
          <div class="flex items-center">
            <div class="shrink-0">
              <img src="/assets/images/header/logo.png" alt="Your Company" width="48.73" height="70.3" />
            </div>
            <div class="hidden lg:block">
              <div class="ml-10 flex items-baseline space-x-4">
                <a v-for="item in navigation" :key="item.name" :href="item.href"
                  :class="[item.current ? 'text-white' : 'text-[#000000] hover:underline hover:text-[#000000]', 'rounded-md px-3 py-2 text-sm font-medium']"
                  :aria-current="item.current ? 'page' : undefined">{{ item.name }}</a>
              </div>
            </div>
          </div>
          <div class="hidden lg:block ">
            <div class="ml-4 flex items-center lg:ml-6 gap-2">
              <img class="mr-2" src="/assets/images/header/search.png" alt="search" width="24" height="24" />
              <div>login</div>
              <div>|</div>
              <div>Create Account</div>
              <img class="mx-2" src="/assets/images/header/basket.png" alt="basket" width="33.77" height="29.69" />
              <div :class="[
                lag ? 'text-[#BE901B]' : 'text-[#000]',
                'hover:underline hover:cursor-pointer'
              ]" @click="toggleLag">
                ENG
              </div>
              <div>|</div>
              <div :class="[
                !lag ? 'text-[#BE901B]' : 'text-[#000]',
                'hover:underline hover:cursor-pointer'
              ]" @click="toggleLag">
                THA
              </div>
            </div>
          </div>
          <div class="-mr-2 flex lg:hidden">
            <!-- Mobile menu button -->
            <DisclosureButton
              class="relative inline-flex items-center justify-center rounded-md bg-gray-800 p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800 focus:outline-hidden">
              <span class="absolute -inset-0.5" />
              <span class="sr-only">Open main menu</span>
              <Bars3Icon v-if="!open" class="block size-6" aria-hidden="true" />
              <XMarkIcon v-else class="block size-6" aria-hidden="true" />
            </DisclosureButton>
          </div>
        </div>
      </div>

      <DisclosurePanel class="lg:hidden">
        <div class="space-y-1 px-2 pt-2 pb-3 sm:px-3">
          <DisclosureButton v-for="item in navigation" :key="item.name" as="a" :href="item.href"
            :class="[item.current ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white', 'block rounded-md px-3 py-2 text-base font-medium']"
            :aria-current="item.current ? 'page' : undefined">{{ item.name }}</DisclosureButton>
        </div>
        <div class="border-t border-gray-700 pt-4 pb-3">
          <div class="flex items-center px-5">
            <div class="shrink-0">
              <img class="size-10 rounded-full" :src="user.imageUrl" alt="" />
            </div>
            <div class="ml-3">
              <div class="text-base/5 font-medium text-white">{{ user.name }}</div>
              <div class="text-sm font-medium text-gray-400">{{ user.email }}</div>
            </div>
            <button type="button"
              class="relative ml-auto shrink-0 rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800 focus:outline-hidden">
              <span class="absolute -inset-1.5" />
              <span class="sr-only">View notifications</span>
              <BellIcon class="size-6" aria-hidden="true" />
            </button>
          </div>
          <div class="mt-3 space-y-1 px-2">
            <DisclosureButton v-for="item in userNavigation" :key="item.name" as="a" :href="item.href"
              class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white">
              {{ item.name }}</DisclosureButton>
          </div>
        </div>
      </DisclosurePanel>
    </Disclosure>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { Disclosure, DisclosureButton, DisclosurePanel, Menu, MenuButton, MenuItem, MenuItems } from '@headlessui/vue'

const lag = ref(true)

const toggleLag = () => {
  lag.value = !lag.value
}

const user = {
  name: 'Tom Cook',
  email: 'tom@example.com',
  imageUrl:
    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
}
const navigation = [
  { name: 'HOME', href: '/', current: false },
  { name: 'ABOUT US', href: '/about', current: false },
  { name: 'COURSE', href: '/course', current: false },
  { name: 'TRIP', href: '/trip', current: false },
  { name: 'KNOWLEDGE & BLOG', href: '/blog', current: false },
  { name: 'EQUIPMENT', href: '/product', current: false },
  { name: 'CONTACT US', href: '/contact', current: false },
]
const userNavigation = [
  { name: 'Your Profile', href: '#' },
  { name: 'Settings', href: '#' },
  { name: 'Sign out', href: '#' },
]
</script>