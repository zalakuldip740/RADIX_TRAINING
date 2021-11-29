import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class DeleteAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  DeleteAuditEntityUsecase({required this.auditEntityRepository});

  Future<int?>? call(int auditEntityId) async {
    return await auditEntityRepository.deleteAuditEntityData(auditEntityId);
  }
}
