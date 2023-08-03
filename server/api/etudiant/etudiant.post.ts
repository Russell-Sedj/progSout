import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = body;

  if (
    body.email &&
    body.nom &&
    body.prenom &&
    body.telephone &&
    body.password
  ) {
    await prisma.etudiant
      .create({
        data: {
          email: body.email,
          nom: body.nom,
          prenom: body.prenom,
          telephone: body.telephone,
          password: body.password,
          service: body.service,
        },
      })
      .then((response) => {
        request = response;
      });
  } else {
    return createError({
      statusCode: 400,
      statusMessage: "missing email or nom or prenom or telephone or password",
    });
  }

  return {
    etudiant: request,
  };
});

/* 
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = null;

  if (body.name)
    await prisma.etudiant
      .create({
        data: {
          nom: body.nom,
          prenom: body.prenom,
          email: body.email,
          password: body.password,
          telephone: body.telephone,
          //   service: body.service,
        },
      })
      .then((response) => {
        request = response;
      });

  return {
    etudiant: request,
  };
});

 */
