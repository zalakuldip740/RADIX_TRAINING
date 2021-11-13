part of 'picsy_bloc.dart';

@immutable
abstract class PicsyState {}

class PicsyInitial extends PicsyState {}

class PicsyResponsesuccess extends PicsyState {
  final List<Datum> datas;

  PicsyResponsesuccess(this.datas);
}

class PicsyError extends PicsyState {
  final String errormsg;

  PicsyError(this.errormsg);
}

// class PicsySlowinterneterror extends PicsyState {
//   final String errormsg;
//   PicsySlowinterneterror(this.errormsg);
// }

class Connectionstatusfailure extends PicsyState {
  final String errormsg;

  Connectionstatusfailure(this.errormsg);
}
