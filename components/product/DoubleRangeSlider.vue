<template>
    <div class="slider-container">
      <div class="slider-track">
        <div class="slider-range" :style="rangeStyle"></div>
  
        <div class="slider-thumb" :style="{ left: leftPercent }"></div>
        <div class="slider-thumb" :style="{ left: rightPercent }"></div>
  
        <div class="slider-sign" :style="{ left: leftPercent }">
          <span>{{ minValue }}</span>
        </div>
        <div class="slider-sign" :style="{ left: rightPercent }">
          <span>{{ maxValue }}</span>
        </div>
      </div>
  
      <!-- Hidden sliders -->
      <input
        type="range"
        :min="min"
        :max="max"
        :step="step"
        v-model.number="minValue"
        @input="handleMinInput"
      />
      <input
        type="range"
        :min="min"
        :max="max"
        :step="step"
        v-model.number="maxValue"
        @input="handleMaxInput"
      />
  
      <!-- Manual inputs -->
      <div class="input-wrapper">
        <div>
          <label>Min</label>
          <input
            type="number"
            :min="min"
            :max="maxValue - 1"
            :step="step"
            v-model.number="minValue"
            @input="handleMinInput"
          />
        </div>
        <div>
          <label>Max</label>
          <input
            type="number"
            :min="minValue + 1"
            :max="max"
            :step="step"
            v-model.number="maxValue"
            @input="handleMaxInput"
          />
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref, computed, watch } from 'vue'
  
  const props = defineProps({
    min: { type: Number, default: 0 },
    max: { type: Number, default: 100 },
    step: { type: Number, default: 1 },
    defaultMinValue: { type: Number, default: 30 },
    defaultMaxValue: { type: Number, default: 60 },
  })
  
  const minValue = ref(props.defaultMinValue)
  const maxValue = ref(props.defaultMaxValue)
  
  const leftPercent = computed(() => `${((minValue.value - props.min) / (props.max - props.min)) * 100}%`)
  const rightPercent = computed(() => `${((maxValue.value - props.min) / (props.max - props.min)) * 100}%`)
  const rangeStyle = computed(() => ({
    left: leftPercent.value,
    right: `${100 - ((maxValue.value - props.min) / (props.max - props.min)) * 100}%`,
  }))
  
  function handleMinInput() {
    if (minValue.value >= maxValue.value) {
      minValue.value = maxValue.value - props.step
    }
  }
  function handleMaxInput() {
    if (maxValue.value <= minValue.value) {
      maxValue.value = minValue.value + props.step
    }
  }
  </script>
  
  <style scoped>
  .slider-container {
    margin: 40px 0;
    position: relative;
  }
  
  .slider-track {
    position: relative;
    height: 14px;
    background-color: #ccc;
    border-radius: 10px;
    margin-bottom: 20px;
  }
  
  .slider-range {
    position: absolute;
    height: 14px;
    background-color: #1ABC9C;
    border-radius: 10px;
  }
  
  .slider-thumb {
    position: absolute;
    top: -7px;
    height: 28px;
    width: 28px;
    background-color: #fff;
    border-radius: 50%;
    box-shadow: 0 3px 8px rgba(0, 0, 0, 0.4);
    transform: translateX(-50%);
    z-index: 2;
  }
  
  .slider-sign {
    position: absolute;
    top: -40px;
    background-color: #1ABC9C;
    color: #fff;
    width: 28px;
    height: 28px;
    text-align: center;
    line-height: 28px;
    border-radius: 50%;
    transform: translateX(-50%);
    font-size: 12px;
    font-weight: bold;
    z-index: 3;
  }
  
  input[type='range'] {
    position: absolute;
    width: 100%;
    height: 14px;
    top: 0;
    opacity: 0;
    pointer-events: all;
  }
  
  .input-wrapper {
    display: flex;
    justify-content: space-between;
    gap: 16px;
  }
  
  .input-wrapper input {
    width: 80px;
    padding: 6px;
    border: 1px solid #ccc;
    border-radius: 6px;
  }
  </style>
  