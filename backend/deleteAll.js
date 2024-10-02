const { deleteService } = require('./src/services/deleteAllService');


async function main() {
    try {

        await deleteService();

    }catch(error){
        console.error('Error encountered', error)
    }
}

main();