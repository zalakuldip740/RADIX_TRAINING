import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class AuditEntityRepositoryImpl extends AuditEntityRepository {
  final AuditEntityDataSource auditEntityDataSource;

  AuditEntityRepositoryImpl({required this.auditEntityDataSource});

  @override
  Future<int> deleteAuditEntityData(int auditEntityId) async {
    return await auditEntityDataSource.deleteAuditEntityData(auditEntityId);
  }

  @override
  Stream getAuditEntitydata() {
    return auditEntityDataSource.getAuditEntitydata();
  }

  @override
  Future<int> insertAuditEntityData(AuditEntitys auditEntitys) async {
    AuditEntityModel auditEntityModel = AuditEntityModel(
        auditEntityId: auditEntitys.auditEntityId,
        auditId: auditEntitys.auditId,
        auditEntityName: auditEntitys.auditEntityName,
        auditEntityTypeId: auditEntitys.auditEntityTypeId,
        auditParentEntityId: auditEntitys.auditParentEntityId,
        sequenceNo: auditEntitys.sequenceNo,
        entityEndDate: auditEntitys.entityEndDate,
        isLeafNode: auditEntitys.isLeafNode,
        barCodeNfc: auditEntitys.barCodeNfc,
        entityLevel: auditEntitys.entityLevel,
        entityException: auditEntitys.entityException,
        scheduleOccurrenceIds: auditEntitys.scheduleOccurrenceIds);
    return await auditEntityDataSource.insertAuditEntityData(auditEntitys);
  }

  @override
  Future<int> updateAuditEntityData(
      String auditEntityName, int auditEntityId) async {
    return await auditEntityDataSource.updateAuditEntityData(
        auditEntityName, auditEntityId);
  }

  @override
  Future<List<AuditEntitysData>?> getJsonData() async {
    return await auditEntityDataSource.getJsonData();
  }
}
