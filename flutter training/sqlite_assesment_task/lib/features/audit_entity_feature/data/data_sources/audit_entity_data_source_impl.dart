import 'package:sqlite_assesment_task/core/database/audit_entity_db.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/entities/audit_entity.dart';

class AuditEntityDataSourceImpl implements AuditEntityDataSource {
  @override
  Future<void> deleteAuditEntity(AuditEntityData2 auditEntityData) async {
    final auditEntity = AuditEntityData(
        entityEndDate: auditEntityData.entityEndDate,
        auditEntityId: auditEntityData.auditEntityId,
        auditId: auditEntityData.auditId,
        auditEntityName: auditEntityData.auditEntityName,
        auditEntityTypeId: auditEntityData.auditEntityTypeId,
        auditParentEntityId: auditEntityData.auditParentEntityId,
        sequenceNo: auditEntityData.sequenceNo,
        isLeafNode: auditEntityData.isLeafNode,
        barCodeNfc: auditEntityData.barCodeNfc,
        entityLevel: auditEntityData.entityLevel,
        entityException: auditEntityData.entityException,
        scheduleOccurrenceIds: auditEntityData.scheduleOccurrenceIds);
    await await AuditEntityDb().deleteAuditEntity(auditEntity);
  }

  @override
  Future getAuditEntity() async {
    return await AuditEntityDb().getAllAuditEntity();
  }

  @override
  Future<void> updateAuditEntity(AuditEntityData2 auditEntityData) async {
    final auditEntity = AuditEntityData(
        entityEndDate: auditEntityData.entityEndDate,
        auditEntityId: auditEntityData.auditEntityId,
        auditId: auditEntityData.auditId,
        auditEntityName: auditEntityData.auditEntityName,
        auditEntityTypeId: auditEntityData.auditEntityTypeId,
        auditParentEntityId: auditEntityData.auditParentEntityId,
        sequenceNo: auditEntityData.sequenceNo,
        isLeafNode: auditEntityData.isLeafNode,
        barCodeNfc: auditEntityData.barCodeNfc,
        entityLevel: auditEntityData.entityLevel,
        entityException: auditEntityData.entityException,
        scheduleOccurrenceIds: auditEntityData.scheduleOccurrenceIds);
    await AuditEntityDb().updateAuditEntity(auditEntity);
  }

  @override
  Future<void> insertAuditEntity(AuditEntityData2 auditEntityData) async {
    final auditEntity = AuditEntityData(
        entityEndDate: auditEntityData.entityEndDate,
        auditEntityId: auditEntityData.auditEntityId,
        auditId: auditEntityData.auditId,
        auditEntityName: auditEntityData.auditEntityName,
        auditEntityTypeId: auditEntityData.auditEntityTypeId,
        auditParentEntityId: auditEntityData.auditParentEntityId,
        sequenceNo: auditEntityData.sequenceNo,
        isLeafNode: auditEntityData.isLeafNode,
        barCodeNfc: auditEntityData.barCodeNfc,
        entityLevel: auditEntityData.entityLevel,
        entityException: auditEntityData.entityException,
        scheduleOccurrenceIds: auditEntityData.scheduleOccurrenceIds);
    return await AuditEntityDb().insertAuditEntity(auditEntity);
  }
}
