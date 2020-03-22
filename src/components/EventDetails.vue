<template>
  <div class="card mb-3">
    <div class="card-header">
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

    <div class="card-body p-0">
      <event-tasks :event="id" :tasks="tasks" />
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
  }
};
</script>
