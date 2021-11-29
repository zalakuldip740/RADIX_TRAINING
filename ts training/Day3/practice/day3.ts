// 1. Generic
function Add<T>(a:T) : T {
    return a;
}   
console.log(Add<string>("Day3PracticeGeneric"));
console.log(Add<number>(50));

class Employee<T,U>
{
    private EmpID:T;
    private EmpName:U
    public constructor(Id:T,Name:U){
         this.EmpID=Id,
         this.EmpName=Name
    }
    Display() : void {
        console.log(this.EmpID+' '+this.EmpName);
    }
}
var obj = new Employee<number,string>(2,"Sagar");
console.log(obj.Display());

// 2. Modules
import * as Emp from "./EmployeeInfoDay3";
var newEmpInfo = new Emp.Employee<number,string>(15,"krupal");
console.log(newEmpInfo.Display());