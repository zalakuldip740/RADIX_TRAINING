import 'package:sqlite_demo_task2/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class GetJsonAndInsertAuditEntityUseCase {
  final AuditEntityRepository auditEntityRepository;
  GetJsonAndInsertAuditEntityUseCase({required this.auditEntityRepository});

  Future<void> call() async {
    return await auditEntityRepository.getJsonAndInsertAuditEntity();
  }
}
