import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class UpdateAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  UpdateAuditEntityUsecase({required this.auditEntityRepository});

  Future<int?>? call(String auditEntityName, int auditEntityId) async {
    return await auditEntityRepository.updateAuditEntityData(
        auditEntityName, auditEntityId);
  }
}
