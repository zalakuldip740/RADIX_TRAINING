const bodyParser = require('body-parser');
const express = require('express');
const router = express.Router();
const students = require('../model/students.json');
router.use(bodyParser.json());
let verifyToken = require('./validatetoken');

router.get('/',verifyToken, (req, res, next) => {
    res.send(students);
    next()
})



module.exports = router;