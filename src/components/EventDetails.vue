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

    <event-tasks :tasks="tasks" />
  </div>
</template>

<script>
import EventTasks from "../components/EventTasks";

export default {
  components: {
    EventTasks
  },
  props: {
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
