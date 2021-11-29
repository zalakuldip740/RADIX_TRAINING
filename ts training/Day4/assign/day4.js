// Store 5 Employee Data(ID,Name,City,DOJ) in one Array. Search the employee with ID.
var EmployeeData = [{ Id: 1, Name: "Parth", City: "Modasa", DOJ: new Date("2021-01-12") },
    { Id: 2, Name: "Mayank", City: "Mumbai", DOJ: new Date("2022-01-12") },
    { Id: 3, Name: "Jay", City: "Mumbai", DOJ: new Date("2021-01-12") },
    { Id: 4, Name: "Rajesh", City: "Delhi", DOJ: new Date("2018-01-12") },
    { Id: 5, Name: "Raju", City: "Delhi", DOJ: new Date("2029-01-12") }];
console.log(EmployeeData);
// Search the employees who has joined after year 2020
var emps = EmployeeData.filter(function (x) { return x.DOJ.getFullYear() > 2020; });
for (var _i = 0, emps_1 = emps; _i < emps_1.length; _i++) {
    var emp = emps_1[_i];
    console.log(emp);
}
// Search the employee who has joined after year 2020 and stays in Mumbai city
emps = EmployeeData.filter(function (x) { return x.DOJ.getFullYear() > 2020 && x.City == "Mumbai"; });
for (var _a = 0, emps_2 = emps; _a < emps_2.length; _a++) {
    var emp = emps_2[_a];
    console.log(emp);
}
