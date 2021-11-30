import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source_impl.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/sqlite_database/audit_entity_db.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

class MockAuditEntityDb extends Mock implements AuditEntityDb {}

void main() {
  late MockAuditEntityDb mockAuditEntityDb;
  late AuditEntityDataSourceImpl auditEntityDataSourceImpl;

  setUp(() {
    mockAuditEntityDb = MockAuditEntityDb();
    auditEntityDataSourceImpl =
        AuditEntityDataSourceImpl(auditEntityDb: mockAuditEntityDb);
  });

  group('db test', () {
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
    Selectable<AuditEntityTableData>? mockdata;
    test('delete auditentity db test', () async {
      when(mockAuditEntityDb.deleteByAuditEntityId(auditEntityId))
          .thenAnswer((_) async => Future.value(1));
      final result =
          await auditEntityDataSourceImpl.deleteAuditEntityData(auditEntityId);
      expect(result, 1);
    });
    test("update data db test", () async {
      when(mockAuditEntityDb.updateByAuditEntityId(
              auditEntityName, auditEntityId))
          .thenAnswer((_) async => Future.value(1));
      final result = await auditEntityDataSourceImpl.updateAuditEntityData(
          auditEntityName, auditEntityId);
      expect(result, 1);
    });
    test("insert data db test", () async {
      when(mockAuditEntityDb.insertAuditEntityData(auditEntitys))
          .thenAnswer((_) async => Future.value(1));
      final result =
          await auditEntityDataSourceImpl.insertAuditEntityData(auditEntitys);
      expect(result, 1);
    });
    test("get data db test", () async {
      when(mockAuditEntityDb.getAllAuditEntity()).thenAnswer((_) => mockdata);
      final result = auditEntityDataSourceImpl.getAuditEntitydata();
      expect(result, mockdata);
    });
  });
}
