<template>
  <div>
    <event-details
      v-for="ev in events"
      :key="ev.name"
      :name="ev.name"
      :end-time="ev.end"
      :tasks="findTasks(ev.name)"
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
  data() {
    return {
      events: eventsJson
    };
  },
  methods: {
    findTasks: name => {
      let event = tasksJson.find(task => task.event == name);

      return event ? event.tasks : [];
    }
  }
};
</script>
