<template>
  <div>
    <button
      class="btn btn-xs btn-light float-left"
      @click="$emit('update:current', current - 1)"
    >
      -
    </button>
    <button
      class="btn btn-xs btn-light float-right"
      @click="$emit('update:current', current + 1)"
    >
      +
    </button>
    <div class="progress">
      <div
        :class="(readonly ? '' : 'focused ') + 'progress-bar bg-secondary'"
        role="progressbar"
        :style="'width: ' + (current / target) * 100 + '%'"
        :aria-valuenow="current"
        :aria-valuemax="target"
        aria-valuemin="0"
      >
        <progress-value
          v-if="current / target >= 0.5"
          :current="current"
          :target="target"
          position="inner"
          :readonly.sync="readonly"
          @update:current="$emit('update:current', $event)"
        />
      </div>
      <progress-value
        v-if="current / target < 0.5"
        :current="current"
        :target="target"
        position="outer"
        :readonly.sync="readonly"
        @update:current="$emit('update:current', $event)"
      />
    </div>
  </div>
</template>

<script>
import ProgressValue from "./ProgressValue";

export default {
  components: {
    ProgressValue
  },
  props: {
    current: {
      type: Number,
      default: 0
    },
    target: {
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      readonly: true
    };
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
.progress-bar.focused {
  background: #4a535b !important;
  border: 2px solid rgba(0, 0, 0, 0.5);
}
</style>
