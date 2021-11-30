import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/update_audit_entity_usecase.dart';

class MockAuditEntityRepository extends Mock implements AuditEntityRepository {}

void main() {
  late MockAuditEntityRepository mockAuditEntityRepository;
  late UpdateAuditEntityUsecase updateAuditEntityUsecase;
  setUp(() {
    mockAuditEntityRepository = MockAuditEntityRepository();
    updateAuditEntityUsecase = UpdateAuditEntityUsecase(
        auditEntityRepository: mockAuditEntityRepository);
  });
  int auditEntityId = 3286;
  String auditEntityName = "zala";
  test('update auditentity test', () async {
    when(mockAuditEntityRepository.updateAuditEntityData(
            auditEntityName, auditEntityId))
        .thenAnswer((_) async => Future.value(1));
    final result =
        await updateAuditEntityUsecase.call(auditEntityName, auditEntityId);
    expect(result, 1);
  });
}
