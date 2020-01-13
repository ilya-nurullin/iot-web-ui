<template lang="pug">
  div
    scenario(v-for="(scen, index) in scenarios", :scenario="scen", :key="index").element
    button.element.create-scenario-btn Создать
</template>

<script>
  export default {
    data() {
      return {
        'scenarios': [{'id': '123', 'name': 'sName', 'code': 'asdasdas', 'isEnabled': true},
        {'id': '123', 'name': 'sName', 'code': 'asdasdas', 'isEnabled': true},
        {'id': '124', 'name': 'sName1', 'code': 'asdasdas1', 'isEnabled': false},
        {'id': '125', 'name': 'sName2', 'code': 'asdasdas2', 'isEnabled': false},
        {'id': '126', 'name': 'sName3', 'code': 'asdasdas3', 'isEnabled': false}]
      };
    },
    components: {
      'scenario': require('./Scenario.vue').default
    }
  }
</script>

<style lang="scss" scoped>
  .element{
    width:15vw;
    border-radius: 10px;
    margin: 1rem;
  }
  .create-scenario-btn{
    background: #27293d;
    color: white;
  }
</style>