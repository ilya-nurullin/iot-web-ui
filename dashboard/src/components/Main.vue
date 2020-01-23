<template lang="pug">
  div
    h1.text-center Панель управления сценариями
    scenario-list.scenario-list
    
</template>

<script>
  export default {
    data() {
      return {
      };
    },
    components: {
      'scenario-list': require('./Scenario-List.vue').default,
    }
  }
</script>

<style lang="scss" scoped>
  .scenario-list {
    display: flex;
    width: 50%;
    margin: 0 auto;
    flex-wrap: wrap;
  }
</style>