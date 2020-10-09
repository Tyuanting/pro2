import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/index'
import Login from '../views/login'
import Register from '../views/register'
import Details from '../views/details'
import Products from '../views/products'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Index',
    component: Index
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/products/:kw',
    component:Products,
    props:true
  },
  {
    path: '/details/:pid',
    //暂时不要把Details.vue引入项目
    //只有当用户访问到details时，才将Details组件引入项目中
    //而且webpackChunkName:是在指示，将Details.vue文件单独打包压缩为一个文件。文件名为details
    component: () => import(
      /* webpackChunkName: "details" */ 
      '../views/details.vue'
    ),
    props:true
  }
  // {
  //   path: '/about',
  //   name: 'About',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  // }
]

const router = new VueRouter({
  routes
})

export default router
