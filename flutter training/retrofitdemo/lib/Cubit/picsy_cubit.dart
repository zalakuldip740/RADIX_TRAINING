import 'package:bloc/bloc.dart';
import 'package:retrofitdemo/Data/Model/model.dart';
import 'package:retrofitdemo/Data/repository.dart';

part 'picsy_state.dart';

class PicsyCubit extends Cubit<PicsyState> {
  final Repository repository;
  PicsyCubit({required this.repository}) : super(PicsyLoding());

  Future<List<Datum>> get posts => repository.getData();

  Future getoutput() async {
    if (state is PicsyResponsesuccess)
      //final Future<List<Datum>> posts = (await repository.getData()) as Future<List<Datum>>;
      emit(PicsyResponsesuccess(this.posts));
  }
}
