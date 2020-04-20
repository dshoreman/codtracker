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

<script>
export default {
  data() {
    return {
      showCompleted: true
    };
  }
};
</script>
