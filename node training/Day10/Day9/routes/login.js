
const bodyParser = require('body-parser');
const express = require('express');
const router = express.Router();
router.use(bodyParser.json());
require("dotenv").config()
let jwt = require('jsonwebtoken');
router.post('/', (req, res, next)=> {
    let userdata = {
        username: req.body.username,
        password: req.body.password
    };
  
    let token = jwt.sign(userdata, process.env.secretkey, {
        //algorithm: global.config.algorithm,
        //expiresIn: '5m'
        });
    //Go to server for user varificarion
    if (userdata.username == "admin" && userdata.password == "admin") {
        res.status(200).json({
            message: 'Login Successful',
            jwtoken: token
            });
          
    }
    else {
        res.status(401).json({
            message: 'Login Failed'
        });
    }
  });

  module.exports = router;