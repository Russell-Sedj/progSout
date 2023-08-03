import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = null;
  let error = null;

  if (body.id)
    await prisma.etudiant
      .delete({
        where: {
          id: body.id,
        },
      })
      .then((response) => {
        request = response;
      })
      .catch((e) => {
        error = e;
      });

  if (error)
    return createError({
      statusCode: 500,
      statusMessage: "Internal Server Error",
    });
  return request;
});
