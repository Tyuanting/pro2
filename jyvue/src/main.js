import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'


import MyHeader from "./components/MyHeader"

import axios from "axios"

Vue.component("my-header",MyHeader)
axios.defaults.baseURL="/api";
// axios.defaults.baseURL="http://127.0.0.1:5050";
Vue.prototype.axios=axios;

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
