<template>
  <div class="progress">
    <div
      class="progress-bar bg-secondary"
      role="progressbar"
      :style="{ width: (current / max) * 100 + '%' }"
      :aria-valuenow="current"
      :aria-valuemax="max"
      aria-valuemin="0"
    ></div>
  </div>
</template>

<script>
export default {
  props: {
    current: {
      type: Number,
      default: 0
    },
    max: {
      type: Number,
      default: 1
    }
  }
};
</script>
