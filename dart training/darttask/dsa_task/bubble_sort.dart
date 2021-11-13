class demo {
  void bubble_sort(var a) {
    int l = arr.length;
    for (int i = 0; i < l - 1; i++)
      for (int j = 0; j < l - i - 1; j++)
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
  }
}

var arr = [12, 85, 45, 69, 23, 10, 48];
void main() {
  demo ob = new demo();
  ob.bubble_sort(arr);
  print('Sorted:$arr');
}
