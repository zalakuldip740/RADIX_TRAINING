const DepartmentModel = require("../models/department.model");

class DepartmentDomain {
  //To get all department
  async getAllDepartments(req, res) {
    const department = await DepartmentModel.find();
    res.send(department);
  }
  //To get department
  async getDepartment(req, res) {
    let id = req.params.DepId;
    const department = await DepartmentModel.findById(id);
    if (department) {
      res.send(department);
    } else {
      res.status(404).send("Department Not Found");
    }
  }
  //To Insert department
  async insertDepartment(req, res) {
    //getting user input
    let data = req.body;

    const department = new DepartmentModel(data);
    try {
      const result = await department.save();
      res.send(result);
    } catch (e) {
      res.send(e.message);
    }
  }
  //To delete a department
  async deleteDepartment(req, res) {
    let id = req.params.DepId;
    const department = await DepartmentModel.findByIdAndDelete(id);
    if (department) {
      res.send("Department Record Deleted Successfully");
    } else {
      res.status(404).send("Data Not Found");
    }
  }
}

module.exports = DepartmentDomain;
