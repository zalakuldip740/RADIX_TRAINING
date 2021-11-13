import 'dart:io';

void main() {
  print('Enter string');
  String input = stdin.readLineSync()!;
  print('Entered string is: $input');
  String reverse_input = input.split('').reversed.join('');

  if (input.toLowerCase() == reverse_input.toLowerCase()) {
    print('Entered String is Palindrome');
  } else {
    print('Entered String is not Palindrome');
  }
}
//o/p
// Enter string
// Kuldip
// Entered string is: Kuldip
// Entered String is not Palindrome