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

    <div :class="'progress ' + innerOrOuter" @click="showInput(innerOrOuter)">
      <div
        :class="(readonly ? '' : 'focused ') + 'progress-bar bg-secondary'"
        role="progressbar"
        :style="'width: ' + (current / target) * 100 + '%'"
        :aria-valuenow="current"
        :aria-valuemax="target"
        aria-valuemin="0"
      >
        <progress-value
          v-show="showInner"
          ref="inner"
          :current="current"
          :target="target"
          :readonly.sync="readonly"
          @update:current="$emit('update:current', $event)"
        />
      </div>
      <progress-value
        v-show="!showInner"
        ref="outer"
        :current="current"
        :target="target"
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
  },
  computed: {
    innerOrOuter() {
      return this.showInner ? "inner" : "outer";
    },
    showInner() {
      return this.current / this.target >= 0.5;
    }
  },
  methods: {
    showInput(position) {
      if (this.readonly) {
        this.readonly = false;
      }

      let refs = this.$refs[position].$refs;
      this.$nextTick(() => refs.input.focus());
    }
  }
};
</script>

<style scoped type="sass">
.progress {
  height: 24px;
}
.progress-bar.focused {
  background: #4a535b !important;
  border: 2px solid rgba(0, 0, 0, 0.5);
}
</style>
