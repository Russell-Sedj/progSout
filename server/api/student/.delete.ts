import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = null;
  let error = null;

  if (body.id) {
    await prisma.student
      .delete({
        where: {
          id: body.id,
        },
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
      statusMessage: "Bad Request: Missing ID",
    });
  }
  return request;
});
