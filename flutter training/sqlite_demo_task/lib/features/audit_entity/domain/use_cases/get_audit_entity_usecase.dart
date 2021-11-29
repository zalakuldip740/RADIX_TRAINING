import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class GetAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  GetAuditEntityUsecase({required this.auditEntityRepository});

  Stream? call() {
    return auditEntityRepository.getAuditEntitydata();
  }
}
