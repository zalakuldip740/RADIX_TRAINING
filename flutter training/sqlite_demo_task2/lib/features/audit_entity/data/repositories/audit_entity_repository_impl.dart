import 'package:sqlite_demo_task2/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task2/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class AuditEntityRepositoryImpl extends AuditEntityRepository {
  final AuditEntityDataSource auditEntityDataSource;
  AuditEntityRepositoryImpl({required this.auditEntityDataSource});
  @override
  Future<List<int>> getEntriesCount() async {
    return await auditEntityDataSource.getEntriesCount();
  }

  @override
  Future<void> getJsonAndInsertAuditEntity() async {
    return await auditEntityDataSource.getJsonAndInsertAuditEntity();
  }
}
