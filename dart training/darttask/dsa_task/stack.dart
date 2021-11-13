class demo {
  var stack = [1, 5, 8, 3, 9]; // this is growable list
  // consider stack has fix length of 5 for check stack is full or not

  void push(int a) {
    if (stack.length == 5) {
      print('stack is full');
    } else {
      stack.add(a);
      print('after insertion:$stack');
    }
  }

  void pop() {
    // check stack is empty or not
    if (stack.isEmpty) {
      print('stack is empty');
    } else {
      stack.removeAt(stack.length - 1);
      print('after deletion:$stack');
    }
  }
}

void main() {
  demo d = new demo();
// insert an element
  d.push(12);
  // remove an element
  d.pop();
}
