<template>
  <div>
    <event-details
      v-for="ev in events"
      :id="ev.id"
      :key="ev.id"
      :name="ev.name"
      :end-time="ev.end"
      :tasks="findTasks(ev.id)"
      :show-completed="showCompleted"
    />
  </div>
</template>

<script>
import eventsJson from "../../data/events.json";
import EventDetails from "../components/EventDetails";
import tasksJson from "../../data/event_tasks.json";

export default {
  components: {
    EventDetails
  },
  props: {
    showCompleted: {
      type: Boolean,
      default: true
    }
  },
  data() {
    return {
      events: eventsJson
    };
  },
  methods: {
    findTasks: id => {
      let event = tasksJson.find(task => task.event == id);

      return event ? event.tasks : [];
    }
  }
};
</script>
