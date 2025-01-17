// get the version number for backup purposes

function generateVersionNumber() {
    const now = new Date();
    const year = now.getFullYear();
    const month = String(now.getMonth()+1).padStart(2,'0');
    const day = String(now.getDate()).padStart(2,'0');
    const hours = String(now.getHours()).padStart(2,'0');
    const minutes = String(now.getMinutes()).padStart(2,'0');
    const seconds = String(now.getSeconds()).padStart(2,'0');
    const miliseconds = String(now.getMilliseconds()).padStart(2,'0');
    
    return `${year}${month}${day}_${hours}${minutes}${seconds}_${miliseconds}`

}

module.exports = { generateVersionNumber };