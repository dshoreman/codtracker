<template>
  <div>
    <event-details
      v-for="ev in events"
      :key="ev.name"
      :name="ev.name"
      :end-time="ev.end"
    />
  </div>
</template>

<script>
import eventsJson from "../../data/events.json";
import EventDetails from "../components/EventDetails";

export default {
  components: {
    EventDetails
  },
  data() {
    return {
      events: eventsJson
    };
  }
};
</script>
