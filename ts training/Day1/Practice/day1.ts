//bool
let isDone: boolean = false;
//number
let decimal: number = 6;
let hex: number = 0xf00d;
let binary: number = 0b1010;
let octal: number = 0o744;
//String
let color: string = "blue";
color = 'red';
//color = 1; //error

//template strings
let fullName: string = `Bob Bobbington`;
let age: number = 37;
let sentence1: string = `Hello, my name is ${fullName}.I'll be ${age + 1} years old next month.`;
let sentence2: string =
  "Hello, my name is " +
  fullName +
  ".\n" +
  "I'll be " +
  (age + 1) +
  " years old next month.";
console.log(sentence1);
console.log(sentence2);

//array
let list1: number[] = [1, 2, 3,];
let list2: Array<number> = [1, 2, 3];

//tuple
// Declare a tuple type
let x: [string, number];
// Initialize it
x = ["hello", 10]; // OK
// Initialize it incorrectly
//x = [10, "hello"]; // Error

console.log(x[0].substring(1));
 
//console.log(x[1].substring(1));



//enums
//enums begin numbering their members starting at 0.
enum Color {
    Red,
    Green,
    Blue,
  }
  let c: Color = Color.Green;
  let colorName: string = Color[2];
 
console.log(colorName);//blue,if i give Red=1,than o/p will be green

//unknown
let notSure: unknown = 4;
notSure = "maybe a string instead";
 
// OK, definitely a boolean
notSure = false;

//any
function getValue(key: string): any{
    return "zala";
};
const str: string = getValue("myString");
const a: number = getValue("myString");


//void
function warnUser(): void {
    console.log("This is my warning message");
  }
  //const num:number=warnUser();//error



  //toExponential()
  var myNumber:number=1.0000;
  console.log(myNumber.toExponential(3));
  
  //tofixed
console.log(myNumber.toFixed(2)); //returns 1.00
console.log(myNumber.toLocaleString());//1

//toprecision


let myNumber2: number = 10.5679;

console.log(myNumber2.toPrecision(1)); // returns 1e+1
console.log(myNumber2.toPrecision(2)); // returns 11
console.log(myNumber2.toPrecision(3)); // returns 10.6


//tostring
let myNumber3: number = 123;
myNumber.toString(); // returns '123'
myNumber.toString(2); // returns '1111011'
myNumber.toString(4); // returns '1323'
myNumber.toString(8); // returns '173'
myNumber.toString(16); // returns '7b'
myNumber.toString(36); 

//valueof
let num2 = myNumber.valueOf() 
console.log(num2) //Output: 1
console.log(typeof num2) //Output: number


//array methods


var fruits: Array<string> = ['Apple', 'Orange', 'Banana']; 
fruits.sort(); 
console.log(fruits); //output: [ 'Apple', 'Banana', 'Orange' ]

console.log(fruits.pop()); //output: Orange

fruits.push('Papaya'); 
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya']

fruits = fruits.concat(['Fig', 'Mango']); 
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya', 'Fig', 'Mango'] 

console.log(fruits.indexOf('Papaya'));//output: 2



