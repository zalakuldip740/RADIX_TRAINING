// 1.Write a Nodejs server that listen on port 3001 and which will read person.json and return a response in JSON format.

// Person.json content as follows:

// [

// {

// PersonID:1,

// PersonName:”Rita”,

// PersonAddress:”Ahmedabad”

// },

// {

//                 PersonID:2,

//                 PersonName:”Reema”,

//                 PersonAddress:”Calcutta”

// }

// ]

// http://localhost:3001


const fs = require('fs');
const http = require('http');
const port = 3000;
const json = require("./person.json")
const server = http.createServer(
    (req,res) =>{
        res.statusCode = 200;
        res.setHeader("Content-Type","application/json");
       // res.end(JSON.stringify({person:3}));
        fs.readFile('person.json','utf-8',(err,jsonstring)=>{
            if(err){
                console.log(err);
            }
            else{
                try{
                    res.write(JSON.stringify(jsonstring));
                    res.end();  
                console.log(JSON.parse(jsonstring));
                }
                catch(err){
                    
                    console.log(err);
                }
            }
        })
    }
)
server.listen(port,()=>{
    console.log(`Port Number ${port} is Running`);
})