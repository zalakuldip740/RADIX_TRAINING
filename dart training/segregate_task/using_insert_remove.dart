// Write an logic to segregate 1s and 0s from an array.
// For eg: Input array =[0,1,0,1,0,0,1,1,1,0]
// Output:[0,0,0,0,0,1,1,1,1,1].

void main() {
  var arr = [0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0];
  int l = arr.length;
  for (int i = 0; i < l - 1; i++) {
    if (arr[i] == 1) {
      arr.insert(l, arr[i]); // insert at last pos.
      arr.remove(arr[i]); // remove from ith pos.
    }
  }
  print(arr);
}
