//1. Create hello.js file and exports a value of constant variable
// greeting=”Greeting of the day!!!” and load the same in index.js
var myModule = require('./hello');

// name is a member of myModule due to the export above
var greeting = myModule.greeting;
console.log(greeting);

//2. Create Rectangle.js and compute AreaofRectangle and perimeter 
// of Rectangle, and exports area and perimeter of rectangle2. 
// Create Rectangle.js and compute AreaofRectangle and perimeter of Rectangle, and exports area and perimeter of rectangle


const m = require('./Rectangle');
console.log(m.Area(5,6));
console.log(m.Perimeter(8,2));