var express = require("express");
var router = express.Router({ mergeParams: true });
var StudentDomain = require("../../../domain/controller.domain/students.domain");

class ResultController {
  //To return a particular student Result Record
  static async getResult(req, res) {
    const studentDomain = new StudentDomain();
    studentDomain.getResult(req, res);
  }
  //To update a result of student
  static async updateResult(req, res) {
    const studentDomain = new StudentDomain();
    studentDomain.updateResult(req, res);
  }
}

router.get("/", ResultController.getResult);
router.put("/", ResultController.updateResult);

module.exports = router;
