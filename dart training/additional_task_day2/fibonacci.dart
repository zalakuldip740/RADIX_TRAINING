import 'dart:io';

void main() {
  int num1 = 0, num2 = 1;
  print('Enter a number');
  int count = int.parse(stdin.readLineSync()!);
  print('fibonacci series of $count numbers');
  for (int i = 1; i <= count; i++) {
    stdout.write('$num1 ');
    int sum = num1 + num2;
    num1 = num2;
    num2 = sum;
  }
}

// o/p
// Enter a number
// 5
// fibonacci series of 5 numbers
// 0 1 1 2 3