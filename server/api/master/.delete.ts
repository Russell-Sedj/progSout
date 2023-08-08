import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export default defineEventHandler(async (event) => {
  const body = await readBody(event);
  let request = null;
  let error = null;

  if (body.id) {
    await prisma.master
      .delete({
        where: {
          id: body.id,
        },
      })
      .then((response) => {
        request = response;
      })
      .catch((e) => {
        console.log("Internal Server Error:\n" + e.message);
        return { message: "Internal Server Error:\n" + e.message };
      });
  } else {
    console.log("Bad Request: Missing Id");
    return {
      message: "Bad Request: Missing Id",
    };
  }
  return request;
});
