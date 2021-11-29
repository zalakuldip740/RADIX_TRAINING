import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/repositories/audit_entity_repository_impl.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

class MockAuditEntityDataSource extends Mock implements AuditEntityDataSource {}

void main() {
  late MockAuditEntityDataSource mockAuditEntityDataSource;
  late AuditEntityRepositoryImpl auditEntityRepositoryImpl;
  setUp(() {
    mockAuditEntityDataSource = MockAuditEntityDataSource();
    auditEntityRepositoryImpl = AuditEntityRepositoryImpl(
        auditEntityDataSource: mockAuditEntityDataSource);
  });
  group('repo test', () {
    int auditEntityId = 1;
    String auditEntityName = "zala";
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
    Stream<dynamic>? mockdata;
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
    test("delete data repo test", () async {
      when(mockAuditEntityDataSource.deleteAuditEntityData(auditEntityId))
          .thenAnswer((_) async => Future.value(auditEntityId));
      final result =
          await auditEntityRepositoryImpl.deleteAuditEntityData(auditEntityId);
      expect(result, auditEntityId);
    });
    test("update data repo test", () async {
      when(mockAuditEntityDataSource.updateAuditEntityData(
              auditEntityName, auditEntityId))
          .thenAnswer((_) async => Future.value(auditEntityId));
      final result = await auditEntityRepositoryImpl.updateAuditEntityData(
          auditEntityName, auditEntityId);
      expect(result, auditEntityId);
    });
    test("insert data repo test", () async {
      when(mockAuditEntityDataSource.insertAuditEntityData(auditEntitys))
          .thenAnswer((_) async => Future.value(auditEntitys.auditEntityId));
      final result =
          await auditEntityRepositoryImpl.insertAuditEntityData(auditEntitys);
      expect(result, auditEntitys.auditEntityId);
    });
    test("get data repo test", () async {
      when(mockAuditEntityDataSource.getAuditEntitydata())
          .thenAnswer((_) => mockdata);
      final result = auditEntityRepositoryImpl.getAuditEntitydata();
      expect(result, anything);
    });
    test('get json data repo test', () async {
      when(mockAuditEntityDataSource.getJsonData())
          .thenAnswer((_) async => Future.value(auditEntitysData));
      final result = await auditEntityRepositoryImpl.getJsonData();
      expect(result, auditEntitysData);
    });
  });
}
