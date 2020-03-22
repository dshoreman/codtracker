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
      <event-tasks v-if="tasks.length" :event="id" :tasks="tasks" />
      <p v-else class="text-center pt-3">
        No tasks available for {{ name }} at this time.
      </p>
    </div>
  </div>
</template>

<script>
import EventTasks from "../components/EventTasks";

export default {
  components: {
    EventTasks
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
      visible: true
    };
  }
};
</script>
