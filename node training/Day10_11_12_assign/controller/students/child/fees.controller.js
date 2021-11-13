var express = require("express");
var router = express.Router({ mergeParams: true });
var StudentDomain = require("../../../domain/controller.domain/students.domain");

class FeesController {
  //To return a particular student FEES Record
  static async getFees(req, res) {
    const studentDomain = new StudentDomain();
    studentDomain.getFees(req, res);
  }
}

router.get("/", FeesController.getFees);

module.exports = router;
