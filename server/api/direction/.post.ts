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

  if (body.email && body.password) {
    await prisma.direction
      .create({
        data: input_data,
      })
      .then((response) => {
        request = response;
      })
      .catch((e) => {
        return createError({
          statusCode: 500,
          statusMessage: "Internal Server Error.\n" + e,
        });
      });
  } else {
    return createError({
      statusCode: 400,
      statusMessage: "Bad Request: Missing Parameter",
    });
  }

  return request;
});
