<!-- <template>
  <div>
    <form>
      <div class="relative z-0 w-full mb-6 group">
        <input
          type="email"
          name="floating_email"
          id="floating_email"
          class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
          placeholder=" "
          required
        />
        <label
          for="floating_email"
          class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
          >Email address</label
        >
      </div>
      <div class="relative z-0 w-full mb-6 group">
        <input
          type="password"
          name="floating_password"
          id="floating_password"
          class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
          placeholder=" "
          required
        />
        <label
          for="floating_password"
          class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
          >Password</label
        >
      </div>
      <div class="relative z-0 w-full mb-6 group">
        <input
          type="password"
          name="repeat_password"
          id="floating_repeat_password"
          class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
          placeholder=" "
          required
        />
        <label
          for="floating_repeat_password"
          class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
          >Confirm password</label
        >
      </div>
      <div class="grid md:grid-cols-2 md:gap-6">
        <div class="relative z-0 w-full mb-6 group">
          <input
            type="text"
            name="floating_first_name"
            id="floating_first_name"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
          />
          <label
            for="floating_first_name"
            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
            >First name</label
          >
        </div>
        <div class="relative z-0 w-full mb-6 group">
          <input
            type="text"
            name="floating_last_name"
            id="floating_last_name"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
          />
          <label
            for="floating_last_name"
            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
            >Last name</label
          >
        </div>
      </div>
      <div class="grid md:grid-cols-2 md:gap-6">
        <div class="relative z-0 w-full mb-6 group">
          <input
            type="tel"
            pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
            name="floating_phone"
            id="floating_phone"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
          />
          <label
            for="floating_phone"
            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
            >Phone number (123-456-7890)</label
          >
        </div>
        <div class="relative z-0 w-full mb-6 group">
          <input
            type="text"
            name="floating_company"
            id="floating_company"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
          />
          <label
            for="floating_company"
            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
            >Company (Ex. Google)</label
          >
        </div>
      </div>
      <button
        type="submit"
        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
      >
        Submit
      </button>
    </form>
  </div>
</template>

<script setup></script>

<style scoped></style> -->

<template>
  <div>
    <form>
      <label class="mx-3" for="">Name</label>
      <input v-model="lastname" type="text" /><br />
      <label class="mx-3" for="">prenom</label>
      <input v-model="firstname" type="text" /><br />
      <label class="mx-3" for="">email</label>
      <input v-model="email" type="text" /><br />
      <label class="mx-3" for="">telephone</label>
      <input v-model="telephone" type="text" /><br />
      <label class="mx-3" for="">address</label>
      <input v-model="address" type="text" /><br />
      <button class="bg-green-400" @click.prevent="addUser" type="submit">
        Valider
      </button>
    </form>

    <div v-for="(item, index) in student_list" :key="index">
      <p>Essai {{ index }}: {{ item }}</p>
    </div>
  </div>
</template>

<script setup>
const student_list = ref(null);
student_list.value = await $fetch("/api/student/student");

const lastname = ref("");
const firstname = ref("");
const email = ref("");
const telephone = ref();
const address = ref("");

async function addUser() {
  let addedUser = null;
  if (lastname && firstname && email && telephone && address) {
    addedUser = await useFetch("/api/student/", {
      method: "post",
      body: {
        lastname: lastname.value,
        firstname: firstname.value,
        email: email.value,
        telephone: telephone.value,
        address: address.value,
        // lastname: "Drago",
        // firstname: "pioo",
        // email: "zz@zz",
        // telephone: 12345,
        // address: "zopah",
      },
    });
  }
  if (addedUser) {
    student_list.value = await $fetch("/api/student/student");
  }
}

let x = [
  {
    data: [
      {
        id: "clkwclnph0000fxpw9r7ekn6p",
        created_at: "2023-08-04T08:52:56.000Z",
        updated_at: "2023-08-04T08:52:56.261Z",
        nom: "ttra",
        prenom: "aaa",
        email: "mig@gmail.com",
        password: "azerty",
        telephone: 12345,
        filiere: null,
        theme: null,
        date_presentation: null,
        salle_presentation: null,
        verdict: null,
        scolarite_paye: null,
        memoire_depose: null,
        theme_accepte: null,
        valide_UE: null,
        serviceExamenId: null,
        maitreMemoireId: null,
      },
      {
        id: "clkwd2xv30003fxpw09hv5pls",
        created_at: "2023-08-04T09:06:22.000Z",
        updated_at: "2023-08-04T14:44:16.441Z",
        nom: "tremble",
        prenom: "LeBeau",
        email: "migo@gmail.com",
        password: "azerty",
        telephone: 12345,
        filiere: null,
        theme: "La voie du samurai",
        date_presentation: null,
        salle_presentation: null,
        verdict: null,
        scolarite_paye: null,
        memoire_depose: null,
        theme_accepte: null,
        valide_UE: null,
        serviceExamenId: null,
        maitreMemoireId: null,
      },
    ],
    pending: false,
    error: null,
    status: "success",
  },
];
</script>

<style scoped></style>
