<template lang="pug">
  div
    h1(align='center') Сценарии
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
    flex-direction: row;
    flex-wrap: wrap;
  }
</style>