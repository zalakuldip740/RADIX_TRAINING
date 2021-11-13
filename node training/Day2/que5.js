// Remove person.txt file.

fs=require('fs')
fs.unlinkSync('person.txt', (err) => {
    if (err) throw err;
    console.log('path/file.txt was deleted');
  });
