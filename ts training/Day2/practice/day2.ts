function padLeft(value: string, padding: string|number) {
    if (typeof padding === "number") {
      return Array(padding + 1).join(" ") + value;
    }
    if (typeof padding === "string") {
      return padding + value;
    }
    throw new Error(`Expected string or number, got '${typeof padding}'.`);
  }
  
  //let ans1= padLeft("Hello world", true);//error
  let ans2= padLeft("Hello world", "zala");
  console.log(ans2);


  //class

  class Greeter {
    greeting: string;
   
    constructor(message: string) {
      this.greeting = message;
    }
   
    greet() {
      return "Hello, " + this.greeting;
    }
  }
   
  let greeter = new Greeter("world");
  

  //function
  // Named function
// function add(x, y) {
//     return x + y;
//   }
   
//   // Anonymous function
//   let myAdd = function (x, y) {
//     return x + y;
//   };


  function add(x: number, y: number): number {
    return x + y;
  }
   
  let myAdd = function (x: number, y: number): number {
    return x + y;
  };

  let abc: (x: number, y: number) => number = function (
    x: number,
    y: number
  ): number {
    return x + y;
  };

  //interface
  interface LabeledValue {
    label: string;
  }
   
  function printLabel(labeledObj: LabeledValue) {
    console.log(labeledObj.label);
  }
   
  let myObj = { size: 10, label: "Size 10 Object" };
  printLabel(myObj);