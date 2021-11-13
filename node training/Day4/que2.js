//Write a Nodejs server that serves as a RESTFUL API that takes 
//two parameters in a GET call and produces their sum.

//http://localhost:3001/product?param1=5&param2=10

var http = require('http');


//create a server object:
http.createServer(function (req, res) {
    var url = require('url');
    var q = url.parse(req. url, true);
    if(q.pathname == '/product'){
        var qdata = q.query; //returns an object: { param1: 5, param2: 10 }
        var ans=  parseInt(qdata.param1) +  parseInt(qdata.param2);
        res.write(`${qdata.param1} + ${qdata.param2} =  ` + ans.toString());
        res.end();
    }
 
}).listen(3001);