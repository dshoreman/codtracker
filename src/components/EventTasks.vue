<template>
  <ul>
    <li v-for="task in tasks" :key="task.description">
      {{ task.description }}
      <task-progress :target="task.target" />
    </li>
  </ul>
</template>

<script>
import TaskProgress from "./TaskProgress";

export default {
  components: {
    TaskProgress
  },
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
