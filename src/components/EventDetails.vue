<template>
  <div class="card">
    <div class="card-header" @click="visible = !visible">
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
    </div>

    <div v-show="visible" class="card-body p-0">
      <div v-if="tasks.length" class="list-group list-group-flush">
        <div v-for="task in tasks" :key="task.id" class="list-group-item">
          <div class="row">
            <div class="col-sm-6">
              {{ task.description }}
            </div>
            <div class="col-sm-6">
              <task-progress
                :target="task.target"
                :current.sync="eventProgress[task.id]"
                @update:current="syncProgress(task.id, $event)"
              />
            </div>
          </div>
        </div>
      </div>
      <p v-else class="text-center pt-3">
        No tasks available for {{ name }} at this time.
      </p>
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
    id: {
      type: Number,
      default: 0
    },
    name: {
      type: String,
      default: ""
    },
    endTime: {
      type: String,
      default: ""
    },
    tasks: {
      type: Array,
      default: () => []
    }
  },
  data() {
    return {
      eventProgress: {},
      visible: true
    };
  },
  mounted() {
    let data = localStorage.getItem("ctEvent" + this.id);

    if (data) {
      this.eventProgress = JSON.parse(data);
    }
  },
  methods: {
    syncProgress(task, progress) {
      this.eventProgress[task] = progress;

      let json = JSON.stringify(this.eventProgress);
      localStorage.setItem("ctEvent" + this.id, json);
    }
  }
};
</script>
