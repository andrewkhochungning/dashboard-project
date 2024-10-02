const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();


async function populateDataFunction() {
    const populateData = await prisma.rawData.create({
        data: {
            Country: "Singapore",
            Brand: "Dummy Brand",
            Handler: "Admin"
        }
    })

    console.log(populateData)

}

module.exports = { populateDataFunction };