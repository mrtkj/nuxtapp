<template>
  <div class="container">
    <div>
      <logo />
      <h1 class="title">
        login
      </h1>
      <h2 class="subtitle">
        nuxtapp login
      </h2>
      <div class="body">
        <InputText v-model="accountId" class="m-5" />
      </div>
    </div>
  </div>
</template>

<script>
import InputText from "~/components/form/InputText"

export default {
  components: {
    InputText,
  },
  data: function () {
    return {
      accountId: "",
    }
  },
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: "Quicksand", "Source Sans Pro", -apple-system, BlinkMacSystemFont,
    "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
