<template>
  <header class="py-3" :style="styles">
    <h1 class="text-center">
      <slot />
    </h1>
  </header>
</template>

<script>

export default {
  name: 'ListHeaderComponent',
  props: {
    color: {
      type: String,
      default: 'blue'
    }
  },
  computed: {
    styles () {
      return {
        '--color': this.color
      }
    }
  }
}
</script>

<style lang="scss" scoped>
header {
  background-color: var(--color);
}
</style>
