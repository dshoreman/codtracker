<template>
  <ul>
    <li v-for="task in tasks" :key="task.description">
      {{ task.description }}
    </li>
  </ul>
</template>

<script>
export default {
  props: {
    tasks: {
      type: Array,
      default: () => []
    },
    endTime: {
      type: String,
      default: ""
    }
  }
};
</script>
