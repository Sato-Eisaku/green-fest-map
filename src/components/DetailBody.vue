<template>
  <p class="mx-10" v-text="detailText" />
</template>

<script>
export default {
  name: 'DetailBodyComponent',
  props: {
    detailText: {
      type: String,
      default: ''
    }
  }
}
</script>

<style scoped>
p {
  white-space: pre-wrap;
}
</style>
