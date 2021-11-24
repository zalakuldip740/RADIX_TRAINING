//bool
var isDone = false;
//number
var decimal = 6;
var hex = 0xf00d;
var binary = 10;
var octal = 484;
//String
var color = "blue";
color = 'red';
//color = 1; //error
//template strings
var fullName = "Bob Bobbington";
var age = 37;
var sentence1 = "Hello, my name is ".concat(fullName, ".I'll be ").concat(age + 1, " years old next month.");
var sentence2 = "Hello, my name is " +
    fullName +
    ".\n" +
    "I'll be " +
    (age + 1) +
    " years old next month.";
console.log(sentence1);
console.log(sentence2);
//array
var list1 = [1, 2, 3,];
var list2 = [1, 2, 3];
//tuple
// Declare a tuple type
var x;
// Initialize it
x = ["hello", 10]; // OK
// Initialize it incorrectly
//x = [10, "hello"]; // Error
console.log(x[0].substring(1));
//console.log(x[1].substring(1));
//enums
//enums begin numbering their members starting at 0.
var Color;
(function (Color) {
    Color[Color["Red"] = 0] = "Red";
    Color[Color["Green"] = 1] = "Green";
    Color[Color["Blue"] = 2] = "Blue";
})(Color || (Color = {}));
var c = Color.Green;
var colorName = Color[2];
console.log(colorName); //blue,if i give Red=1,than o/p will be green
//unknown
var notSure = 4;
notSure = "maybe a string instead";
// OK, definitely a boolean
notSure = false;
//any
function getValue(key) {
    return "zala";
}
;
var str = getValue("myString");
var a = getValue("myString");
//void
function warnUser() {
    console.log("This is my warning message");
}
//const num:number=warnUser();//error
//toExponential()
var myNumber = 1.0000;
console.log(myNumber.toExponential(3));
//tofixed
console.log(myNumber.toFixed(2)); //returns 1.00
console.log(myNumber.toLocaleString()); //1
//toprecision
var myNumber2 = 10.5679;
console.log(myNumber2.toPrecision(1)); // returns 1e+1
console.log(myNumber2.toPrecision(2)); // returns 11
console.log(myNumber2.toPrecision(3)); // returns 10.6
//tostring
var myNumber3 = 123;
myNumber.toString(); // returns '123'
myNumber.toString(2); // returns '1111011'
myNumber.toString(4); // returns '1323'
myNumber.toString(8); // returns '173'
myNumber.toString(16); // returns '7b'
myNumber.toString(36);
//valueof
var num2 = myNumber.valueOf();
console.log(num2); //Output: 1
console.log(typeof num2); //Output: number
//array methods
var fruits = ['Apple', 'Orange', 'Banana'];
fruits.sort();
console.log(fruits); //output: [ 'Apple', 'Banana', 'Orange' ]
console.log(fruits.pop()); //output: Orange
fruits.push('Papaya');
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya']
fruits = fruits.concat(['Fig', 'Mango']);
console.log(fruits); //output: ['Apple', 'Banana', 'Papaya', 'Fig', 'Mango'] 
console.log(fruits.indexOf('Papaya')); //output: 2
