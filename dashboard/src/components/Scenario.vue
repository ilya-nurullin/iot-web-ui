<template lang="pug">
  .scenario
    p ID = {{ scenario.id }}
    p Name = {{ scenario.name }}
    p 
      | Code = 
      code {{ scenario.id }}
    p Is Enabled = {{ scenario.isEnabled }}
</template>

<script>
  export default {
    props: ['scenario']
  }
</script>

<style lang="scss" scoped>
  .scenario {
    background: #27293d;
    border-radius: 10px;
    width: 100%;
    margin: 1rem 0;
  }
</style>