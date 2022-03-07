import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/datas_model.dart';

part 'bottom_sheet_state.dart';

class BottomSheetCubit extends Cubit<BottomSheetState> {
  BottomSheetCubit() : super(BottomSheetInitial());

  getDatas() {
    emit(BottomSheetLoading());
    List<Datas> datas = [
      Datas(
          imageUrl:
              'https://www.picsy.in/images/app/New-App/dashboard/Calendar.jpg',
          desc:
              'This is a bottom sheet that is partially visible onto the screen',
          title: 'BottomSheet'),
      Datas(
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/foodies-b6752.appspot.com/o/ProfileImgs%2FMvUKdCkzz8alyzIqOdcPzWQnbZR2?alt=media&token=f609b00f-812a-4fa0-b862-84f463221458',
          desc:
              'This is a bottom sheet that is partially visible onto the screen',
          title: 'BottomSheet'),
      Datas(
          imageUrl:
              'https://www.picsy.in/images/app/New-App/dashboard/Calendar.jpg',
          desc:
              'This is a bottom sheet that is partially visible onto the screen',
          title: 'BottomSheet'),
      Datas(
          imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/foodies-b6752.appspot.com/o/ProfileImgs%2FMvUKdCkzz8alyzIqOdcPzWQnbZR2?alt=media&token=f609b00f-812a-4fa0-b862-84f463221458',
          desc:
              'This is a bottom sheet that is partially visible onto the screen',
          title: 'BottomSheet'),
    ];
    emit(BottomSheetLoaded(datas: datas));
  }
}
