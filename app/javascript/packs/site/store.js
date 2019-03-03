import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    eventBus: new Vue
  },
  mutations: {
    eventDispatch(state, name, options = {}) {
      state.eventBus.$emit(name, options)
    }
  }
})

export default store;