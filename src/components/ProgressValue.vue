<template>
  <div>
    <span v-if="readonly">{{ current }} of {{ target }}</span>
    <input
      v-else
      ref="input"
      type="number"
      :value="current"
      class="form-control-sm"
      @focus="$event.target.select()"
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
    readonly: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    edit($event) {
      this.$emit("update:current", parseInt($event.target.value));
      this.$emit("update:readonly", true);
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
.inner input {
  color: #fff;
  margin: 0 auto;
  text-align: center;
}
.outer span {
  margin-left: 5px;
  line-height: 24px;
}
</style>
