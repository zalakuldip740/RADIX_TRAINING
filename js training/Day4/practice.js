//Define a function called callback which receives an argument and prints the square of that number.

function square(a,callback){
    callback(a*a);
}
function print(ans){
    console.log(ans);
}
square(3,print);



//Explain difference between var and let keyword using example. 

for (var i = 0; i < 5; i++) {
	console.log("Inside the loop:", i);
}

console.log("Outside the loop:", i);


for (let i = 0; i < 5; i++) {
	console.log("Inside the loop:", i);
}

console.log("Outside the loop:", i);


// Make a function that takes in a single parameter and returns a new promise.
//  using setTimeout, after 500 milliseconds, the promise will either resolove or reject.
//   if the input is a string, the promise resolves with that reverse string . 
//   if the input is anything but a string it rejects with that same input call the function wrong Input
function myFun(value) {
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                if (typeof (value) == typeof ("world")) {
                    resolve(value.split("").reverse().join(""));
                }
                else {
                    reject("wrong input");
                }
            }, 500);
    
        });
    
    }
    
    myFun("dlrow").then(value => { console.log(value) }, error => console.log(error));