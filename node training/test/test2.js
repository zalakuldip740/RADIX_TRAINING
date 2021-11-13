fs = require('fs');
fs.writeFile('recepient.txt', 'xyz@gmail.com\nabc@gmail.com\npqr@gmail.com', function (err) {
  if (err) return console.log(err);
});

fs.readFile('./recepient.txt', 'utf8' , (err, data) => {
  if (err) {
    console.error(err)
    return
  }
  console.log(data)
})

