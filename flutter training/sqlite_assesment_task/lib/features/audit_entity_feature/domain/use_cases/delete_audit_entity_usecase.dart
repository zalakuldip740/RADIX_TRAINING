import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/entities/audit_entity.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/repositories/audit_entity_repository.dart';

class DeleteAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  DeleteAuditEntityUsecase({required this.auditEntityRepository});

  Future<void> call(AuditEntityData2 auditEntityData) async {
    return await auditEntityRepository.deleteAuditEntity(auditEntityData);
  }
}
