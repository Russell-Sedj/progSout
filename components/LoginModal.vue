<template>
  <div class="">
    <div class="rounded-lg full--login p-5">
      <div>
        <h1 class="text-center">Connectez-vous</h1>
        <div class="mt-6">
          <p class="mb-2">E-mail</p>
          <input type="email" required />
        </div>
        <div class="mt-6">
          <p class="mb-2">Mot de passe</p>
          <input type="password" required />
        </div>
        <div class="mt-12 text-center">
          <button
            class="bg-green-700 hover:bg-green-900 text-white font-bold py-2 px-4 rounded-lg"
          >
            Se connecter
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.full--login {
  background-color: #d9f07c;
}
</style>
