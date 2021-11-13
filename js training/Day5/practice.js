// Using Function Expression, find the area of circle

function area(r){
    area=Math.PI*r*r;
    console.log(area);
}
area(3);

//Using Function Constructor, find the area of rectangle

var myfun=function(l,b){return l * b};
var ans=myfun(5,8);
console.log(ans);


//Explain usage of Function Hosing using example
//Hoisting is a JavaScript technique which moves variables and function declarations to the top of their scope before code execution begins. 
//Within a scope no matter where functions or variables are declared, they're moved to the top of their scope.
 //Note that hoisting only moves the declaration while assignments are left in place.

 myfun2("Zala");

 function myfun2(name){
     console.log(name);
 }

 //Using Function call create employee object with field Name, Address and Designation and pass it to function.


 var person = {
            Employee: function() {
             return this.Field + "," + this.Address + "," + this.Designation;
            }
            }
            var person1 = {
            Field:"Flutter",
            Address: "Radixweb",
            Designation:"Trainee developer"
            }


    console.log(person.Employee.call(person1));

    //Using Function Apply pass employee object to a function defined in the function.

    var person = {
        Employee: function() {
         return this.Field + "," + this.Address + "," + this.Designation;
        }
        }
        var person1 = {
        Field:"Flutter",
        Address: "Radixweb",
        Designation:"Trainee developer"
        }


console.log(person.Employee.apply(person1));


   //Explain Function closure with practical



   // Global variables can be made local (private) with closures.
           // A function can access all variables defined inside the function, like this:
                myFunction();
                function myFunction() {
                let a1 = 2;
                console.log(a1*a1);
                }
            //But a function can also access variables defined outside the function, like this:
                let a2 = 6;
                myFunction();
                function myFunction() {
                console.log(a2*a2);
                }   
            //Variables created without a declaration keyword (var, let, or const) are always global, even if they are created inside a function.
                myFunction();
                console.log(a3*a3);
                function myFunction() {
                a3 = 5;
                }
        