require("dotenv").config()
const express = require('express');
//const res = require('express/lib/response');
const app = express();
const jwt = require('jsonwebtoken')
const bodyParser = require('body-parser');
app.use(bodyParser.json());
students = [{
    "ID": 1, "Name": "Reena", "Address": "Ahmedabad", "Fees": { "Amount": 10000, "PaymentDate": "12/12/2020", "Status": "true" }, "Result": { "Hindi": 80, "Eng": 70, "Math": 60, "Total": 210, "Grade": "A" }

}, {
    "ID": 2, "Name": "Rita", "Address": "Surat", "Fees": {
        "Amount": 12000, "PaymentDate": "12 / 12 / 2020", "Status": "false"
    },

    "Result": { "Hindi": 80, "Eng": 70, "Math": 60, "Total": 210, "Grade": "A" }

}]
app.get(
    '/',
    (req,res)=>{
        res.send("hello!")
    }
)
app.post('/students',validateToken,(req,res)=>{
    jwt.verify(req.token,process.env.secretkey,(err,authData)=>{
        if(err){
            res.status(403).send("Error in Token")
        }
        else{
            res.json({
                result:authData.Result,
                fees:authData.Fees
            })
        }
    })
})
app.post('/login/:id',(req,res)=>{
    const student = students.find(s=>s.ID === parseInt(req.params.id));
    jwt.sign(student,process.env.secretkey,(err,token)=>{
        if(err)
        {
            res.status(401).send("Sign In error")
        }
        else{
            res.json({token})
        }
    })
})
function validateToken(req,res,next){
    const bearerHeader = req.headers.authorization;
    if(typeof(bearerHeader)=='undefined')
    {
        res.status(401).send("Header is Undefined")
    }
    else{
        const bearerToken = bearerHeader.split(" ")[1];
        req.token = bearerToken
        next()
    }
}
app.listen(4000,()=>console.log("Started........."))