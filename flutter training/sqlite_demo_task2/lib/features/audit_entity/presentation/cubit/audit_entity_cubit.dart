import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sqlite_demo_task2/features/audit_entity/domain/use_cases/get_entries_count_usecase.dart';
import 'package:sqlite_demo_task2/features/audit_entity/domain/use_cases/get_json_and_insert_audit_entity_usecase.dart';

part 'audit_entity_state.dart';

class AuditEntityCubit extends Cubit<AuditEntityState> {
  final GetEntriesCountUseCase getEntriesCountUseCase;
  final GetJsonAndInsertAuditEntityUseCase getJsonAndInsertAuditEntityUseCase;

  AuditEntityCubit(
      {required this.getEntriesCountUseCase,
      required this.getJsonAndInsertAuditEntityUseCase})
      : super(AuditEntityInitial());

  getCount() async {
    emit(AuditEntityLoading());
    final countlist = await getEntriesCountUseCase.call();
    if (countlist[0] == 0) {
      await getJsonAndInsertAuditEntityUseCase
          .call()
          .whenComplete(() => emit(AuditEntityLoaded(countData: countlist)));
    } else {
      emit(AuditEntityLoaded(countData: countlist));
    }
  }
}
