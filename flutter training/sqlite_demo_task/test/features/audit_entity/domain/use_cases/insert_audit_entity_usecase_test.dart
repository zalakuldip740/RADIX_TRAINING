import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/insert_audit_entity_usecase.dart';

class MockAuditEntityRepository extends Mock implements AuditEntityRepository {}

void main() {
  late MockAuditEntityRepository mockAuditEntityRepository;
  late InsertAuditEntityUsecase insertAuditEntityUsecase;
  setUp(() {
    mockAuditEntityRepository = MockAuditEntityRepository();
    insertAuditEntityUsecase = InsertAuditEntityUsecase(
        auditEntityRepository: mockAuditEntityRepository);
  });
  final auditEntitys = AuditEntitys(
      auditEntityId: 1,
      auditId: 1,
      auditEntityName: "auditEntityName",
      auditEntityTypeId: 2,
      auditParentEntityId: 6,
      sequenceNo: 8,
      entityEndDate: DateTime.now(),
      isLeafNode: false,
      barCodeNfc: "barCodeNfc",
      entityLevel: 2,
      entityException: true,
      scheduleOccurrenceIds: "scheduleOccurrenceIds");
  test('insert auditentity test', () async {
    when(mockAuditEntityRepository.insertAuditEntityData(auditEntitys))
        .thenAnswer((_) async => Future.value(auditEntitys.auditEntityId));
    final result = await insertAuditEntityUsecase.call(auditEntitys);
    expect(result, auditEntitys.auditEntityId);
  });
}
