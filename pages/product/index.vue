<template>
    <div class="bg-white">
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <div class="flex flex-row items-center gap-3 mt-10 ml-2">
                <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                    HOME
                </NuxtLink>
                <p class="self-center">
                    <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
                </p>
                <p class="text-[#B1B1B1]">PRODUCT</p>
            </div>
            <div class="flex items-baseline justify-center pt-8 pb-6">
                <h1 class="text-4xl font-bold tracking-tight text-gray-900">ALL PRODUCT</h1>
            </div>

            <section aria-labelledby="products-heading" class="pt-6 pb-24">
                <h2 id="products-heading" class="sr-only">Products</h2>

                <div class="grid grid-cols-1 gap-x-8 gap-y-10 lg:grid-cols-4">
                    <!-- Filters -->
                    <div class="block">
                        <div class="flex flex-row justify-between mt-3">
                            <p class="">FILTER</p>
                            <p class="cursor-pointer text-[#707070] text-[12px]" @click="clearFilters">CLEAR</p>
                        </div>

                        <hr class="border-t border-[#E2E2E2] mt-4" />

                        <aside class="w-full bg-white overflow-y-auto mb-4">
                            <div v-for="(section) in filters" :key="section.id" class="pt-4 pb-4">
                                <!-- Header -->
                                <button @click="toggleDropdown(section.id)"
                                    class="flex w-full items-center justify-between py-2 text-sm font-medium text-gray-900 hover:text-indigo-600">
                                    <span>{{ section.name }}</span>
                                    <svg class="w-4 h-4 transition-transform duration-300"
                                        :class="{ 'rotate-180': openSections[section.id] }" fill="none"
                                        stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M19 9l-7 7-7-7" />
                                    </svg>
                                </button>

                                <!-- Dropdown -->
                                <div v-show="openSections[section.id]"
                                    class="mt-2 space-y-3 h-[100px] overflow-auto transition-all">
                                    <div v-for="(option, optionIdx) in section.options" :key="option.value"
                                        class="flex items-center gap-3 text-sm text-gray-700">
                                        <input type="checkbox" :id="`filter-${section.id}-${optionIdx}`"
                                            v-model="option.checked"
                                            class="h-4 w-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500" />
                                        <label :for="`filter-${section.id}-${optionIdx}`">{{ option.label }}</label>
                                    </div>
                                </div>
                            </div>
                        </aside>
                        <div class="">
                            <button @click="isOpen = !isOpen"
                                class="flex w-full items-center justify-between py-2 text-sm font-medium text-gray-900 hover:text-indigo-600">
                                <span>PRICE</span>
                                <svg class="w-4 h-4 transition-transform duration-300" :class="{ 'rotate-180': isOpen }"
                                    fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M19 9l-7 7-7-7" />
                                </svg>
                            </button>

                            <div v-if="isOpen" class="mt-2">
                                <DoubleRangeSlider :min="0" :max="200" :step="1" :defaultMinValue="40"
                                    :defaultMaxValue="120" />
                            </div>
                        </div>
                    </div>

                    <!-- Product grid -->
                    <div class="lg:col-span-3">
                        <div class="flex justify-end">
                            <p class="my-auto mr-8">SORT BY</p>
                            <select id="op" v-model="selected"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-60 p-2.5">
                                <option value="">Choose</option>
                                <option value="US">1st Option</option>
                                <option value="CA">2nd Option</option>
                                <option value="FR">3rd Option</option>
                                <option value="DE">4th Option</option>
                            </select>
                        </div>
                        <div class="text-gray-500 text-sm mt-10 p-6">
                            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-x-8 gap-y-10 mb-10 gap-4">
                                <Card v-for="(item, index) in visibleItems1" :key="index" :item="item" />
                            </div>
                            <div class="w-full flex justify-center">
                                <button v-if="visibleCount < cards.length"
                                    class="px-6 py-2 border border-black text-black hover:bg-black hover:text-white"
                                    @click="showMore">
                                    SEE MORE
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</template>

<script setup>
import { ref, reactive, computed } from 'vue'
import Card from '../../components/product/card.vue'
import Product from '../../mock/product.json'
import DoubleRangeSlider from '../../components/product/DoubleRangeSlider.vue'

const cards = ref(Product)
const isOpen = ref(false)
const visibleCount = ref(9)
const visibleItems1 = computed(() => cards.value.slice(0, visibleCount.value))

const showMore = () => {
    visibleCount.value = Math.min(visibleCount.value + 9, cards.value.length)
}

// ฟิลเตอร์ตัวอย่าง
const filters = ref([
    {
        id: 'color',
        name: 'Color',
        options: [
            { value: 'white', label: 'White', checked: false },
            { value: 'beige', label: 'Beige', checked: false },
            { value: 'blue', label: 'Blue', checked: true },
            { value: 'brown', label: 'Brown', checked: false },
            { value: 'green', label: 'Green', checked: false },
            { value: 'purple', label: 'Purple', checked: false },
        ],
    },
    {
        id: 'category',
        name: 'Category',
        options: [
            { value: 'new-arrivals', label: 'New Arrivals', checked: false },
            { value: 'sale', label: 'Sale', checked: false },
            { value: 'travel', label: 'Travel', checked: true },
            { value: 'organization', label: 'Organization', checked: false },
            { value: 'accessories', label: 'Accessories', checked: false },
        ],
    },
    {
        id: 'size',
        name: 'Size',
        options: [
            { value: '2l', label: '2L', checked: false },
            { value: '6l', label: '6L', checked: false },
            { value: '12l', label: '12L', checked: false },
            { value: '18l', label: '18L', checked: false },
            { value: '20l', label: '20L', checked: false },
            { value: '40l', label: '40L', checked: true },
        ],
    },
])

