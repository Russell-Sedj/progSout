<!-- https://flowbite.com/docs/components/forms -->

<template>
  <div
    class="md:flex md:justify-center md:items-center mt-11 mb-9 md:mb-4 lg:mt-20"
  >
    <div class="m-3 md:w-3/4 lg:w-2/4 md:h-96">
      <h1 class="text-gray-700 font-bold text-2xl mb-10">Connectez Vous</h1>
      <form @submit.prevent="handleSubmit">
        <div class="relative z-0 w-full mb-10 group">
          <input
            type="email"
            name="floating_email_login_student"
            id="floating_email_login_student"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-400 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
            v-model="emailStudent"
          />
          <label
            for="floating_email_login_student"
            class="peer-focus:font-medium absolute text-sm text-gray-600 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Adresse email</label
          >
        </div>
        <div class="relative z-0 w-full mb-10 group">
          <input
            type="password"
            name="floating_password_login_student"
            id="floating_password_login_student"
            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-400 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            required
            v-model="passwordStudent"
          />
          <label
            for="floating_password_login_student"
            class="peer-focus:font-medium absolute text-sm text-gray-600 duration-300 transform -translate-y-8 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-8"
            >Password</label
          >
        </div>
        <div class="relative z-0 w-full mb-10 group">
          <div class="flex items-center h-5">
            <label for="stay_logged" class="mr-3 text-sm text-gray-600"
              >Rester Connecter</label
            >
            <input
              id="stay_logged"
              type="checkbox"
              value=""
              class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300"
              v-model="stay_connected"
            />
          </div>
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
const emailStudent = ref("");
const passwordStudent = ref("");
const stay_connected = ref(false);

const student_list = ref(null);
student_list.value = await $fetch("/api/student/student");

const handleSubmit = async () => {
  if (emailStudent.value && passwordStudent.value) {
    let student = student_list.value.find(
      (student) => student.email === emailStudent.value
    );

    if (student) {
      if (student.password === passwordStudent.value) {
        await navigateTo("/");
      } else {
        console.log("bad pass");
      }
    } else {
      console.log("bad email");
    }
  }
};
</script>

<style scoped>
button {
  background-color: #3da019;
}
button:hover {
  background-color: #2b7810;
}
</style>
