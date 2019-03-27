<template>
  <div class="pin-t pin-r absolute cursor-pointer mr-8 mt-8 text-white z-50 text-lg">
    <i class="fas fa-times p-2" @click="close"></i>
  </div>
</template>

<script>
export default {
  name: 'UICloseMenu',
  methods: {
    close() {
      this.$store.commit(
        'eventDispatch',
        'close-menu',
        { context: this }
      )
    }
  }
}
</script>