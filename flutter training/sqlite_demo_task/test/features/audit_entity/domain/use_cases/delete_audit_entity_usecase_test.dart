import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/delete_audit_entity_usecase.dart';

class MockAuditEntityRepository extends Mock implements AuditEntityRepository {}

void main() {
  late MockAuditEntityRepository mockAuditEntityRepository;
  late DeleteAuditEntityUsecase deleteAuditEntityUsecase;
  setUp(() {
    mockAuditEntityRepository = MockAuditEntityRepository();
    deleteAuditEntityUsecase = DeleteAuditEntityUsecase(
        auditEntityRepository: mockAuditEntityRepository);
  });
  int auditEntityId = 3286;
  test('delete auditentity test', () async {
    when(mockAuditEntityRepository.deleteAuditEntityData(auditEntityId))
        .thenAnswer((_) async => Future.value(1));
    final result = await deleteAuditEntityUsecase.call(auditEntityId);
    expect(result, 1);
  });
}
