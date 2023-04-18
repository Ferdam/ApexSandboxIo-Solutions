// Run in Chrome Console in https://www.apexsandbox.io/
// Copy raw string data from console log, save it to SolutionMap.json
{
    let storageData = {};
    for (let i=0; i < localStorage.length; i++) {
        let keyName = localStorage.key(i);
        let itemData = JSON.parse(localStorage.getItem(keyName));
        let fixedKeyName = keyName.replace('/', '_');
        storageData[fixedKeyName] = itemData;
    }
    console.log(JSON.stringify(storageData));
}