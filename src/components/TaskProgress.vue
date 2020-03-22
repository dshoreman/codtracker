<template>
  <div>
    <button
      class="btn btn-xs btn-danger float-left"
      @click="$emit('update:current', current - 1)"
    >
      -
    </button>
    <button
      class="btn btn-xs btn-success float-right"
      @click="$emit('update:current', current + 1)"
    >
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
      <span v-if="current / target < 0.5" class="outer">
        {{ current }} of {{ target }}
      </span>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    current: {
      type: Number,
      default: 0
    },
    target: {
      type: Number,
      default: 0
    }
  }
};
</script>

<style scoped type="sass">
.btn-group-xs > .btn,
.btn-xs {
  padding: 0.47rem 0.55rem;
  font-size: 0.875rem;
  line-height: 0.5;
  border-radius: 0.2rem;
}
.progress {
  height: 24px;
}
span.outer {
  margin-left: 5px;
  margin-top: 2px;
}
</style>
