<template>
  <div>
    <div class="progress">
      <div
        class="progress-bar"
        role="progressbar"
        :style="'width: ' + (current / target) * 100 + '%'"
        :aria-valuenow="current"
        :aria-valuemax="target"
        aria-valuemin="0"
      >
        <span v-if="current / target >= 0.5">
          {{ current }} of {{ target }}
        </span>
      </div>
      <span v-if="current / target < 0.5">{{ current }} of {{ target }}</span>
    </div>
    <button @click="current--">-</button>
    <button @click="current++">+</button>
  </div>
</template>

<script>
export default {
  props: {
    target: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      current: 0
    };
  }
};
</script>
