import 'dart:io';

void main() {
  var lst = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int l = lst.length;
  print('Enter a number');
  int input = int.parse(stdin.readLineSync()!);

  int i = 0;

  while (i < l - 1) {
    int j = i + 1;
    while (j < l) {
      if (lst[i] + lst[j] == input) {
        print('${lst[i]},${lst[j]}');
      }
      j++;
    }
    i++;
  }
}
