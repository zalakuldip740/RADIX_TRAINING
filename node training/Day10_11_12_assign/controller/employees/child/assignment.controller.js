var express = require("express");
var EmployeeDomain = require("../../../domain/controller.domain/emloyees.domain");
var router = express.Router({ mergeParams: true });

class AssignmentController {
  //To get all assignments
  static async get(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.getAssignments(req, res);
  }
  //To get an assignment by AssignmentId
  static async getAnAssignment(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.getAnAssignment(req, res);
  }
  //To update an assignment
  static async updateAnAssignment(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.updateAnAssignment(req, res);
  }
}

router.get("/", AssignmentController.get);
router.get("/:AssignmentId", AssignmentController.getAnAssignment);
router.put("/:AssignmentId", AssignmentController.updateAnAssignment);

module.exports = router;
