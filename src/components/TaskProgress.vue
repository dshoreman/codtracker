<template>
  <div>
    <button class="btn btn-xs btn-danger float-left" @click="current--">
      -
    </button>
    <button class="btn btn-xs btn-success float-right" @click="current++">
      +
    </button>
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

<style scoped type="sass">
.btn-group-xs > .btn,
.btn-xs {
  padding: 0.25rem 0.4rem;
  font-size: 0.875rem;
  line-height: 0.5;
  border-radius: 0.2rem;
}
</style>
