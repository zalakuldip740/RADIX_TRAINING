"use strict";
exports.__esModule = true;
exports.Employee = void 0;
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
exports.Employee = Employee;
