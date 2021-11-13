part of 'picsy_cubit.dart';

abstract class PicsyState {}

class PicsyInitial extends PicsyState {}

class PicsyLoding extends PicsyState {
  PicsyLoding();
}

class PicsyResponsesuccess extends PicsyState {
  final Future<List<Datum>> lists;
  PicsyResponsesuccess(this.lists);
}

// class PicsyError extends PicsyState {
//   final String msg;
//   PicsyError(this.msg);
// }
