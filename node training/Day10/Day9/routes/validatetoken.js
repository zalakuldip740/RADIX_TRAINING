var express = require('express'); 
var router = express.Router(); 
require("dotenv").config()
let jwt = require('jsonwebtoken');
router.use(function (req, res, next)
 {
 var token = req.headers['authorization']; 
console.log(token); 

jwt.verify(token, process.env.secretkey,
    {
    //algorithm: config.algorithm
    
    }, function (err, decoded) {
    if (err) {
    let errordata = {
    message: err.message,
    expiredAt: err.expiredAt
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
   

); 
module.exports = router; 