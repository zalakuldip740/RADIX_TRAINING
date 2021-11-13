var x=12;
var y=15;
add(x,y);
sub(x,y);
mul(x,y);
div(x,y);
compare(x,y);


function add(a,b){
    console.log("addition : "+(a+b));

}

function sub(a,b){
    console.log("Subtraction : "+(a-b));

}

function mul(a,b){
    console.log("multiplication : "+(a*b));
}

function div(a,b){
    console.log("division : "+(a/b));;
}

function compare(a,b){
    if(a>b){
        console.log(a+" greater than "+b);
    }else{
        console.log(b+" greater than "+a);
    }
}

switch (new Date().getDay()) {
    case 0:
      day = "Sunday";
      break;
    case 1:
      day = "Monday";
      break;
    case 2:
       day = "Tuesday";
      break;
    case 3:
      day = "Wednesday";
      break;
    case 4:
      day = "Thursday";
      break;
    case 5:
      day = "Friday";
      break;
    case 6:
      day = "Saturday";
  }
  console.log(day);