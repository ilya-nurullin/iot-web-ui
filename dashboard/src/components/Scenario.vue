<template lang="pug">
  .scenario
    p ID = {{ scenario.id }}
    p Name = {{ scenario.name }}
    p 
      | Code = 
      code {{ scenario.id }}
    p Is Enabled = {{ scenario.isEnabled }}
    button(v-if="scenario.isEnabled") Остановить
    button(v-if="!scenario.isEnabled") Запустить
    button Изменить
    button Удалить
</template>

<script>
  export default {
    props: ['scenario']
  }
</script>

<style lang="scss" scoped>
  .scenario {
    display: flex;
    flex-direction: column;
    background: #27293d;
    p, button{
      margin-left: 1rem;
      margin-right: 1rem;
    }
    button{
      border-radius: 10px;
    }
    p{
      margin-block-end: 0;
    }
  }
</style>