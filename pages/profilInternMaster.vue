<template>
  <div class="md:flex md:justify-center md:items-center mt-11 mb-4 lg:mt-20">
    <div class="m-3 md:w-3/4 lg:w-2/4">
      <h1 class="text-gray-700 font-bold text-2xl mb-6">
        Profil Maitre de Stage
      </h1>
      <form @submit.prevent="editInternMaster(intern_master)">
        <div class="grid md:grid-cols-2 md:gap-6">
          <div class="relative z-0 w-full mb-8 group">
            <input
              type="text"
              name="floating_last_name"
              id="floating_last_name"
              class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
              placeholder=" "
              required
              v-model="intern_master.lastname"
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
              v-model="intern_master.firstname"
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
            v-model="intern_master.email"
          />
          <label
            for="floating_email"
            class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Adresse email</label
          >
        </div>
        <div class="relative z-0 w-full mb-8 group">
          <input
            type="tel"
            name="floating_phone"
            id="floating_phone"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
            v-model="intern_master.telephone"
          />
          <label
            for="floating_phone"
            class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Numero de telephone</label
          >
        </div>
        <div class="relative z-0 w-full mb-8 group">
          <input
            type="tel"
            name="floating_company_name"
            id="floating_company_name"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
            v-model="intern_master.company_name"
          />
          <label
            for="floating_company_name"
            class="peer-focus:font-medium absolute text-sm text-gray-500 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Nom de l'entreprise</label
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
useHead({
  title: "Profil Maitre de Stage",
  meta: [
    {
      name: "description",
      content: "Profil Maitre de Stage",
    },
  ],
});

const intern_master_list = await $fetch("/api/internMaster/");
const intern_master = ref({
  id: intern_master_list[0].id,
  lastname: intern_master_list[0].lastname,
  firstname: intern_master_list[0].firstname,
  email: intern_master_list[0].email,
  telephone: intern_master_list[0].telephone,
  company_name: intern_master_list[0].company_name,
});

async function editInternMaster(intern_master) {
  let req = null;

  if (
    intern_master.id &&
    intern_master.firstname &&
    intern_master.lastname &&
    intern_master.email &&
    intern_master.telephone &&
    intern_master.company_name
  ) {
    req = await $fetch("/api/internMaster/", {
      method: "PUT",
      body: intern_master,
    });
    if (req) {
      alert("Profil modifié avec succès");
    } else if (req.message) {
      alert("Erreur lors de la modification du profil");
    } else {
      alert("Erreur lors de la modification du profil");
    }
  } else {
    alert("Veuillez remplir tous les champs");
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
