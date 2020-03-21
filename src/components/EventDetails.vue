<template>
  <div class="row">
    <div class="col-sm-6">
      <strong>{{ name }} </strong>
    </div>
    <div class="col-sm-6 text-right">
      ending on
      <time :datetime="endTime">
        <strong>{{ endTime }}</strong>
      </time>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    name: {
      type: String,
      default: ""
    },
    endTime: {
      type: String,
      default: ""
    }
  }
};
</script>
