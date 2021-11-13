var express = require("express");
var router = express.Router();
const jwt = require("jsonwebtoken");
const config = require("../../authentication/global.config");

router.post("/", (req, res) => {
  let userdata = {
    username: req.body.username,
    password: req.body.password,
  };
  //for user varificarion

  let token = jwt.sign(userdata, config.secretKey, {
    algorithm: config.algorithm,
    expiresIn: "55m",
  });

  if (userdata.username == "admin" && userdata.password == "admin") {
    res.status(200).json({
      message: "Login Successful",
      jwtoken: token,
    });
  } else {
    res.status(401).json({
      message: "Login Failed",
    });
  }
});

module.exports = router;
