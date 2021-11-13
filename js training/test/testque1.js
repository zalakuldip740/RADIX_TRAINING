//Store 5 employees’ data in one array (ID,FirstName,LastName,Address,Salary).
// Do the operation searching by indexnumber, EmployeeID, Insert the employee, 
//delete the employee from the Array. Create one more array emp and join the value
// with above array. When display list combine firstname and lastname as fullname, 
//From the address field flatnumber,city,state and should be splited.
//PF should be computed and total salary should be display.

var employees =[
    {id:1,FirstName:"Kuldip",LastName:"Zala",Address:"123,Talod",Salary:22000},
    {id:2,FirstName:"Rutvik",LastName:"Prajapati",Address:"12,Modasa",Salary:20000},
    {id:3,FirstName:"Jay",LastName:"Prajapati",Address:"15,Vijapur",Salary:25000},
    {id:4,FirstName:"Parth",LastName:"Patel",Address:"125,Naroda",Salary:25000},
    {id:5,FirstName:"Sandip",LastName:"Prajapati",Address:"125,HMT",Salary:23000}
];

function trigered(action,item){
    switch (action){
        case 1:
            for(var i=0;i<employees.length;i++){
                console.log("FullName : "+employees[i].FirstName +" " +employees[i].LastName);
                console.log("flat no : "+employees[i].Address.split(",")[0]);
                console.log("city : "+employees[i].Address.split(",")[1]);
                //console.log(e);
                console.log("Salary : "+employees[i].Salary*0.2);
               

            }
        break;

        case 2:
            //console.log(employees[item]);
            console.log("FullName : "+employees[item].FirstName +" " +employees[item].LastName);
                console.log("Address : "+employees[item].Address);
                console.log("Salary : "+employees[item].Salary);
        break;


        case 3:
            for(var i=0;i<employees.length;i++){
                if(employees[i].id==item)
               // console.log(employees[i]);
               console.log("FullName : "+employees[i].FirstName +" " +employees[i].LastName);
                console.log(employees[i].Address);
                console.log(employees[i].Salary);

            }
        break;

        case 4:
            employees.push({id:6,FirstName:"Hemansu",LastName:"Parmar",Address:"rajkot",Salary:25000});
        break;

        case 5:
            employees.pop();
        break;


        case 6:
            var array2=[
                {id:9,FirstName:"abc",LastName:"pqr",Address:"Ab",Salary:25000},
                {id:15,FirstName:"xyz",LastName:"opq",Address:"xy",Salary:28000}
            ];
            // employees.push({id:9,FirstName:"abc",LastName:"pqr",Address:"Ab",Salary:25000},
            // {id:15,FirstName:"xyz",LastName:"opq",Address:"xy",Salary:28000});
            //employees.push(array2);
            var newarry=employees.concat(array2);
            console.log(newarry);
            
        break;

    }

}

console.log("1.Display all employee data");
console.log("2.Search by index number");
console.log("3.Search by EmployeeId");
console.log("4.Insert employee");
console.log("5.delete employee");
console.log("6.add multiple employee");



console.log("presing 1")
trigered(1);

console.log("presing 2")
trigered(2,4);           // pass indexnumber as item


console.log("presing 3")
trigered(3,4);            // pass employee id as item

console.log("presing 4")
trigered(4);

console.log("presing 5")
trigered(5);

console.log("presing 6")
trigered(6);

