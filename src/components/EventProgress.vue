<template>
  <div class="progress">
    <ul v-if="targets.length" class="list-unstyled targets">
      <li
        v-for="t in targets"
        :key="t.target"
        v-b-tooltip.html
        :class="t.target > points ? 'pending' : 'complete'"
        :style="targetStyle(t.target)"
        :title="targetTooltip(t)"
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

    <div
      v-if="targets.length"
      class="progress-bar bg-warning"
      :style="{ width: pointsPercent }"
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
    completed: {
      type: Array,
      default: () => []
    },
    max: {
      type: Number,
      default: 1
    },
    targets: {
      type: Array,
      default: () => []
    },
    tasks: {
      type: Array,
      default: () => []
    }
  },
  computed: {
    points() {
      return this.completed.length
        ? this.sum(this.completed.map(t => t.rewardQty))
        : 0;
    },
    pointsPercent() {
      return !this.points ? 0 : (this.points / this.obtainable) * 100 + "%";
    },
    obtainable() {
      return this.sum(this.tasks.map(t => t.rewardQty));
    }
  },
  methods: {
    sum(values) {
      return values.reduce((a, b) => a + b, 0);
    },
    targetStyle(target) {
      const width = (target / this.obtainable) * 100;

      return "left: calc(" + width + "% - 2px)";
    },
    targetTooltip(t) {
      const colour = t.target <= this.points ? "warning" : "secondary",
        badgeClass = "badge badge-lg badge-" + colour,
        badge = '<span class="' + badgeClass + '">' + t.target + "</span>",
        qty = t.qty ? t.qty + " " : "";

      return qty + t.reward + "<h5>" + badge + "</h5>";
    }
  }
};
</script>

<style scoped type="sass">
.progress {
  height: 8px;
  overflow: visible;
  position: relative;
}
.progress-bar {
  left: 0;
  position: absolute;
  height: 4px;
}
.progress-bar.bg-warning {
  top: 4px;
}
.targets li {
  background: #ffc107;
  border: 1px solid #ffc106;
  border-radius: 3px;
  box-shadow: 0px 0px 1px 1px #999;
  opacity: 0.7;
  margin-left: -0.5px;
  position: absolute;
  height: 12px;
  width: 6px;
  top: -2px;
  z-index: 1;
}
.targets li.pending {
  background: #ddd;
  border: 1px solid #ccc;
  box-shadow: 0px 0px 1px 1px #aaa;
}
</style>
