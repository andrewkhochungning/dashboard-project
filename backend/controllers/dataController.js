const { backupAndWipe } = require('../src/services/backupService');
const { generateVersionNumber } = require('../src/services/versionGenerator');
const { parseCSV } = require('../src/services/csvParser');
const { importData } = require('../src/services/importService');
const { convertFileIfNeeded } = require('../src/services/convertFile');


const dataController = {
    importData: async(req,res,next) => {
        try{


            const version = generateVersionNumber();

            await backupAndWipe(version);
            const { file } = req.body;

            const convertedFilePath = await convertFileIfNeeded(file);

            await importServices.import(file);
        }catch(error){

        }
    },
    getData: async(req,res,next) => {

    },

}