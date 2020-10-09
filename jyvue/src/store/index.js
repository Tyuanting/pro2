import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    showname:false,
    currentuser:null
  },
  getters:{
    getshowname:state => state.showname,
    getcurrentuser:state => state.currentuser
  },
  mutations: {

    userStatus(state,user){
      if(user){
        state.currentuser = user;
        state.showname = true
      }else{
        state.currentuser - null;
        state.showname = false
      }
    },

    setcommit(state,data){
      state.commitsum = data
    },
    remove(state,data){
      state.commitsum.forEach((item,index)=>{
        if(item == data){
          state.commitsum.splice(index,1)
        }
      });
    }
  },
  actions: {
    setUser({ commit},user){
      commit("userStatus",user)
    }
  },
  modules: {
  }
})
