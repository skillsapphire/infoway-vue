import Vue from 'vue'
import VueRouter from 'vue-router';
import VueAxios from 'vue-axios';
import axios from 'axios';
import NProgress from 'nprogress';
import App from './App.vue';

import About from './components/About.vue';
import Listing from './components/Listing.vue';
import Contact from './components/Contact.vue';

import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import '../node_modules/nprogress/nprogress.css';

import VueMaterial from 'vue-material'
//import 'vue-material/dist/theme/default-dark.css'
import '../node_modules/vue-material/dist/theme/default.css'
import '../node_modules/vue-material/dist/vue-material.min.css'
//https://vuematerial.io/components/toolbar
Vue.use(VueMaterial)

Vue.use(VueRouter);
Vue.use(VueAxios, axios);

Vue.config.productionTip = false

const routes = [
  {
    name: 'About',
    path: '/about',
    component: About
  },
  {
    name: 'Contact',
    path: '/contact',
    component: Contact
  },
  {
    name: 'Listing',
    path: '/',
    component: Listing
  },
];

const router = new VueRouter({ mode: 'history', routes: routes });

router.beforeResolve((to, from, next) => {
  if (to.name) {
      NProgress.start()
  }
  next()
});

router.afterEach(() => {
  NProgress.done()
});

new Vue({
  render: h => h(App),
  router
}).$mount('#app')