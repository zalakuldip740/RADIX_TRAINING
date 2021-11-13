//1.Write a logic to check if input number is prime.
import 'dart:io';

void check_prime(var number) {
  int flag = 0;

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      flag = 1;
      break;
    }
  }
  if (number <= 1) {
    print('$number neither prime nor composite');
  } else {
    if (flag == 0) {
      print("$number is a prime");
    } else {
      print("$number is not a prime");
    }
  }
}

void main() {
  print('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  print('Entered number is:$number');
  check_prime(number);
}
