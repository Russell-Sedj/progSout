<template>
  <div class="flex items-center justify-center mx-3">
    <div>
      <div class="flex items-center justify-center text-xl md:text-2xl my-6">
        <strong class="font-bold text-5xl text-red-600 mr-2">! </strong> Date
        limite de depot : 20 Mars 2023
      </div>

      <div class="mb-5">
        <p class="font-bold text-xl md:text-2xl mb-3">FAQ</p>
        <ol>
          <li>
            <p>
              Q: Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa,
              cumque.
            </p>
            <p>
              R: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Aliquid!
            </p>
          </li>
          <li>
            <p>
              Q: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Dolorum est deserunt ex?
            </p>
            <p>
              R: Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Facere, in? Molestias!
            </p>
          </li>
          <li>
            <p>
              Q: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Dolorum est deserunt ex?
            </p>
            <p>
              R: Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Facere, in? Molestias!
            </p>
          </li>
          <li>
            <p>
              Q: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Dolorum est deserunt ex?
            </p>
            <p>
              R: Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Facere, in? Molestias!
            </p>
          </li>
          <li>
            <p>
              Q: Lorem ipsum dolor sit amet consectetur adipisicing elit.
              Dolorum est deserunt ex?
            </p>
            <p>
              R: Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Facere, in? Molestias!
            </p>
          </li>
        </ol>
      </div>
    </div>
  </div>
</template>

<script setup>
definePageMeta({
  auth: {
    unauthenticatedOnly: false,
    navigateAuthenticatedTo: "/",
  },
});
</script>
