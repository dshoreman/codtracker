<template>
  <div>
    <div class="card">
      <div class="card-body">
        <blockquote class="blockquote">
          <p>
            If you've just started to play <em>Call of Duty: Mobile</em> or have
            a lot of tasks backed up, it can be easy to lose track.<br />
            This page keeps all the events in one place so you can easily see
            your progress and which tasks to do next.
          </p>
          <ul>
            <li>
              Click or tap on a progress bar to set current progress, press
              enter to save
            </li>
            <li>
              Hover over the "blobs" on an event's progress bar to see target
              rewards
            </li>
            <li>
              Uncheck the top-right box to automatically hide completed tasks
            </li>
          </ul>
        </blockquote>
      </div>
    </div>
    <event-details
      v-for="e in featuredEvents"
      :id="e.event"
      :key="e.event"
      :name="e.name"
      :end-time="e.end"
      label="Featured"
      label-colour="warning"
      :targets="e.targets"
      :tasks="e.tasks"
      :show-completed="showCompleted"
    />
    <event-details
      v-for="ev in currentEvents"
      :id="ev.id"
      :key="ev.id"
      :name="ev.name"
      :end-time="ev.end"
      :targets="ev.targets"
      :tasks="findTasks(ev.id)"
      :show-completed="showCompleted"
    />
  </div>
</template>

<script>
import eventsJson from "../../data/events.json";
import featuredJson from "../../data/featured.json";
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
      events: eventsJson,
      featured: featuredJson
    };
  },
  computed: {
    currentEvents() {
      return this.events.filter(e => this.$moment().isBefore(e.end));
    },
    featuredEvents() {
      return this.featured.filter(e => this.$moment().isBefore(e.end));
    }
  },
  methods: {
    findTasks: id => {
      let event = tasksJson.find(task => task.event == id);

      return event ? event.tasks : [];
    }
  }
};
</script>
