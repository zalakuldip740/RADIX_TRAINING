//Append hello India in person.txt.
fs=require('fs')
fs.appendFile('person.txt','\nhello India', function (err) {
    if (err) return console.log(err);
  });