<template lang="pug">
  .scenario(:class="{'enabled': is_enabled}", @click="toogleIsEnabled")
    p ID = {{ scenario.script_id }}
    p Name = {{ scenario.script_title }}
    p Is Enabled = {{ this.is_enabled }}
</template>

<script>
  export default {
    props: ['scenario'],
    data() {
      return {
        'is_enabled': this.scenario.is_enabled
      }
    },
    components: {
      'switcher': require('./Slider.vue').default,
    },
    methods: {
      changeStatus(checked) {
        axios.get(routes.changeStatus(this.scenario.script_id, checked));
        this.is_enabled = checked
      },
      toogleIsEnabled() {
        this.changeStatus(!this.is_enabled);
      }
    }
  }
</script>

<style lang="scss" scoped>
  .scenario {
    background: #383b54;
    border-radius: 10px;
    width: 25%;
    margin: 1rem;
    padding: 1rem;
    cursor: pointer;
  }
  .scenario.enabled {
    background: #00af00;;
  }
</style>