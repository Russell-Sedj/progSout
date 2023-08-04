import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = body;

  if (
    body.nom &&
    body.prenom &&
    body.email &&
    body.password &&
    body.telephone
    // && body.service
  ) {
    await prisma.etudiant
      .create({
        data: {
          nom: body.nom,
          prenom: body.prenom,
          telephone: body.telephone,
          email: body.email,
          password: body.password,
          // service: body.service,
        },
      })
      .then((response) => {
        request = response;
      });
  } else {
    return createError({
      statusCode: 400,
      statusMessage:
        "Missing Parameters: nom, prenom, email, password, telephone, service",
    });
  }

  return {
    etudiant: request,
  };
});
