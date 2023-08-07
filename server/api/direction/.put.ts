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

  if (body.id) {
    request = await prisma.direction.update({
      where: {
        id: body.id,
      },
      data: input_data,
    });
  } else {
    return createError({
      statusCode: 400,
      statusMessage: "Some parameters are missing",
    });
  }

  return request;
});

/* 
const data = {};
  for (const key in body) {
    if (body.hasOwnProperty(key)) {
      data[key] = body[key];
    }
  }

  let user;

  if (data.id) {
    user = await prisma.users.update({
      where: {
        id: data.id,
      },
      data,
    });
  }
   */
