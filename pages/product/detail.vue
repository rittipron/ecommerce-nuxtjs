<template>
    <main class="max-w-7xl mx-auto px-4 py-8 mb-[7rem]">
        <div class="flex flex-row items-center gap-3  mb-10 ml-2">
            <NuxtLink to="/" class="text-[#B1B1B1] hover:text-black">
                HOME
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <NuxtLink to="/product" class="text-[#B1B1B1] hover:text-black">
                PRODUCT
            </NuxtLink>
            <p class="self-center">
                <img class="h-[12px]" src="/assets/images/Vector.png" alt="" width="10" height="6">
            </p>
            <p class="text-[#B1B1B1]">PRODUCT DETAIL</p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div class="flex">
                <div class="gap-2">
                    <img src="/images/product/detail/item.png" alt="Thumbnail 1"
                        class="rounded-lg cursor-pointer hover:opacity-75 w-[92px] h-[92px] mb-3" />
                    <img src="/images/product/detail/item.png" alt="Thumbnail 2"
                        class="rounded-lg cursor-pointer hover:opacity-75 w-[92px] h-[92px] mb-3" />
                    <img src="/images/product/detail/item.png" alt="Thumbnail 3"
                        class="rounded-lg cursor-pointer hover:opacity-75 w-[92px] h-[92px] mb-3" />
                    <img src="/images/product/detail/item.png" alt="Thumbnail 4"
                        class="rounded-lg cursor-pointer hover:opacity-75 w-[92px] h-[92px] mb-3" />
                    <img src="/images/product/detail/item.png" alt="Thumbnail 5"
                        class="rounded-lg cursor-pointer hover:opacity-75 w-[92px] h-[92px] mb-3" />
                </div>
                <div class="h-[524px] pl-4">
                    <img src="/images/product/detail/item.png" alt="Nike Air Max 2024" class="rounded-lg" />
                </div>
            </div>

            <!-- Product Info -->
            <div class="space-y-6">
                <div>
                    <h1 class="text-3xl font-bold text-gray-900">BEANIE</h1>
                </div>

                <div>
                    <span class="text-2xl font-bold text-gray-900">1,590.00 ฿</span>
                </div>

                <hr class="border-t border-[#E2E2E2]" />

                <div>
                    <h3 class="text-lg font-semibold mb-2">Color</h3>
                    <div class="py-2  inline-block bg-white w-[204px]">
                        <div class="flex items-center gap-x-1.5">
                            <select id="op" v-model="selected"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                                <option value="">Choose</option>
                                <option value="US">1st Option</option>
                                <option value="CA">2nd Option</option>
                                <option value="FR">3rd Option</option>
                                <option value="DE">4th Option</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div>
                    <h3 class="text-lg font-semibold mb-2">Select Size</h3>
                    <div class="flex flex-row gap-4">
                        <button class="border rounded-md py-2 hover:border-[#E2E2E2] w-[40px] h-[40px]">S</button>
                        <button class="border rounded-md py-2 hover:border-[#E2E2E2] w-[40px] h-[40px]">M</button>
                        <button class="border rounded-md py-2 hover:border-[#E2E2E2] w-[40px] h-[40px]">L</button>
                        <button class="border rounded-md py-2 hover:border-[#E2E2E2] w-[40px] h-[40px]">XL</button>
                    </div>
                </div>

                <div>
                    <h3 class="text-lg font-semibold mb-2">Quantity</h3>
                    <!-- Input Number -->
                    <div class="flex flex-row">
                        <div class="py-2 px-3 inline-block bg-white border border-gray-200 rounded-lg"
                            data-hs-input-number="">
                            <div class="flex items-center gap-x-1.5">
                                <button type="button"
                                    class="size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium border-gray-200 bg-white text-gray-800 focus:outline-hidden focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none"
                                    tabindex="-1" aria-label="Decrease" data-hs-input-number-decrement="">
                                    <svg class="shrink-0 size-3.5" xmlns="http://www.w3.org/2000/svg" width="24"
                                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M5 12h14"></path>
                                    </svg>
                                </button>
                                <input
                                    class="p-0 w-6 bg-transparent border-0 text-gray-800 text-center focus:ring-0 [&::-webkit-inner-spin-button]:appearance-none [&::-webkit-outer-spin-button]:appearance-none"
                                    style="-moz-appearance: textfield;" type="number"
                                    aria-roledescription="Number field" value="0" data-hs-input-number-input="">
                                <button type="button"
                                    class="size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium bg-white text-gray-800   focus:outline-hidden focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none"
                                    tabindex="-1" aria-label="Increase" data-hs-input-number-increment="">
                                    <svg class="shrink-0 size-3.5" xmlns="http://www.w3.org/2000/svg" width="24"
                                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M5 12h14"></path>
                                        <path d="M12 5v14"></path>
                                    </svg>
                                </button>
                            </div>
                        </div>
                        <p class="my-auto ml-5">Only 5 Remaining</p>
                    </div>
                </div>


                <div class="flex flex-row mb-15">
                    <button class="w-[303px] bg-black text-white py-4 hover:bg-gray-800">Add to Cart</button>
                    <img src="/images/product/detail/item1.png" alt="Nike Air Max 2024"
                        class="h-[17px] w-[21px] my-auto ml-8" width="21" height="10" />
                </div>

                <div class="">
                    <h3 class="text-lg font-semibold mb-2">Product Description</h3>
                    <hr class="border-t border-[#E2E2E2] my-4" />
                    <p class="text-gray-600 mb-10">
                        Lorem ipsum dolor sit amet consectetur. Vestibulum diam convallis leo habitant massa malesuada
                        consectetur blandit nec. Non luctus est imperdiet pulvinar augue urna senectus sollicitudin
                        odio. Lectus imperdiet pharetra vitae mi venenatis a egestas egestas vitae. Morbi natoque sit
                        vulputate pulvinar tellus odio pharetra nunc pellentesque.
                    </p>
                    <p class="text-gray-600">
                        Quisque nunc nisl natoque purus. Volutpat nibh arcu pharetra at aliquet. Aenean vestibulum leo
                        tincidunt sed quam nibh et nibh. Netus leo ultricies commodo diam. Ut vestibulum molestie amet
                        scelerisque pellentesque iaculis consequat. Amet consectetur proin tellus sit enim. Risus
                        adipiscing et risus consectetur vestibulum mattis. Tristique sapien sagittis enim quisque urna
                        quis est. Enim aliquam mauris sit libero mauris eu hendrerit nibh. Tortor sit quam magna libero.
                    </p>
                </div>
            </div>
        </div>
    </main>
</template>

<script setup>

const selected = ref('')
</script>