
  //Accept your name from command line. And append it 
  //to person.txt as “hello “+ “name”.
    fs=require('fs')
  const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
  })
  readline.question(`What's your name?`, name => {
      
        fs.appendFile('person.txt',`\nHello ${name}`, function (err) {
            if (err) return console.log(err);
             });

    readline.close()
  })
