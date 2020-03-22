<template>
  <div class="list-group list-group-flush">
    <div v-for="task in tasks" :key="task.id" class="list-group-item">
      <div class="row">
        <div class="col-sm-6">
          {{ task.description }}
        </div>
        <div class="col-sm-6">
          <task-progress
            :target="task.target"
            @changed="syncProgress(task.id, $event)"
          />
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
    event: {
      type: Number,
      default: 0
    },
    tasks: {
      type: Array,
      default: () => []
    },
    endTime: {
      type: String,
      default: ""
    }
  },
  data() {
    return {
      eventProgress: {}
    };
  },
  methods: {
    syncProgress(task, progress) {
      this.eventProgress[task] = progress;

      let json = JSON.stringify(this.eventProgress);
      localStorage.setItem("ctEvent" + this.event, json);
    }
  }
};
</script>
