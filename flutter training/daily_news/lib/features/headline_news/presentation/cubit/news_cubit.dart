import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:daily_news/features/headline_news/domain/entities/headline_news_entity.dart';
import 'package:daily_news/features/headline_news/domain/use_cases/get_headline_news_usecase.dart';
import 'package:equatable/equatable.dart';

part 'news_state.dart';

class HeadLineNewsCubit extends Cubit<HeadLineNewsState> {
  final GetHeadLineNewsUseCase getHeadLineNewsUseCase;

  HeadLineNewsCubit({required this.getHeadLineNewsUseCase})
      : super(NewsInitial());

  Future<void> getnews() async {
    // NetworkInfoImpl? networkInfoImpl;
    // bool isonline = await networkInfoImpl!.isConnected;
    // if (isonline) {
    //emit(NewsLoading());
    try {
      final result = await getHeadLineNewsUseCase.call();
      result!.fold((l) => emit(NewsError(msg: l)), (r) {
        emit(NewsLoaded(headlinenews: r));
        print(r);
      });
    } on SocketException catch (_) {
      emit(const NewsError(msg: " Check Internet connection"));
    }
    // } else {
    //   emit(NoInternet());
    // }
  }
}
