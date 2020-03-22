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
        <template v-if="current / target >= 0.5">
          <span
            v-if="readonly"
            @click="
              readonly = false;
              $nextTick(() => $refs.inner.focus());
            "
          >
            {{ current }} of {{ target }}
          </span>
          <input
            v-else
            ref="inner"
            type="number"
            :value="current"
            class="inner form-control-sm"
            @keyup.enter="edit"
          />
        </template>
      </div>
      <template v-if="current / target < 0.5">
        <span
          v-if="readonly"
          class="outer"
          @click="
            readonly = false;
            $nextTick(() => $refs.outer.focus());
          "
        >
          {{ current }} of {{ target }}
        </span>
        <input
          v-else
          ref="outer"
          type="number"
          :value="current"
          class="form-control-sm"
          @keyup.enter="edit"
        />
      </template>
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
  },
  data() {
    return {
      readonly: true
    };
  },
  methods: {
    edit($event) {
      this.$emit("update:current", parseInt($event.target.value));
      this.readonly = true;
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
.progress-bar.focused {
  background: #4a535b !important;
  border: 2px solid rgba(0, 0, 0, 0.5);
}
span.outer {
  margin-left: 5px;
  margin-top: 2px;
}
input {
  background-color: rgba(0, 0, 0, 0);
  border: none;
  height: 24px;
  width: 100px;
}
input.inner {
  color: #fff;
  margin: 0 auto;
  text-align: center;
}
</style>
