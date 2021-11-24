"use strict";
//1.  Store 5 employees’ data in one array (ID,FirstName,LastName,Address,Salary).
// Do the operation searching by indexnumber, EmployeeID, Insert the employee,
// delete the employee from the Array. Create one more array emp and join the
// value with above array. When display list combine firstname and lastname as
// fullname, From the address field flatnumber,city,state and should be splited.
//PF should be computed and total salary should be display.
exports.__esModule = true;
var arr = [];
// push operation
arr.push({ Id: 1, FirstName: "A", LastName: "a", Address: "A1,B1,Guj", Salary: 25000 });
arr.push({ Id: 2, FirstName: "B", LastName: "b", Address: "A2,B2,Guj", Salary: 20000 });
arr.push({ Id: 3, FirstName: "C", LastName: "c", Address: "A3,B3,MP", Salary: 30000 });
arr.push({ Id: 4, FirstName: "D", LastName: "d", Address: "A4,B4,guj", Salary: 25000 });
arr.push({ Id: 5, FirstName: "E", LastName: "e", Address: "A5,B5,Guj", Salary: 30000 });
// searching operation
// search by index
function searchByIndex(array, index) {
    if (index >= array.length) {
        return null;
    }
    return arr[index];
}
var _4thEmployee = searchByIndex(arr, 3);
console.log(_4thEmployee);
//search by Id
function searchByEmployeeId(array, key) {
    return array.filter(function (emp) { return emp.Id === key; })[0];
}
var employeeWithId2 = searchByEmployeeId(arr, 2);
console.log(employeeWithId2);
//insert employee
function InsertEmployee(employee) {
    arr.push(employee);
}
InsertEmployee({ Id: 6, FirstName: "k", LastName: "l", Address: "xyz", Salary: 15000 });
console.log(arr);
//delete employee
function DeleteEmployeebyId(Id) {
    arr = arr.filter(function (employee) { return employee.Id !== Id; });
}
DeleteEmployeebyId(6);
console.log(arr);
// Create one more array emp and join the value with above array
var arr2 = [];
arr2.push({ Id: 7, FirstName: "ab", LastName: "cd", Address: "a1,b1,c1", Salary: 25000 });
arr2.push({ Id: 8, FirstName: "er", LastName: "pb", Address: "a2,b2,c2", Salary: 30000 });
var arr3 = arr.concat(arr2);
//When display list combine firstname and lastname as fullname, From the address field flatnumber,city,state and should be splited.PF should be computed and total salary should be display
for (var _i = 0, arr3_1 = arr3; _i < arr3_1.length; _i++) {
    var emp = arr3_1[_i];
    console.log("FullName: ".concat(emp.FirstName, " ").concat(emp.LastName, " "));
    var address = emp.Address.split(",");
    console.log("City: ".concat(address[0], " Dist: ").concat(address[1], " State : ").concat(address[2]));
    var pf = emp.Salary.valueOf() * 0.12;
    console.log("PF : ".concat(pf, " TotaSalary: ").concat(emp.Salary.valueOf() - pf));
}
