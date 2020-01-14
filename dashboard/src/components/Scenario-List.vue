<template lang="pug">
  div
    scenario(v-for="(scen, index) in scenarios", :scenario="scen", :key="index")
</template>

<script>
  export default {
    data() {
      return {
        'scenarios': [{'id': '123', 'name': 'sName', 'code': 'asdasdas', 'isEnabled': true}]
      };
    },
    components: {
      'scenario': require('./Scenario.vue').default
    },
    created() {
      axios.get(routes.allScripts).then(response => this.scenarios = response.data);
    }
  }
</script>