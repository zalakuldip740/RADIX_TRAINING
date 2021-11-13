 //Create one folder files and move person.txt in that file.
 const folderName = 'files2'
 fs=require('fs')



try {

  if (!fs.existsSync(folderName)) {

    fs.mkdirSync(folderName)

  }

} catch (err) {

  console.error(err)

}

const mv = require('mv');

const path = require("path");

const currentPath = path.join(__dirname, "person.txt");

const destinationPath = path.join(__dirname, "files2", "person.txt");



mv(currentPath, destinationPath, function(err) {

     if (err) {

        throw err

    } else {

        console.log("Successfully moved the file!");

    }

});