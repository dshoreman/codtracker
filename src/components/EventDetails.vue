<template>
  <div class="card">
    <div class="card-header" @click="visible = !visible">
      <div class="row">
        <div class="col-sm-6">
          <h5 class="mb-0">{{ name }}</h5>
          <small>
            ending on
            <time :datetime="endTime">
              <strong>{{ endTime }}</strong>
            </time>
          </small>
        </div>
        <div class="col-sm-6 text-right">
          <h4>Completed {{ completed }} of {{ tasks.length }}</h4>
        </div>
      </div>
    </div>

    <event-progress :current="combinedProgress" :max="totalProgress" />

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
import EventProgress from "./EventProgress";
import TaskProgress from "./TaskProgress";

export default {
  components: {
    EventProgress,
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
  computed: {
    combinedProgress() {
      let progress = Object.values(this.eventProgress);

      return progress.length ? progress.reduce((a, b) => a + b) : 0;
    },
    completed() {
      let completed = 0;
      Object.entries(this.eventProgress).forEach(([task, progress]) => {
        let t = this.tasks.find(t => t.id == task);

        if (t && t.target == progress) {
          completed++;
        }
      });
      return completed;
    },
    totalProgress() {
      let counts = this.tasks.map(task => task.target);

      return counts.length ? counts.reduce((a, b) => a + b) : 0;
    }
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

<style scoped type="sass">
.progress {
  height: 4px;
}
</style>
