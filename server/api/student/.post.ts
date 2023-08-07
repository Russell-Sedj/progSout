// import { PrismaClient } from "@prisma/client";
// const prisma = new PrismaClient();

// export default defineEventHandler(async (event) => {
//   const body = await readBody(event);
//   let request = null;

//   const input_data: any = {};
//   for (const key in body) {
//     if (body.hasOwnProperty(key)) {
//       input_data[key] = body[key];
//     }
//   }

//   console.log("HELLO: ", input_data);

//   if (
//     body.firstname &&
//     body.lastname &&
//     body.email &&
//     body.telephone &&
//     body.address &&
//     body.field
//   ) {
//     await prisma.student
//       .create({
//         data: input_data,
//         // data: {
//         //   firstname: body.firstname,
//         //   lastname: body.lastname,
//         //   email: body.email,
//         //   telephone: body.telephone,
//         //   address: body.address,
//         //   field: body.field ? body.field : null,
//         // },
//       })
//       .then((response) => {
//         request = response;
//       })
//       .catch((e) => {
//         return createError({
//           statusCode: 500,
//           // should use message later
//           // [h3] Please prefer using message for longer error messages instead of statusMessage. In the future, statusMessage will be sanitized by default.
//           message: "Internal Server Error:\n" + e,
//         });
//       });
//   } else {
//     return createError({
//       statusCode: 400,
//       message:
//         "Bad Request: Missing nom or prenom or email or password or telephone",
//     });
//   }

//   return request;
// });

import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = null;

  const input_data: any = {};
  for (const key in body) {
    if (body.hasOwnProperty(key)) {
      input_data[key] = body[key];
    }
  }

  if (
    input_data.firstname &&
    input_data.lastname &&
    input_data.email &&
    input_data.telephone &&
    input_data.address &&
    input_data.field
  ) {
    await prisma.student
      .create({
        data: input_data,
      })
      .then((response) => {
        request = response;
      })
      .catch((e) => {
        return { message: "Internal Server Error:\n" + e.message };
      });
  } else {
    return {
      message:
        "Bad Request: Missing nom or prenom or email or password or telephone or field",
    };
  }
  return {
    request: request,
  };
});
