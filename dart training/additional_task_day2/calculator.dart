import 'dart:io';

void main() {
  print("Enter two numbers");
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  print('1.addition\n2.subtraction\n3.multiplication\n4.division');
  print('Enter Your choice');
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print('addition of $a and $b : ${a + b}');
      break;

    case 2:
      print('subtraction of $a and $b : ${a - b}');
      break;

    case 3:
      print('multiplication of $a and $b : ${a * b}');
      break;

    case 4:
      print('division of $a and $b : ${a / b}');
      break;
  }
}