// Toggle Dropdown แต่ละ filter
const openSections = reactive({})
filters.value.forEach(section => (openSections[section.id] = false))
function toggleDropdown(id) {
    openSections[id] = !openSections[id]
}

// ฟิลเตอร์ข้อมูลให้เหลือเฉพาะที่ match เงื่อนไข
const visibleItems = computed(() => {
    let filtered = cards.value

    filters.value.forEach(section => {
        const selectedOptions = section.options
            .filter(option => option.checked)
            .map(option => option.value)

        if (selectedOptions.length > 0) {
            filtered = filtered.filter(item =>
                selectedOptions.includes(item[section.id])
            )
        }
    })

    return filtered
})

// Clear all filters
function clearFilters() {
    filters.value.forEach(section => {
        section.options.forEach(option => (option.checked = false))
    })
}
</script>



<style scoped>
/* Optional smooth toggle animation */
[style*="display: none"] {
    transition: all 0.3s ease-in-out;
}

[slider] {
    position: relative;
    height: 14px;
    border-radius: 10px;
    text-align: left;
    margin: 45px 0 10px 0;
}

[slider]>div {
    position: absolute;
    left: 13px;
    right: 15px;
    height: 14px;
}

[slider]>div>[inverse-left] {
    position: absolute;
    left: 0;
    height: 14px;
    border-radius: 10px;
    background-color: #CCC;
    margin: 0 7px;
}

[slider]>div>[inverse-right] {
    position: absolute;
    right: 0;
    height: 14px;
    border-radius: 10px;
    background-color: #CCC;
    margin: 0 7px;
}

[slider]>div>[range] {
    position: absolute;
    left: 0;
    height: 14px;
    border-radius: 14px;
    background-color: #1ABC9C;
}

[slider]>div>[thumb] {
    position: absolute;
    top: -7px;
    z-index: 2;
    height: 28px;
    width: 28px;
    text-align: left;
    margin-left: -11px;
    cursor: pointer;
    box-shadow: 0 3px 8px rgba(0, 0, 0, 0.4);
    background-color: #FFF;
    border-radius: 50%;
    outline: none;
}

[slider]>input[type=range] {
    position: absolute;
    pointer-events: none;
    -webkit-appearance: none;
    z-index: 3;
    height: 14px;
    top: -2px;
    width: 100%;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    -moz-opacity: 0;
    -khtml-opacity: 0;
    opacity: 0;
}

div[slider]>input[type=range]::-ms-track {
    -webkit-appearance: none;
    background: transparent;
    color: transparent;
}

div[slider]>input[type=range]::-moz-range-track {
    -moz-appearance: none;
    background: transparent;
    color: transparent;
}

div[slider]>input[type=range]:focus::-webkit-slider-runnable-track {
    background: transparent;
    border: transparent;
}

div[slider]>input[type=range]:focus {
    outline: none;
}

div[slider]>input[type=range]::-ms-thumb {
    pointer-events: all;
    width: 28px;
    height: 28px;
    border-radius: 0px;
    border: 0 none;
    background: red;
}

div[slider]>input[type=range]::-moz-range-thumb {
    pointer-events: all;
    width: 28px;
    height: 28px;
    border-radius: 0px;
    border: 0 none;
    background: red;
}

div[slider]>input[type=range]::-webkit-slider-thumb {
    pointer-events: all;
    width: 28px;
    height: 28px;
    border-radius: 0px;
    border: 0 none;
    background: red;
    -webkit-appearance: none;
}

div[slider]>input[type=range]::-ms-fill-lower {
    background: transparent;
    border: 0 none;
}

div[slider]>input[type=range]::-ms-fill-upper {
    background: transparent;
    border: 0 none;
}

div[slider]>input[type=range]::-ms-tooltip {
    display: none;
}

[slider]>div>[sign] {
    opacity: 0;
    position: absolute;
    margin-left: -11px;
    top: -39px;
    z-index: 3;
    background-color: #1ABC9C;
    color: #fff;
    width: 28px;
    height: 28px;
    border-radius: 28px;
    -webkit-border-radius: 28px;
    align-items: center;
    -webkit-justify-content: center;
    justify-content: center;
    text-align: center;
}

[slider]>div>[sign]:after {
    position: absolute;
    content: '';
    left: 0;
    border-radius: 16px;
    top: 19px;
    border-left: 14px solid transparent;
    border-right: 14px solid transparent;
    border-top-width: 16px;
    border-top-style: solid;
    border-top-color: #1ABC9C;
}

[slider]>div>[sign]>span {
    font-size: 12px;
    font-weight: 700;
    line-height: 28px;
}

[slider]:hover>div>[sign] {
    opacity: 1;
}
</style>