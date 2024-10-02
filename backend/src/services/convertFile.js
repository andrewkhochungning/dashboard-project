const fs = require('fs')
const xlsx = require('xlsx')
const path = require('path')

async function convertXlsxToCsv(filePath,outputFile){

    try{
        const workbook = xlsx.readFile(filePath);
        const worksheet = workbook.Sheets[workbook.SheetNames[1]];
        const csvData = xlsx.utils.sheet_to_csv(worksheet);

        // console.log(workbook.SheetNames[1])

        fs.writeFileSync(outputFile, csvData);

        console.log(`File converted successfully to ${outputFile}`);

    }catch(error){
        console.error('Error converting file', error);
        throw error;
    }
}

async function convertFileIfNeeded(filePath){
    const ext = path.extname(filePath).toLowerCase();

    if(ext === '.csv'){
        console.log('No conversion needed');
        return filePath
    }

    if(ext ==='.xlsx'){
        const csvFilePath = filePath.replace('.xlsx','.csv');
        await convertXlsxToCsv(filePath, csvFilePath);
        return csvFilePath;
    }

    throw new Error('Unsupported file format');
}

module.exports = { convertFileIfNeeded }