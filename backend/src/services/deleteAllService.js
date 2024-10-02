const { PrismaClient} = require('@prisma/client');
const prisma = new PrismaClient();

async function deleteService() {

    await prisma.rawData.deleteMany();
    console.log('Raw Data Wiped');

    await prisma.backUpRawData.deleteMany();
    console.log('Backup Data Wiped')

}

module.exports = { deleteService};