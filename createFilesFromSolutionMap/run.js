/**********************************************************************************************
**  - Run 'extractProblemFolderStruct.js' to get the mapping of folders + problems, 
**  then save raw data into ProblemFolderMapping.json
**  - Get 'SolutionMap.json' by copying data from Chrome's Local Storage 
**  for https://www.apexsandbox.io/ and saving it as a .json file
**  - Run 'run.js' file to create files with your solutions under correct folders
**********************************************************************************************/

const fs = require('fs');

run();

const SOLUTIONS_PATH = '..\\Solutions\\';

async function run() {
    let folderMapping = await readFolderMapping();
    let solutionMapping = await readSolutionMap();

    await createFolders(folderMapping);
    await createSolutionFiles(solutionMapping, folderMapping);
}

async function createSolutionFiles(solutionMapping, folderMapping) {
    for (const problemNumber in solutionMapping) {
        let solutionCode = solutionMapping[problemNumber].code;
        let problemFolder = await getFolderName(problemNumber, folderMapping);
        let problemName = await getProblemName(problemNumber, folderMapping);
        problemName = problemName.trim().replaceAll(' ', '_');
        fs.writeFileSync(SOLUTIONS_PATH + problemFolder + '\\' + problemName + '.cls', solutionCode);
    }
}

async function getFolderName(problemNumber, folderMapping) {
    return folderMapping.find(x => x.problemNumber === problemNumber).folderTitle;
}

async function getProblemName(problemNumber, folderMapping) {
    return folderMapping.find(x => x.problemNumber === problemNumber).problemTitle;
}

async function createFolders(folderMapping) {
    for (let item of folderMapping) {
        let newPath = SOLUTIONS_PATH + item.folderTitle;
        if (fs.existsSync(newPath)) continue;
        fs.mkdirSync(newPath);
    }
}

async function readSolutionMap() {
    let solutionMap = fs.readFileSync('..\\SolutionMap.json', 'utf-8');
    return JSON.parse(solutionMap);
}

async function readFolderMapping() {
    let folderMapping = fs.readFileSync('..\\ProblemFolderMapping.json', 'utf-8');
    return JSON.parse(folderMapping.replaceAll(/problem\//g));
}

