import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrofitdemo2/Data/Model/model.dart';
import 'package:retrofitdemo2/Data/repository.dart';

part 'picsy_state.dart';

class PicsyCubit extends Cubit<PicsyState> {
  final Repository repository;

  PicsyCubit(this.repository) : super(PicsyInitial()) {
    getoutput();
  }

  void getoutput() async {
    // Timer(Duration(seconds: 5), () {
    //   emit(PicsySlowinterneterror("Check Your Internet connection"));
    // });
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        final bookdatas = await repository.apiservice.getTasks();
        List<Datum>? listdatas = bookdatas.response!.data;
        if (listdatas.isNotEmpty) {
          emit(PicsyResponsesuccess(listdatas));
        } else {
          emit(PicsyError("No data found"));
        }
      }
    } on SocketException catch (_) {
      emit(Connectionstatusfailure("Check Your Internet connection!"));
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
