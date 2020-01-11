import Vue from 'vue/dist/vue.js'
import Main from './components/Main.vue'
import './main.scss'

let app = new Vue({
  el: '#app',
  components: { 
    'app': Main 
  }
});