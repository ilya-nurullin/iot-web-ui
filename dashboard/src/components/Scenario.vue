<template lang="pug">
  .scenario
    p ID = {{ scenario.script_id }}
    p Name = {{ scenario.script_title }}
    p 
      | Is Enabled =
      switcher(@change="changeStatus", :propChecked="scenario.is_enabled")
</template>

<script>
  export default {
    props: ['scenario'],
    components: {
      'switcher': require('./Slider.vue').default
    },
    methods: {
      changeStatus(checked) {
        axios.get(routes.changeStatus(this.scenario.script_id, checked));
      },
    }
  }
</script>

<style lang="scss" scoped>
  .scenario {
    background: #27293d;
    border-radius: 10px;
    width: 100%;
    margin: 1rem 0;
    padding: 1rem;
  }
</style>