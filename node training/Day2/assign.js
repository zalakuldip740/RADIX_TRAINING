//Do mathematical operation like Addition, subtraction, multiplication, div.
//Use case statement.
//Accept two numbers from the user from the command line.
//Create Separate function for add, sub, multi and div
//And store the result in one txt file. And display the result from file.

fs=require('fs')
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
})

readline.question('Please enter the first number : ', (answer1) => {
    readline.question('Please enter the second number : ', (answer2) => {
    
        // var result2 = (+answer1) / (+answer2);
        // console.log(`The sum of above two numbers is ${result2}`);
        calculator(answer1,answer2,"+") //sum
        calculator(answer1,answer2,"-") //sub
        calculator(answer1,answer2,"*") //mul
        calculator(answer1,answer2,"/") //mul
        readline.close();
        readdata();
    });
});

function calculator(no1,no2,choice) { 
    switch(choice) {
        case "+":
          res=add(no1,no2);
          fs.appendFile('output.txt',`add:${res}`, function (err) {
              if (err) return console.log(err);
            });
            //console.log(`The sum of above two numbers is ${add(no1,no2)}`);
          break;
          case "-":
            res=sub(no1,no2);
            fs.appendFile('output.txt',`\nsub:${res}`, function (err) {
                if (err) return console.log(err);
              });
            
            //console.log(`The sub of above two numbers is ${sub(no1,no2)}`);
          break;
          case "*":
            res=mul(no1,no2);
            fs.appendFile('output.txt',`\nmul:${res}`, function (err) {
                if (err) return console.log(err);
              });
            //console.log(`The mul of above two numbers is ${mul(no1,no2)}`);
          break;
          case "/":
            res=div(no1,no2);
          fs.appendFile('output.txt',`\ndiv:${res}`, function (err) {
              if (err) return console.log(err);
            });
           // console.log(`The div of above two numbers is ${div(no1,no2)}`);
          break;
        default:
          // code block
      }
}


function add(no1,no2){
    return ((+no1) + (+no2));
}

function sub(no1,no2){
    return ((+no1) - (+no2));
}

function mul(no1,no2){
    return ((+no1) * (+no2));
}

function div(no1,no2){
    return ((+no1) / (+no2));
}

function readdata(){
fs.readFile('output.txt', 'utf8', function (err,data) {
  if (err) {
    return console.log(err);
  }
  console.log(data);
});
}