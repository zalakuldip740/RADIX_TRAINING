import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_audit_entity_usecase.dart';

class MockAuditEntityRepository extends Mock implements AuditEntityRepository {}

void main() {
  late MockAuditEntityRepository mockAuditEntityRepository;
  late GetAuditEntityUsecase getAuditEntityUsecase;
  setUp(() {
    mockAuditEntityRepository = MockAuditEntityRepository();
    getAuditEntityUsecase =
        GetAuditEntityUsecase(auditEntityRepository: mockAuditEntityRepository);
  });
  Stream<dynamic>? mockdata;
  test('get auditentity test', () {
    when(mockAuditEntityRepository.getAuditEntitydata())
        .thenAnswer((_) => mockdata);
    final result = getAuditEntityUsecase.call();
    expect(result, anything);
  });
}
