/**
* Author: Arun S. Kumar
* License: Apache v2
* Date: 01-08-2017
*/

var recursive = require('recursive-readdir');
const path = require('path');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var dir, ext;

function readParams() {
  readPathAndExt();
}

function readPathAndExt() {
  rl.question('Enter the root folder path: ', function(answer){
    dir = answer;
    readExt();
  })
}

function readExt() {
  rl.question('Enter the target file extension: ', function(answer){
    ext = answer;
    rl.close();
    callRecursive();
  });
}

function callRecursive() {
  recursive(dir, [ignoreFunc], function(err, files){
    console.log("Total number of files are: ", files.length);
    console.log("Total number of target files are: ", numFiles);
  });
}

var numFiles = 0;

/**
* Always return false to process all files. Using this only to count no of target files.
*/
function ignoreFunc(file, stats) {
  path.extname(file) == '.'.concat(ext) ? ++numFiles : 0;
  return false;
}

//main
function main() {
  readParams();
}

main();












