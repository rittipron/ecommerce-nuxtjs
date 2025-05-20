<template>
    <div class="rounded">
        <h3 class="text-lg font-bold text-center mb-3">{{ title }}</h3>
        <div class="flex justify-center mb-3">
            <hr class="w-[30px] h-[3px] bg-yellow-400 border-none" />
        </div>
        <p v-if="subtitle !== ''" class="text-center text-lg font-bold mb-3">
            {{ subtitle }}
        </p>
        <p class="text-sm text-gray-600 mb-4">{{ description }}</p>
    </div>
</template>

<script setup>
defineProps({
    title: String,
    description: String,
    subtitle: String
})
</script>