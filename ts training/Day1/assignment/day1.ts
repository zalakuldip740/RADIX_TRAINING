//1.  Store 5 employees’ data in one array (ID,FirstName,LastName,Address,Salary).
// Do the operation searching by indexnumber, EmployeeID, Insert the employee,
// delete the employee from the Array. Create one more array emp and join the
// value with above array. When display list combine firstname and lastname as
// fullname, From the address field flatnumber,city,state and should be splited.
//PF should be computed and total salary should be display.

export {}
type employee = {Id:Number,FirstName:String,LastName:String,Address:String,Salary:Number}
var arr:employee[] = [];

// push operation
arr.push({Id:1,FirstName:"A",LastName:"a",Address:"A1,B1,Guj",Salary:25000})
arr.push({Id:2,FirstName:"B",LastName:"b",Address:"A2,B2,Guj",Salary:20000})
arr.push({Id:3,FirstName:"C",LastName:"c",Address:"A3,B3,MP",Salary:30000})
arr.push({Id:4,FirstName:"D",LastName:"d",Address:"A4,B4,guj",Salary:25000})
arr.push({Id:5,FirstName:"E",LastName:"e",Address:"A5,B5,Guj",Salary:30000})

// searching operation
// search by index
function searchByIndex(array,index) : employee {
    if(index >= array.length){
        return null;
    }
    return arr[index];
}
var _4thEmployee: employee = searchByIndex(arr,3);
console.log(_4thEmployee);

//search by Id
function searchByEmployeeId(array,key) : employee {
    return array.filter(emp => emp.Id === key)[0];
}
var employeeWithId2 = searchByEmployeeId(arr,2);
console.log(employeeWithId2);

//insert employee
function InsertEmployee(employee) :void {
    arr.push(employee);
}
InsertEmployee({Id:6,FirstName:"k",LastName:"l",Address:"xyz",Salary:15000});
console.log(arr);

//delete employee
function DeleteEmployeebyId(Id:number) : void {
    arr = arr.filter(employee => employee.Id !== Id);
}
DeleteEmployeebyId(6);
console.log(arr);

// Create one more array emp and join the value with above array
var arr2:employee[] = [];
arr2.push({Id:7,FirstName:"ab",LastName:"cd",Address:"a1,b1,c1",Salary:25000})
arr2.push({Id:8,FirstName:"er",LastName:"pb",Address:"a2,b2,c2",Salary:30000})
var arr3 = arr.concat(arr2);

//When display list combine firstname and lastname as fullname, From the address field flatnumber,city,state and should be splited.PF should be computed and total salary should be display
for(var emp of arr3){
    console.log(`FullName: ${emp.FirstName} ${emp.LastName} `);
    var address = emp.Address.split(",");
    console.log(`City: ${address[0]} Dist: ${address[1]} State : ${address[2]}`);
    var pf = emp.Salary.valueOf() * 0.12;
    console.log(`PF : ${pf} TotaSalary: ${emp.Salary.valueOf() - pf}`);
}