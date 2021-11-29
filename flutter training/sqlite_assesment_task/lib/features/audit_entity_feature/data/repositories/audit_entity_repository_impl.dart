import 'package:sqlite_assesment_task/features/audit_entity_feature/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/entities/audit_entity.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/domain/repositories/audit_entity_repository.dart';

class AuditEntityRepositoryImpl extends AuditEntityRepository {
  final AuditEntityDataSource auditEntityDataSource;

  AuditEntityRepositoryImpl({required this.auditEntityDataSource});

  @override
  Future<void> deleteAuditEntity(AuditEntityData2 auditEntityData) async {
    final result =
        await auditEntityDataSource.deleteAuditEntity(auditEntityData);
    return result;
  }

  @override
  Future<void> insertAuditEntity(AuditEntityData2 auditEntityData) async {
    final result =
        await auditEntityDataSource.insertAuditEntity(auditEntityData);
    return result;
  }

  @override
  Future getAuditEntity() async {
    return await auditEntityDataSource.getAuditEntity();
  }

  @override
  Future<void> updateAuditEntity(AuditEntityData2 auditEntityData) async {
    final result =
        await auditEntityDataSource.updateAuditEntity(auditEntityData);
    return result;
  }
}
