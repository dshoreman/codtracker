<template>
  <div id="app" class="container-xl">
    <nav class="navbar navbar-dark bg-dark">
      <router-link to="/" class="navbar-brand">
        COD Mobile: Event Progress Tracker
      </router-link>
      <input type="checkbox" checked @click="showCompleted = !showCompleted" />
    </nav>
    <router-view :show-completed="showCompleted" />
  </div>
</template>

<style scope type="sass">
#app {
  padding-bottom: 4rem;
}
</style>

<script>
export default {
  data() {
    return {
      showCompleted: true
    };
  }
};
</script>
