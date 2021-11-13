import 'dart:io';

int factorial(int number) {
  if (number == 0) {
    return 1;
  } else {
    return number * factorial(number - 1); // recursion
  }
}

void main() {
  print('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  if (number < 0) {
    print('factorial does not exist for negative number');
  } else {
    int res = factorial(number);
    print('factorial of $number is $res');
  }
}

// o/p
// Enter a number
// 6
// factorial of 6 is 720