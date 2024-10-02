const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function importData(records) {
    try{
        console.log(`Starting import process with ${records.length} records`);

        const startTime = Date.now();
        for(const row of records){
            await prisma.rawData.create({
                data:{
                    key: row['Key'],
                    expected_go_live: row['Expected Go Live Date'],
                    assignee: row['Assignee'],
                    summary: row['Summary'],
                    reporter: row['Reporter'],
                    status: row['Status'],
                    created_date: row['Created'],
                    updated_date: row['Updated'],
                    issues_type: row['Issue Type'],
                    brand: row['Brand List'],
                    store: row['Store List'],
                    country: row['Country'],
                    organization: row['Organization'],
                    // severity: 
                    days_since_last_comment: row['Days since last comment'],
                    request_type: row['Request Type'],
                    time_to_first_response: row['Time to first response'],
                    time_to_resolution: row['Time to resolution'],
                    date_of_first_response: row['[CHART] Date of First Response'],
                    time_to_close_after_resolution: row['Time to close after resolution'],
                }
            })
        }
    
        console.log('CSV imported successfully')

        console.log(`Import completed. Inserted ${records.length} records.`);
        const endTime = Date.now();
        const timeTaken = (endTime - startTime) / 1000; // Time in seconds
        console.log(`Time taken: ${timeTaken} seconds`);
        
    }catch(error){
        console.error('Error inserting data: ', error);
    }
}


module.exports = { importData };