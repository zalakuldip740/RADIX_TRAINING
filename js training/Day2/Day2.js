//Write a JavaScript function to check whether a string is blank or not
var a="Kuldip Zala";
if(a.length==0){
    console.log("String is null");
}else{
    console.log("String is not null");
}

//Write a JavaScript function to split a string and convert it into an array of words

 arr=a.split(" ");
 console.log(arr);


 //Write a JavaScript function to extract a specified number of characters from a string.

 var ans=a.slice(0,6);
 console.log(ans);

 //Write a JavaScript function to get the current date

 const currentdate=new Date();
 console.log(currentdate);


 //Try some operation with list like push, pop, shifting, deleting element

 const arr2=['a','b','c','d'];

 arr2.push('e');    // [ 'a', 'b', 'c', 'd', 'e' ]
 arr2.pop();        // [ 'a', 'b', 'c', 'd' ]
 arr2.shift();        //[ 'b', 'c', 'd' ]
 arr2.unshift('z');     // [ 'z', 'b', 'c', 'd' ]
 delete arr2[3];        // [ 'z', 'b', 'c', <1 empty item> ]
 console.log(arr2);