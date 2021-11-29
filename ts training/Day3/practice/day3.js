"use strict";
exports.__esModule = true;
// 1. Generic
function Add(a) {
    return a;
}
console.log(Add("Day3PracticeGeneric"));
console.log(Add(50));
var Employee = /** @class */ (function () {
    function Employee(Id, Name) {
        this.EmpID = Id,
            this.EmpName = Name;
    }
    Employee.prototype.Display = function () {
        console.log(this.EmpID + ' ' + this.EmpName);
    };
    return Employee;
}());
var obj = new Employee(2, "Sagar");
console.log(obj.Display());
// 2. Modules
var Emp = require("./EmployeeInfoDay3");
var newEmpInfo = new Emp.Employee(15, "krupal");
console.log(newEmpInfo.Display());
