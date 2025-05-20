<template>
    <section class="relative w-full h-[65vh] text-white">
        <img src="/assets/images/contect/item.png" alt="contect Background" class="absolute inset-0 w-full object-cover z-[-1] top-[-100px] h-[100vh]" />
        <div class="absolute inset-0 bg-black/40 z-[-1]"></div>

        <div class="flex flex-col items-center justify-center h-full px-6 space-y-10 text-center">
            <div>
                <h4 class="text-yellow-400 font-bold text-[24px] tracking-wide mb-4">CONTECT US</h4>
                <h2 class="text-[32px] md:text-3xl font-semibold">ติดต่อเรา</h2>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-10 max-w-5xl text-left w-[50-vw]">
                <!-- Address -->
                <div class="flex items-start space-x-4">
                    <div class="my-auto">
                        <div
                            class="w-[50px] h-[50px] rounded-full bg-yellow-400 m-auto flex items-center justify-center overflow-hidden">
                            <img src="/assets/images/contect/item1.png" alt="Staff 2" width="24" height="24" />
                        </div>
                    </div>

                    <div class="">
                        <h5 class="font-bold">Address</h5>
                        <p>141 Prasertmanukit Road, Ladprao,<br />Janaketabu Bangkok 10230</p>
                        <a href="https://maps.google.com" target="_blank" class="text-yellow-400 text-sm underline">
                            Google map →
                        </a>
                    </div>
                </div>

                <!-- Phone -->
                <div class="flex items-start space-x-4 ml-[4rem]">
                    <div class="my-auto">
                        <div
                            class="w-[50px] h-[50px] rounded-full bg-yellow-400 m-auto flex items-center justify-center overflow-hidden">
                            <img src="/assets/images/contect/item2.png" alt="Staff 2" width="24" height="24" />
                        </div>
                    </div>
                    <div class="my-auto">
                        <h5 class="font-bold">Phone number</h5>
                        <p>(+66)65-395-6496</p>
                    </div>
                </div>

                <!-- Email -->
                <div class="flex items-start space-x-4">
                    <div class="my-auto">
                        <div
                            class="w-[50px] h-[50px] rounded-full bg-yellow-400 m-auto flex items-center justify-center overflow-hidden">
                            <img src="/assets/images/contect/item3.png" alt="Staff 2" width="24" height="24" />
                        </div>
                    </div>
                    <div>
                        <h5 class="font-bold">Email</h5>
                        <p>info@divepotato.com</p>
                    </div>
                </div>

                <!-- Line -->
                <div class="flex items-start space-x-4 ml-[4rem]">
                    <div class="my-auto">
                        <div
                            class="w-[50px] h-[50px] rounded-full bg-yellow-400 m-auto flex items-center justify-center overflow-hidden">
                            <img src="/assets/images/contect/item4.png" alt="Staff 2" width="24" height="24" />
                        </div>
                    </div>
                    <div>
                        <h5 class="font-bold">Line</h5>
                        <p>@divepotato</p>
                    </div>
                </div>
            </div>

            <!-- Social -->
            <div class="flex gap-4">
                <h5 class="font-bold text-xl my-auto">FOLLOW <span class="text-yellow-400">US</span></h5>
                <div class="flex space-x-6 justify-center text-yellow-400 text-2xl ">
                    <div class="my-auto"><img src="/assets/images/contect/item5.png" alt="Staff 2" width="14"
                            height="14" /></div>
                    <div class="my-auto"><img src="/assets/images/contect/item6.png" alt="Staff 2" width="24"
                            height="24" /></div>
                    <div class="my-auto"><img src="/assets/images/contect/item7.png" alt="Staff 2" width="24"
                            height="24" /></div>
                    <div class="my-auto"><img src="/assets/images/contect/item8.png" alt="Staff 2" width="24"
                            height="24" /></div>
                </div>
            </div>

        </div>
    </section>
</template>
