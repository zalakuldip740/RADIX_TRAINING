import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/repositories/audit_entity_repository.dart';

class GetAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  GetAuditEntityUsecase({required this.auditEntityRepository});

  Future call() async {
    return await auditEntityRepository.getAuditEntity();
  }
}
