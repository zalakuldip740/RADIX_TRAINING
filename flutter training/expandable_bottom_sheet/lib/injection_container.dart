import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/cubit/bottom_sheet_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> init() async {
  // cubit
  sl.registerFactory<BottomSheetCubit>(() => BottomSheetCubit());
}
