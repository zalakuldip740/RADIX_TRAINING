
// Write your address in one txt file and 
//find out how many consonants are there.

fs=require('fs')
fs.appendFile('address.txt','\nBoriya chhapara\ntalod,\nsabarkantha,\ngujarat', function (err) {
    if (err) return console.log(err);
  });

  fs.readFile('address.txt', 'utf8' , (err, data) => {
    if (err) {
      console.error(err)
      return
    }
   const consonants = data.match(/[^aeiou]/gi || []); 
   console.log(consonants.length); 

  })