<template>
  <div>
    <span v-if="readonly" :class="position" @click="showInput(position)">
      {{ current }} of {{ target }}
    </span>
    <input
      v-else
      :ref="position"
      type="number"
      :value="current"
      :class="position + ' form-control-sm'"
      @keyup.enter="edit"
    />
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
    },
    position: {
      type: String,
      default: ""
    },
    readonly: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    edit($event) {
      this.$emit("update:current", parseInt($event.target.value));
      this.$emit("update:readonly", true);
    },
    showInput(input) {
      this.$emit("update:readonly", false);
      this.$nextTick(() => this.$refs[input].focus());
    }
  }
};
</script>

<style scoped type="sass">
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
span.outer {
  margin-left: 5px;
  line-height: 24px;
}
</style>
