import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class InsertAuditEntityUsecase {
  final AuditEntityRepository auditEntityRepository;

  InsertAuditEntityUsecase({required this.auditEntityRepository});

  Future<int?>? call(AuditEntitys auditEntitys) async {
    return await auditEntityRepository.insertAuditEntityData(auditEntitys);
  }
}
