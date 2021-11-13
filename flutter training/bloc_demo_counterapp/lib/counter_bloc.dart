import 'dart:async';

class CounterBloc {
  final _streamcontroller = StreamController<int>();

  StreamSink<int> get countersink => _streamcontroller.sink;
  Stream<int> get counterStream => _streamcontroller.stream;
}
