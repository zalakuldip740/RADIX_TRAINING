//4. Write a Nodejs server that serve as a RESTFUL API that 
//accepts a file content and writes them to the disk.

//http://localhost:3001/upload


var http = require('http');


//create a server object:
http.createServer(function (req, res) {
    var url = require('url');
    var q = url.parse(req. url, true);
    if(q.pathname == '/upload'){
        const fs = require('fs')
        const path = require('path');
        const currentPath = path.join(__dirname, "demo.txt");
        try {
          const data = fs.readFileSync(currentPath, 'utf8')
          res.writeHead(200, {'Content-Type': 'text/plain'});
        var qdata = q.query;
        if (typeof localStorage === "undefined" || localStorage === null) {
            var LocalStorage = require('node-localstorage').LocalStorage;
            localStorage = new LocalStorage('./demo');
          }
          localStorage.setItem('xyz', data);
      res.write(localStorage.getItem('xyz'));
        res.end();
        } catch (err) {
          console.error(err)
        }
    }
 
}).listen(3008);