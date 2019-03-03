<template>
  <div class="cursor-pointer text-white text-lg">
    <i class="fas fa-bars p-2" @click="open"></i>
  </div>
</template>

<script>
export default {
  name: 'UIOpenMenu',
  methods: {
    open() {
      this.$store.commit(
        'eventDispatch',
        'open-menu',
        { context: this }
      )
    }
  }
}
</script>