<template>
  <div class="inputText">
    <input v-model="value" />
  </div>
</template>

<script>
export default {
  name: "InputText",
  props: {
    value: {
      type: String,
      required: false,
      default: "",
    },
  },
}
</script>
