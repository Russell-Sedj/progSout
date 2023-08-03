<template>
  <div>
    <header class="flex justify-between items-center h-16 z-10 font-mono">
      <nuxt-link to="/" class="font-bold text-2xl md:text-3xl ml-1"
        >Easy Manager</nuxt-link
      >

      <ul class="w-auto font-semibold hidden md:flex">
        <li class="mx-2">
          <nuxt-link to="/">Acceuil</nuxt-link>
        </li>
        <li class="mx-2">
          <nuxt-link to="/login">Connexion</nuxt-link>
        </li>
        <li class="mx-2">
          <nuxt-link to="/about">A propos</nuxt-link>
        </li>
      </ul>

      <div
        class="self-start md:hidden z-20"
        :class="{
          'text-3xl': isMenuOpen,
          'full--menu': isMenuOpen,
          'h-screen': isMenuOpen,
          'w-screen': isMenuOpen,
          flex: isMenuOpen,
          'justify-center': isMenuOpen,
          'items-center': isMenuOpen,
        }"
      >
        <div :class="{ 'mt-5': !isMenuOpen, 'mr-2': !isMenuOpen }">
          <div @click="toggleMenu" class="font-bold">
            {{ menu_text }}
          </div>

          <MenuModal
            class="full--menu mt-2"
            v-if="isMenuOpen"
            :nav_items="nav_items"
            @click="toggleMenu"
          />
        </div>
      </div>
    </header>

    <!-- <aside class=" ">
        <div class="h-full px-3 py-4 overflow-y-auto">
          <ul class="space-y-2 font-medium">
            <li>
              <a href="#" class="flex items-center p-2">
                <span class="ml-3">Dashboard</span>
              </a>
            </li>
            <li>
              <a href="#" class="flex items-center p-2">
                <span class="flex-1 ml-3 whitespace-nowrap">Kanban</span>
              </a>
            </li>
          </ul>
        </div>
      </aside> -->

    <main>
      <slot />
    </main>

    <footer
      class="flex justify-between items-center text-xs px-2 h-12 relative bottom-0 w-full z-10"
    >
      <p>&copy;2021 Easy Manager. All rights reserved.</p>
      <div>
        <p class="text-center">+229 12 34 56 78</p>
        <p class="text-center">easymanager@gmail.com</p>
      </div>
    </footer>
  </div>
</template>

<script setup>
const menu_text = ref("MENU");
const isMenuOpen = ref(false);

onUpdated(() => {
  if (isMenuOpen.value) {
    document.body.style.overflow = "hidden";
  } else {
    document.body.style.overflow = "auto";
  }
});

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value;
  menu_text.value = isMenuOpen.value ? "FERMER" : "MENU";
};

const nav_items = [
  {
    name: "Acceuil",
    link: "/",
  },
  {
    name: "Connexion",
    link: "/login",
  },
  {
    name: "A propos",
    link: "/about",
  },
];
</script>

<style scoped>
header {
  color: #2b7810;
  background-color: #dac6c6;
}

footer {
  color: #2c2c2c;
  background-color: #e3bdbd;
}

aside {
  background-color: #e6f8a0;
}

.full--menu {
  background-color: #e6f8a0;
}
</style>
