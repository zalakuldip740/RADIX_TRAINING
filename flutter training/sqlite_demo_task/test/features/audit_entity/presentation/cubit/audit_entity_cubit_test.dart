import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/delete_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_json_data_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/insert_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/update_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/cubit/audit_entity_cubit.dart';

class MockInsertAuditEntityUsecase extends Mock
    implements InsertAuditEntityUsecase {}

class MockDeleteAuditEntityUsecase extends Mock
    implements DeleteAuditEntityUsecase {}

class MockUpdateAuditEntityUsecase extends Mock
    implements UpdateAuditEntityUsecase {}

class MockGetAuditEntityUsecase extends Mock implements GetAuditEntityUsecase {}

class MockGetJsonDataUsecase extends Mock implements GetJsonDataUsecase {}

void main() {
  late AuditEntityCubit auditEntityCubit;
  late MockInsertAuditEntityUsecase mockInsertAuditEntityUsecase;
  late MockDeleteAuditEntityUsecase mockDeleteAuditEntityUsecase;
  late MockUpdateAuditEntityUsecase mockUpdateAuditEntityUsecase;
  late MockGetAuditEntityUsecase mockGetAuditEntityUsecase;
  late MockGetJsonDataUsecase mockGetJsonDataUsecase;

  setUp(() {
    mockInsertAuditEntityUsecase = MockInsertAuditEntityUsecase();
    mockDeleteAuditEntityUsecase = MockDeleteAuditEntityUsecase();
    mockUpdateAuditEntityUsecase = MockUpdateAuditEntityUsecase();
    mockGetAuditEntityUsecase = MockGetAuditEntityUsecase();
    mockGetJsonDataUsecase = MockGetJsonDataUsecase();
    auditEntityCubit = AuditEntityCubit(
        insertAuditEntityUsecase: mockInsertAuditEntityUsecase,
        getAuditEntityUsecase: mockGetAuditEntityUsecase,
        updateAuditEntityUsecase: mockUpdateAuditEntityUsecase,
        deleteAuditEntityUsecase: mockDeleteAuditEntityUsecase,
        getJsonDataUsecase: mockGetJsonDataUsecase);
  });
  test('initial state should be Auditentityinitial', () {
    expect(auditEntityCubit.state, AuditEntityInitial());
  });
  // Stream<dynamic>? mockdata;
  // List auditEntitydata = [];
  int auditEntityId = 1004602;
  String newAuditEntityName = "zala";
  test('check update usecase and cubit update method work perfectly', () async {
    when(mockUpdateAuditEntityUsecase.call(newAuditEntityName, auditEntityId))
        .thenAnswer((_) async => Future.value(auditEntityId));
    final result = await auditEntityCubit.updateAuditEntitydata(
        newAuditEntityName, auditEntityId);
    expect(result, auditEntityId);
  });
  test('check delete usecase and cubit delete method work perfectly', () async {
    when(mockDeleteAuditEntityUsecase.call(auditEntityId))
        .thenAnswer((_) async => Future.value(1));
    final result = await auditEntityCubit.deleteAuditEntityData(auditEntityId);
    expect(result, 1);
  });
}
