<template lang="pug">
  .scenario
    p ID = {{ scenario.id }}
    p Name = {{ scenario.name }}
    p 
      | Is Enabled =
      switcher(@change="changeStatus")
</template>

<script>
  export default {
    props: ['scenario'],
    components: {
      'switcher': require('./Slider.vue').default
    },
    methods: {
      changeStatus(checked) {
        axios.get(routes.changeStatus(this.scenario.name, checked));
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