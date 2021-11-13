//Create two txt files, write some dummy text. 
  //Read two file content and print it in the console.
  // use async and await.

  fs=require('fs')
  fs.writeFile('person2.txt', 'Zala Kuldipsinh', function (err) {
    if (err) return console.log(err);
  });
  const util = require('util');
const readFile = (fileName) => util.promisify(fs.readFile)(fileName, 'utf8');

(async () => {
  try {
    const files = ['person.txt', 'person2.txt'];
    for (const file of files) {
      console.log(
        await readFile(file)
      );
    }
  }
  catch (error) {
    console.error(error);
  }
})();
