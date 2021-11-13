var express = require("express");
var EmployeeDomain = require("../../domain/controller.domain/emloyees.domain");
var assignments = require("./child/assignment.controller");
var router = express.Router();

class EmployeeController {
  //To get all employees
  static async get(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.getAllEmployees(req, res);
  }
  //To get an single employee by id
  static async getAnEmployee(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.getAnEmployee(req, res);
  }
  //To Create New Employee
  static async createAnEmployee(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.createAnEmployee(req, res);
  }
  //To Delete An Employee
  static async deleteAnEmployee(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.deleteAnEmployee(req, res);
  }
  //To Update Data Of An Employee
  static async updateAnEmployee(req, res) {
    const employeeDomain = new EmployeeDomain();
    employeeDomain.updateAnEmployee(req, res);
  }
}

router.use("/:EmpId/assignments", assignments);

//To get all employees
router.get("/", EmployeeController.get);
//To get an single employee by id
router.get("/:EmpId", EmployeeController.getAnEmployee); //emps/2
//To delete an employee
router.delete("/:EmpId", EmployeeController.deleteAnEmployee);
//To Create New Employee
router.post("/", EmployeeController.createAnEmployee);
//To Update Data Of An Employee
router.put("/:EmpId", EmployeeController.updateAnEmployee);
module.exports = router;
