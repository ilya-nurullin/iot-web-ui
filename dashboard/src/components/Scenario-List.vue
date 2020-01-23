<template lang="pug">
  div
    scenario(v-for="(scen, index) in scenarios", :scenario="scen", :key="index")
</template>

<script>
  export default {
    data() {
      return {
        'scenarios': [{'script_id': 13, 'script_title': 'My script', is_enabled: true}, {'script_id': 13, 'script_title': 'My script', is_enabled: true},{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},,{'script_id': 13, 'script_title': 'My script', is_enabled: true},]
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