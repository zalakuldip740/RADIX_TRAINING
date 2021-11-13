class demo {
  var queue = [1, 5, 8, 3, 9]; // this is growable list
  // consider queue has fix length of 5 for check queue is full or not

  void enqueue(int a) {
    if (queue.length == 5) {
      print('queue is full');
    } else {
      queue.add(a);
      print('after insertion:$queue');
    }
  }

  void dequeue() {
    // check queue is empty or not
    if (queue.isEmpty) {
      print('queue is empty');
    } else {
      queue.removeAt(0);
      print('after deletion:$queue');
    }
  }
}

void main() {
  demo d = new demo();

  // insert an element
  d.enqueue(12);

  // remove an element
  d.dequeue();
}
