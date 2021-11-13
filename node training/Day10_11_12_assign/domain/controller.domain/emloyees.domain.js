const EmployeeModel = require("../../model/employee.model");

class EmployeeDomain {
  //To get all employees
  async getAllEmployees(req, res) {
    const employees = await EmployeeModel.find();
    res.send(employees);
  }
  //To get an employee by EmpId
  async getAnEmployee(req, res) {
    try{
    let id = req.params.EmpId;
    const employees = await EmployeeModel.find({"id":id});
    if (employees) {
      res.send(employees);
    } else {
      res.status(404).send("Data Not Found");
    }
  }catch(err){
    console.log(err);
  }
  }
  //To Create an Employee
  async createAnEmployee(req, res) {
    //getting user input
    let data = req.body;
    const employee = new EmployeeModel(data);
    try {
      const result = await employee.save();
      res.send(result);
    } catch (e) {
      res.send(e.message);
    }
  }
  //To delete an employee
  async deleteAnEmployee(req, res) {
    let id = req.params.EmpId;
    const employees = await EmployeeModel.deleteMany({"id":id});
    if (employees) {
      res.send("Employee Record Deleted Successfully");
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To update an employee
  async updateAnEmployee(req, res) {
    //getting user input
    let data = req.body;

    let id = req.params.EmpId;
    const employees = await EmployeeModel.find();
    let isAvail = employees.find((e) => e.id == id);

    if (isAvail) {
      try {
        const result = await EmployeeModel.updateOne(
          {"id":id},
          {
            $set: data,
          },
          { new: true }
        );
        res.send(result);
      } catch (e) {
        res.send(e.message);
      }
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To get all assignment by EmployeeId
  async getAssignments(req, res) {
    let id = req.params.EmpId;

    const result = await EmployeeModel.findById(id);
    if (result) {
      res.send(result.Assignments);
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To get an assignment by AssignmentId
  async getAnAssignment(req, res) {
    let id = req.params.EmpId;
    let AssignmentId = req.params.AssignmentId;

    const result = await EmployeeModel.findById(id);
    if (result) {
      const assignment = result.Assignments.find((a) => a.id == AssignmentId);
      if (assignment) {
        res.send(assignment);
      } else {
        res.status(404).send("Assignment Not Available");
      }
    } else {
      res.status(404).send("Data Not Found");
    }
  }
  //To update an assignmet
  updateAnAssignment(req, res) {
    //checking if data available
    res.send("work in progress");
  }
}

module.exports = EmployeeDomain;
