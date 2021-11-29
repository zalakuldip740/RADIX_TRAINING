import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:sqlite_assesment_task/features/audit_entity_feature/data/models/audit_entity_model.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/entities/audit_entity.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/use_cases/delete_audit_entity_usecase.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/use_cases/get_audit_entity_usecase.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/use_cases/insert_audit_entity_usecase.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/use_cases/update_audit_entity_usecase.dart';

part 'audit_entity_state.dart';

class AuditEntityCubit extends Cubit<AuditEntityState> {
  final InsertAuditEntityUsecase insertAuditEntityUsecase;
  final DeleteAuditEntityUsecase deleteAuditEntityUsecase;
  final UpdateAuditEntityUsecase updateAuditEntityUsecase;
  final GetAuditEntityUsecase getAuditEntityUsecase;

  AuditEntityCubit(
      {required this.insertAuditEntityUsecase,
      required this.getAuditEntityUsecase,
      required this.updateAuditEntityUsecase,
      required this.deleteAuditEntityUsecase})
      : super(AuditEntityInitial());

  getAuditEntity() async {
    //emit(AuditEntityLoading());
    //final result = await AuditEntityDb().getAllAuditEntity();
    final result = await getAuditEntityUsecase.call();
    if (result.isEmpty) {
      final String response =
          await rootBundle.rootBundle.loadString('assets/Entity.json');
      //final String response = await rootBundle.loadString('assets/Entity.json');
      //json.decode(response);
      final data = AuditEntityDatas.fromJson(json.decode(response));
      // var _items = data["auditEntity"][1]["EntityLevel"];
      //print(data);
      for (int n = 0; n < data.auditEntity!.length; n++) {
        final auditdata = AuditEntityData2(
          entityLevel: data.auditEntity![n].entityLevel,
          entityException: data.auditEntity![n].entityException,
          auditEntityName: data.auditEntity![n].auditEntityName,
          scheduleOccurrenceIds: data.auditEntity![n].scheduleOccurrenceIds,
          auditId: data.auditEntity![n].auditId,
          auditParentEntityId: data.auditEntity![n].auditParentEntityId,
          sequenceNo: data.auditEntity![n].sequenceNo,
          isLeafNode: data.auditEntity![n].isLeafNode,
          barCodeNfc: data.auditEntity![n].barcodeNfc,
          auditEntityTypeId: data.auditEntity![n].auditEntityTypeId,
          auditEntityId: data.auditEntity![n].auditEntityId,
          entityEndDate: data.auditEntity![n].entityEndDate,
        );
        //await AuditEntityDb().insertAuditEntity(auditdata);
        await insertAuditEntityUsecase.call(auditdata);
        //emit(AuditEntityLoaded(data: data))
      }
      final result = await getAuditEntityUsecase.call();
      emit(AuditEntityLoaded(data: result));
    } else {
      emit(AuditEntityLoaded(data: result));
      // final result = getAuditEntityUsecase.call();
      // emit(AuditEntityLoaded(data: result));
    }
  }

  update(String newdata, data) async {
    final auditdata = AuditEntityData2(
      entityLevel: data.entityLevel,
      entityException: data.entityException,
      auditEntityName: newdata,
      scheduleOccurrenceIds: data.scheduleOccurrenceIds,
      auditId: data.auditId,
      auditParentEntityId: data.auditParentEntityId,
      sequenceNo: data.sequenceNo,
      isLeafNode: data.isLeafNode,
      barCodeNfc: data.barCodeNfc,
      auditEntityTypeId: data.auditEntityTypeId,
      auditEntityId: data.auditEntityId,
      entityEndDate: data.entityEndDate,
    );
    await updateAuditEntityUsecase.call(auditdata);
  }

  delete(data) async {
    final auditdata = AuditEntityData2(
      entityLevel: data.entityLevel,
      entityException: data.entityException,
      auditEntityName: data.auditEntityName,
      scheduleOccurrenceIds: data.scheduleOccurrenceIds,
      auditId: data.auditId,
      auditParentEntityId: data.auditParentEntityId,
      sequenceNo: data.sequenceNo,
      isLeafNode: data.isLeafNode,
      barCodeNfc: data.barCodeNfc,
      auditEntityTypeId: data.auditEntityTypeId,
      auditEntityId: data.auditEntityId,
      entityEndDate: data.entityEndDate,
    );
    await deleteAuditEntityUsecase.call(auditdata);
  }
}
