import 'dart:async';
import 'dart:io';

import 'package:api_cubit_task/Data/Model/model.dart';
import 'package:api_cubit_task/Data/repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'picsy_event.dart';
part 'picsy_state.dart';

class PicsyBloc extends Bloc<PicsyEvent, PicsyState> {
  final Repository repository;

  PicsyBloc(this.repository) : super(PicsyInitial());

  @override
  Stream<PicsyState> mapEventToState(
    PicsyEvent event,
  ) async* {
    if (event is loadingevent) {
      try {
        final result = await InternetAddress.lookup('example.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          final bookdatas = await repository.apiservice.getTasks();
          List<Datum>? listdatas = bookdatas.response!.data;
          if (listdatas.isNotEmpty) {
            yield (PicsyResponsesuccess(listdatas));
          } else {
            yield (PicsyError("No data found"));
          }
        }
      } on SocketException catch (_) {
        yield (Connectionstatusfailure("Check Your Internet connection!"));
      }
      // try {
      //   final bookdatas = await repository.apiservice.getTasks();
      //   List<Datum>? listdatas = bookdatas.response!.data;
      //   if (listdatas.isNotEmpty) {
      //     emit(PicsyResponsesuccess(listdatas));
      //   } else {
      //     emit(PicsyError("No data found"));
      //   }
      // } catch (e) {}
    }
  }
}
