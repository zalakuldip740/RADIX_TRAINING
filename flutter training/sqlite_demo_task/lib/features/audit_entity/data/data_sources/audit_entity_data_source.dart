import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

abstract class AuditEntityDataSource {
  Stream getAuditEntitydata();

  Future<int> insertAuditEntityData(AuditEntitys auditEntitys);
  Future<int> updateAuditEntityData(String auditEntityName, int auditEntityId);
  Future<int> deleteAuditEntityData(int auditEntityId);
  Future<List<AuditEntitysData>?> getJsonData();
}
