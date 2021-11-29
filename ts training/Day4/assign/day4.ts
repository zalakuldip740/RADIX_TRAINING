// Store 5 Employee Data(ID,Name,City,DOJ) in one Array. Search the employee with ID.
   
var EmployeeData:{ Id: number, Name: string,City:string,DOJ:Date }[] = [{Id:1,Name:"Parth",City:"Modasa",DOJ:new Date("2021-01-12")},
                    {Id:2,Name:"Mayank",City:"Mumbai",DOJ:new Date("2022-01-12")},
                    {Id:3,Name:"Jay",City:"Mumbai",DOJ:new Date("2021-01-12")},
                    {Id:4,Name:"Rajesh",City:"Delhi",DOJ:new Date("2018-01-12")},
                    {Id:5,Name:"Raju",City:"Delhi",DOJ:new Date("2029-01-12")}];

console.log(EmployeeData);

// Search the employees who has joined after year 2020
var emps = EmployeeData.filter(x=>x.DOJ.getFullYear() > 2020)
for(let emp of emps)
{
    console.log(emp);
}

// Search the employee who has joined after year 2020 and stays in Mumbai city
emps = EmployeeData.filter(x=>x.DOJ.getFullYear() > 2020 && x.City == "Mumbai" )
for(let emp of emps)
{
    console.log(emp);
}