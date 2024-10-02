const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function backupAndWipe(version) {
    try {
        
        const records = await prisma.rawData.findMany();

        if(records.length > 0){
            const backupData = records.map(record => ({
                key: record.key,
                expected_go_live: record.expected_go_live,
                assignee: record.assignee,
                summary: record.summary,
                reporter: record.reporter,
                status: record.status,
                created_date: record.created_date,
                updated_date: record.updated_date,
                issues_type: record.issues_type,
                brand:record.brand,
                store: record.store,
                country: record.country,
                organization: record.organization,
                days_since_last_comment: record.days_since_last_comment,
                request_type: record.request_type,
                time_to_first_response: record.time_to_first_response,
                date_of_first_response: record.date_of_first_response,
                time_to_resolution: record.time_to_resolution,
                time_to_close_after_resolution: record.time_to_close_after_resolution,
                version: version,
            }))

            await prisma.backUpRawData.createMany({
                data: backupData
            })
            console.log("Original Records", records);

            console.log(`Backup completed with version ${version}`)
        }else{
            console.log('No records to backup');
        }

        await prisma.rawData.deleteMany();
        console.log('Original Data wiped clean');

    }catch (error) {
        console.error('Error during backup and wipe: ',error);
    }
}

module.exports = { backupAndWipe }