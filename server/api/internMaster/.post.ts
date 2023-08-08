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
    input_data.company_name
  ) {
    await prisma.internMaster
      .create({
        data: input_data,
      })
      .then((response) => {
        request = response;
      })
      .catch((e) => {
        console.log("Internal Server Error:\n" + e.message);
        return { message: "Internal Server Error:\n" + e.message };
      });
  } else {
    console.log("Bad Request: Missing nom or prenom or email or telephone");
    return {
      message:
        "Bad Request: Missing nom or prenom or email or password or telephone",
    };
  }
  return {
    request: request,
  };
});
