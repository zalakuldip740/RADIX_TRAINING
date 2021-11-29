import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';

class GetJsonDataUsecase {
  final AuditEntityRepository auditEntityRepository;

  GetJsonDataUsecase({required this.auditEntityRepository});

  Future<List<AuditEntitysData>?>? call() async {
    return await auditEntityRepository.getJsonData();
  }
}
