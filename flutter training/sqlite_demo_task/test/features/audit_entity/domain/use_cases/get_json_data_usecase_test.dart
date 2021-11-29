import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_json_data_usecase.dart';

class MockAuditEntityRepository extends Mock implements AuditEntityRepository {}

void main() {
  late MockAuditEntityRepository mockAuditEntityRepository;
  late GetJsonDataUsecase getJsonDataUsecase;
  setUp(() {
    mockAuditEntityRepository = MockAuditEntityRepository();
    getJsonDataUsecase =
        GetJsonDataUsecase(auditEntityRepository: mockAuditEntityRepository);
  });
  final auditEntitysData = [
    AuditEntitysData(
        auditEntityId: 1,
        auditId: 2,
        auditEntityName: "zala",
        auditEntityTypeId: 8,
        auditParentEntityId: 45,
        sequenceNo: 9,
        entityEndDate: DateTime.now(),
        isLeafNode: false,
        barcodeNfc: "barcodeNfc",
        entityLevel: 5,
        entityException: false,
        scheduleOccurrenceIds: "scheduleOccurrenceIds")
  ];
  test('get json data test', () async {
    when(mockAuditEntityRepository.getJsonData())
        .thenAnswer((_) async => Future.value(auditEntitysData));
    final result = await getJsonDataUsecase.call();
    expect(result, auditEntitysData);
  });
}
