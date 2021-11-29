function padLeft(value, padding) {
    if (typeof padding === "number") {
        return Array(padding + 1).join(" ") + value;
    }
    if (typeof padding === "string") {
        return padding + value;
    }
    throw new Error("Expected string or number, got '".concat(typeof padding, "'."));
}
//let ans1= padLeft("Hello world", true);//error
var ans2 = padLeft("Hello world", "zala");
console.log(ans2);
//class
var Greeter = /** @class */ (function () {
    function Greeter(message) {
        this.greeting = message;
    }
    Greeter.prototype.greet = function () {
        return "Hello, " + this.greeting;
    };
    return Greeter;
}());
var greeter = new Greeter("world");
//function
// Named function
// function add(x, y) {
//     return x + y;
//   }
//   // Anonymous function
//   let myAdd = function (x, y) {
//     return x + y;
//   };
function add(x, y) {
    return x + y;
}
var myAdd = function (x, y) {
    return x + y;
};
var abc = function (x, y) {
    return x + y;
};
function printLabel(labeledObj) {
    console.log(labeledObj.label);
}
var myObj = { size: 10, label: "Size 10 Object" };
printLabel(myObj);
