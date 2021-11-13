import 'dart:io';

void main() {
  var lst = [1, 2, 3, 4, 5, 6, 7];
  int l = lst.length;
  print('Enter a number');
  int input = int.parse(stdin.readLineSync()!);
  for (int a in lst) {
    for (int b in lst) {
      if (a + b == input && a < l / 2) {
        print('$a,$b');
      }
    }
  }
}
// o/p
// Enter a number
// 7
// 1,6
// 2,5
// 3,4