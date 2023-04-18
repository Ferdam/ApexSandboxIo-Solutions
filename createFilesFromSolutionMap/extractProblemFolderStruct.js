// Run in Chrome Console in https://www.apexsandbox.io/
// Copy raw string data from console log, save it to ProblemFolderMapping.json
{
    let folderStruct = [];
    let lstFolders = document.querySelectorAll("li[aria-label] span>span");
    for (let item of lstFolders){
        let folderTitle = item.innerText;
        let lstProblems = item.parentNode.parentNode.parentNode.querySelectorAll('ul>li a');
        for (let prob of lstProblems) {
            folderStruct.push( { 'problemNumber': prob.href.replaceAll(/.*(problem)\/(.*)/g, '$1_$2'), 'problemTitle': prob.innerText, 'folderTitle': folderTitle });
        }
    }
    console.log(JSON.stringify(folderStruct));
}