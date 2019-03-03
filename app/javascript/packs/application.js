/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import "../css/tailwind.js"
import "../css/application.css"
import Vue from 'vue'
import store from './site/store'
import components from './site/components'

const app = new Vue({
  components,
  store,
  el: '#app',
  data: {},
  mounted () {
    this.$store.state.eventBus.$on('close-menu', (context) => {
      this.toogleMenu()
    })
    this.$store.state.eventBus.$on('open-menu', (context) => {
      this.toogleMenu()
    })
  },
  methods: {
    toogleMenu () {
      const menu = this.$el.querySelector('#menu')
      if (menu.classList.contains('hidden')) {
        menu.classList.remove('hidden')
      } else {
        menu.classList.add('hidden')
      }
    }
  }
})