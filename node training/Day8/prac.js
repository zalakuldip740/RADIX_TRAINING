
require("dotenv").config()
const express = require('express');
//const Joi = require('joi'); //used for validation
const app = express();
app.use(express.json());
const jwt=require("jsonwebtoken")
 
const customerlist = [
{name: 'a', id: 1},
{name: 'b', id: 2},
{name: 'c', id: 3}
]
 

app.get('/customers',authenticate, (req,res)=> {
res.send(customerlist);                     //que1
});


app.post('/login', function (req, res) {
    let userdata = {
    username: req.body.username,
    password: req.body.password
    };
    
    //Go to server for user varificarion
    if (userdata.username == "admin" && userdata.password == "admin") {
        customerlist.push(userdata)
        const acesstoken=jwt.sign(userdata,process.env.secretkey)
    res.status(200).json({
        token:acesstoken,
    message: 'Login Successful'
    });
    }
    else {
    res.status(401).json({
    message: 'Login Failed'
    });
    }
    });

function authenticate(req,res,next){
    const authheader=req.headers['authorization']
    const token=authheader && authheader.split(" ")[1]
    console.log(token)

    jwt.verify(token, process.env.secretkey, function (err, decoded) {
        if (err) {
        let errordata = {
        message: err.message,
        };
        console.log(errordata);
        return res.status(401).json({
        message: 'Unauthorized Access'
        });
        }
        req.decoded = decoded;
        console.log(decoded);
        next();
        });
        } 

               
app.listen(3001);

 