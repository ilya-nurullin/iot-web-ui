<template lang="pug">
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
  }
</style>