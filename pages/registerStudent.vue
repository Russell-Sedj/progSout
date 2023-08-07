<!-- https://flowbite.com/docs/components/forms -->

<template>
  <div
    class="md:flex md:justify-center md:items-center mt-11 mb-9 md:mb-4 lg:mt-20"
  >
    <div class="m-3 md:w-3/4 lg:w-2/4 md:h-96">
      <h1 class="text-gray-700 font-bold text-2xl mb-6">Inscription</h1>
      <form @submit.prevent="addStudent">
        <div class="grid md:grid-cols-2 md:gap-6">
          <div class="relative z-0 w-full mb-8 group">
            <input
              type="text"
              name="floating_last_name"
              id="floating_last_name"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              v-model="lastname"
            />
            <label
              for="floating_last_name"
              class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
              >Nom</label
            >
          </div>
          <div class="relative z-0 w-full mb-8 group">
            <input
              type="text"
              name="floating_first_name"
              id="floating_first_name"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              v-model="firstname"
            />
            <label
              for="floating_first_name"
              class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
              >Prenom</label
            >
          </div>
        </div>
        <div class="relative z-0 w-full mb-8 group">
          <input
            type="email"
            name="floating_email"
            id="floating_email"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
            v-model="email"
          />
          <label
            for="floating_email"
            class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Adresse email</label
          >
        </div>

        <div class="grid md:grid-cols-2 md:gap-6">
          <div class="relative z-0 w-full mb-8 group">
            <input
              type="tel"
              name="floating_phone"
              id="floating_phone"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              v-model="telephone"
            />
            <label
              for="floating_phone"
              class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
              >Numero de telephone</label
            >
          </div>

          <div class="relative z-0 w-full mb-8 group">
            <input
              type="text"
              name="floating_address"
              id="floating_address"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              v-model="address"
            />
            <label
              for="floating_address"
              class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
              >Adresse</label
            >
          </div>
        </div>
        <div class="relative z-0 w-full mb-8 group">
          <input
            type="text"
            name="floating_filiere"
            id="floating_filiere"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            v-model="field"
          />
          <label
            for="floating_filiere"
            class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Filiere</label
          >
        </div>
        <button
          type="submit"
          class="text-white focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center"
        >
          Valider
        </button>
      </form>
    </div>
  </div>
</template>

<script setup>
const lastname = ref("");
const firstname = ref("");
const email = ref("");
const telephone = ref(null);
const address = ref("");
const field = ref("");

const student = ref({
  lastname: "",
  firstname: "",
  email: "",
  telephone: null,
  address: "",
  field: "",
});

async function addStudent() {
  let added = null;
  if (
    email.value &&
    firstname.value &&
    lastname.value &&
    telephone.value &&
    address.value
  )
    added = await $fetch("/api/student/student", {
      method: "POST",
      body: {
        firstname: firstname.value,
        lastname: lastname.value,
        email: email.value,
        telephone: telephone.value,
        address: address.value,
        field: field.value,

        // lastname: "Drago",
        // firstname: "pioo",
        // email: "greadu@",
        // telephone: 12345,
        // address: "zopah",
      },
    });
  if (added) {
    console.log("it addedddd:", added);
  }
  if (!added) {
    console.log("noooo no:", added);
  }
}
</script>

<style scoped>
button {
  background-color: #3da019;
}
button:hover {
  background-color: #2b7810;
}
</style>
