<template>
  <div class="progress">
    <ul v-if="targets.length" class="list-unstyled targets">
      <li
        v-for="t in targets"
        :key="t.target"
        :style="targetStyle(t.target)"
        :title="t.target + ' points: ' + t.qty + 'x ' + t.reward"
      />
    </ul>

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
    },
    targets: {
      type: Array,
      default: () => []
    }
  },
  methods: {
    targetStyle(target) {
      let max = Math.max(...this.targets.map(t => t.target)),
        width = (target / max) * 100;

      return "left: calc(" + width + "% - 2px)";
    }
  }
};
</script>

<style scoped type="sass">
.progress {
  height: 4px;
  overflow: visible;
  position: relative;
}
.targets li {
  background: white;
  border: 1px solid black;
  border-radius: 4px;
  position: absolute;
  height: 8px;
  width: 8px;
  top: -3px;
  z-index: 1;
}
</style>
