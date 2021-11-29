import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/entities/audit_entity.dart';

abstract class AuditEntityRepository {
  Future getAuditEntity();

  Future<void> updateAuditEntity(AuditEntityData2 auditEntityData);

  Future<void> deleteAuditEntity(AuditEntityData2 auditEntityData);
  Future<void> insertAuditEntity(AuditEntityData2 auditEntityData);
}
