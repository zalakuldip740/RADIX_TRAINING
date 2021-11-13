// void main() {
//   var arr = [0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0];
//   arr.sort();
//   print(arr);
// }

void main() {
  var arr = [0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0];
  int l = arr.length;
  for (int i = 0; i < l - 1; i++) {
    for (int j = i + 1; j < l; j++) {
      if (arr[j] < arr[i]) {
        int temp = arr[j];
        arr[j] = arr[i];
        arr[i] = temp;
      }
    }
  }
  print(arr);
}
