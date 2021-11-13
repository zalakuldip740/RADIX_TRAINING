//Create one txt file name it as person.txt and write in that hello world

fs = require('fs');
fs.writeFile('person.txt', 'Hello World!', function (err) {
  if (err) return console.log(err);
});
