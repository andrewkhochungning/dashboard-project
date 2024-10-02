const { backupAndWipe } = require('./src/services/backupService');
const { generateVersionNumber } = require('./src/services/versionGenerator');
const { parseCSV } = require('./src/services/csvParser');
const { importData } = require('./src/services/importService');
const { convertFileIfNeeded } = require('./src/services/convertFile');

//populate purposes
const { populateDataFunction } = require('./src/services/populateData');

async function main() {
    try {

        // const dummy = populateDataFunction();
        const version = generateVersionNumber();

        await backupAndWipe(version);

        const csvFilePath = './main.xlsx';

        const convertedFilePath = await convertFileIfNeeded(csvFilePath);

        const records = await parseCSV(convertedFilePath);

        await importData(records);

        // console.log(records);

    }catch (error) {
        console.error('Error in main script', error);
    }
}

main();