<template>
  <header class="py-3" :style="styles">
    <v-btn
      text
      icon
      x-large
      class="back-btn"
      @click="onPushBackBtn"
    >
      <v-icon>
        mdi-chevron-left
      </v-icon>
    </v-btn>
    <h2 class="text-center">
      <slot />
    </h2>
  </header>
</template>
<script>
export default {
  name: 'DetailHeaderComponent',
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
  },
  methods: {
    onPushBackBtn () {
      this.$router.go(-1)
    }
  }
}
</script>
<style lang="scss" scoped>
header {
  background-color: var(--color);
  display: flex;
  align-items: center;
  justify-content: flex-start;
}
</style>
