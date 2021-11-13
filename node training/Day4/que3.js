//3. Write a Nodejs server that serves as a RESTFUL API that
// accepts a string as an input name and returns the first vowel
// character from the string.

 //http://localhost:3001/vowefind?input=rita

 var http = require('http');


//create a server object:
http.createServer(function (req, res) {
    var url = require('url');
    var q = url.parse(req. url, true);
    if(q.pathname == '/vowefind'){
        res.writeHead(200, {'Content-Type': 'text/plain'});
                var qdata = q.query;
                res.write(`${qdata.input} first vowel character is: ` + qdata.input.match(/[aeiou]/gi)[0]);
                res.end();
    }
 
}).listen(3001);