var n1 = 23;
var n2 = 43;
var n3 = 56;
console.log("Values are:23,43 and 56.");
console.log(greater(n1, n2, n3));
console.log(sum(n1, n2, n3));

function greater(a, b, c) {
  if (a > b && a > c) {
    console.log(a + " is greater");
  } else if (b > c) {
    console.log(b + " is greater");
  } else {
    console.log(c + " is greater");
  }
}

function sum(a, b, c) {
  list = [0];
  if (a > 40) {
    list.add(a);
  }
  if (b > 40) {
    list.add(b);
  }
  if (c > 40) {
    list.add(c);
  }
  for (i = 0; i < list.length; i++) {
    sum = 0;
    sum = sum + list[i];
    return sum;
  }
}
