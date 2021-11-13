// Write a logic using looping technique which will check
//  if the list element when added returns the x value.
//  For eg.:List inList={1,2,3,4,5,6,7} and x is=7,
//  So you need to use any looping technique you are comfortable with
//  and write a logic which returns the elements which will return x value after addition operation is done.

import 'dart:io';

void main() {
  var lst = [1, 2, 3, 4, 5, 6, 7, 8];
  int l = lst.length;
  print('Enter a number');
  int input = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < l - 1; i++) {
    for (int j = i + 1; j <= l - 1; j++) {
      if (lst[i] + lst[j] == input) {
        print("${lst[i]},${lst[j]}");
      }
    }
  }
}

//O/P
// Enter a number
// 5
// 1,4
// 2,3