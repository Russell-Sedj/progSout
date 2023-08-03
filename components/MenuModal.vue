<template>
  <div class="backdrop">
    <ul v-for="(item, index) in nav_items" :key="index">
      <li class="my-5">
        <nuxt-link :to="item.link">{{ item.name }}</nuxt-link>
      </li>
    </ul>
  </div>
</template>

<script setup>
const { nav_items } = defineProps(["nav_items"]);
</script>

<style>
/* .backdrop {
  background-color: rgb(0, 0, 0, 0.5);
  position: fixed;
  top: 0;
  width: 100%;
  height: 100%;
} */
</style>
