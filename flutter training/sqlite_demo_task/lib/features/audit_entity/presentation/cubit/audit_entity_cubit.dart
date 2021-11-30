import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/delete_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_json_data_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/insert_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/update_audit_entity_usecase.dart';

part 'audit_entity_state.dart';

class AuditEntityCubit extends Cubit<AuditEntityState> {
  final InsertAuditEntityUsecase insertAuditEntityUsecase;
  final DeleteAuditEntityUsecase deleteAuditEntityUsecase;
  final UpdateAuditEntityUsecase updateAuditEntityUsecase;
  final GetAuditEntityUsecase getAuditEntityUsecase;
  final GetJsonDataUsecase getJsonDataUsecase;

  AuditEntityCubit(
      {required this.insertAuditEntityUsecase,
      required this.getAuditEntityUsecase,
      required this.updateAuditEntityUsecase,
      required this.deleteAuditEntityUsecase,
      required this.getJsonDataUsecase})
      : super(AuditEntityInitial());

  getAuditEntity() async {
    emit(AuditEntityLoading());
    try {
      final result = getAuditEntityUsecase.call();
      result!.listen((auditEntityData) async {
        if (auditEntityData.length == 0) {
          final data = await getJsonDataUsecase.call();
          // final String response =
          //     await rootBundle.rootBundle.loadString('assets/Entity.json');
          // final data = AuditEntityDatas.fromJson(json.decode(response));
          for (int n = 0; n < data!.length; n++) {
            final auditdata = AuditEntitys(
              entityLevel: data[n].entityLevel,
              entityException: data[n].entityException,
              auditEntityName: data[n].auditEntityName,
              scheduleOccurrenceIds: data[n].scheduleOccurrenceIds,
              auditId: data[n].auditId,
              auditParentEntityId: data[n].auditParentEntityId,
              sequenceNo: data[n].sequenceNo,
              isLeafNode: data[n].isLeafNode,
              barCodeNfc: data[n].barcodeNfc,
              auditEntityTypeId: data[n].auditEntityTypeId,
              auditEntityId: data[n].auditEntityId,
              entityEndDate: data[n].entityEndDate,
            );
            //await AuditEntityDb().insertAuditEntity(auditdata);
            await insertAuditEntityUsecase.call(auditdata);
            //emit(AuditEntityLoaded(data: data))
          }
        } else {
          emit(AuditEntityLoaded(auditEntitydata: auditEntityData));
        }
      });
    } on Exception {
      emit(AuditEntityError());
    }
  }

  updateAuditEntitydata(String newAuditEntityName, int auditEntityId) async {
    return await updateAuditEntityUsecase.call(
        newAuditEntityName, auditEntityId);
  }

  deleteAuditEntityData(int auditEntityId) async {
    return await deleteAuditEntityUsecase.call(auditEntityId);
  }
}
