part of 'bottom_sheet_cubit.dart';

abstract class BottomSheetState extends Equatable {
  const BottomSheetState();
}

class BottomSheetInitial extends BottomSheetState {
  @override
  List<Object> get props => [];
}

class BottomSheetLoading extends BottomSheetState {
  @override
  List<Object> get props => [];
}

class BottomSheetError extends BottomSheetState {
  @override
  List<Object> get props => [];
}

class BottomSheetLoaded extends BottomSheetState {
  final List<Datas> datas;
  const BottomSheetLoaded({required this.datas});
  @override
  List<Object> get props => [datas];
}
