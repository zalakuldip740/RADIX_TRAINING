export class Employee<T,U>
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