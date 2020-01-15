import Vue from 'vue/dist/vue.js'
import Main from './components/Main.vue'
import './main.scss'

window.axios = require('axios').default;

window.env = {
  'serverAddress': 'http://localhost:8999',
};

window.routes = {
  'allScripts': env.serverAddress + '/script/all',
  changeStatus: (scriptId, status) => env.serverAddress + '/script/change_status/'+scriptId+'/'+status,
}

window.app = new Vue({
  el: '#app',
  components: { 
    'app': Main 
  }
});