<template>
  <div class="list-group list-group-flush">
    <div v-for="task in tasks" :key="task.id" class="list-group-item">
      <div class="row">
        <div class="col-sm-6">
          {{ task.description }}
        </div>
        <div class="col-sm-6">
          <task-progress :target="task.target" />
        </div>
      </div>
    </div>
  </div>
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
