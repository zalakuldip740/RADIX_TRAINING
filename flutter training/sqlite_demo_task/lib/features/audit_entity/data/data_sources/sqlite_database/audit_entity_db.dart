import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

part 'audit_entity_db.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(
  include: {'tables.drift'},
)
class AuditEntityDb extends _$AuditEntityDb {
  AuditEntityDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<AuditEntityTableData>> getAuditEntity() =>
      getAllAuditEntity().watch();
  Future<int> insertAuditEntityData(AuditEntitys auditEntitys) =>
      insertAuditEntity(
          auditEntitys.auditEntityId,
          auditEntitys.auditId,
          auditEntitys.auditEntityName,
          auditEntitys.auditEntityTypeId,
          auditEntitys.auditParentEntityId,
          auditEntitys.sequenceNo,
          auditEntitys.entityEndDate,
          auditEntitys.isLeafNode,
          auditEntitys.barCodeNfc,
          auditEntitys.entityLevel,
          auditEntitys.entityException,
          auditEntitys.scheduleOccurrenceIds);
  Future<int> deleteAuditEntity(int auditEntityId) =>
      deleteByAuditEntityId(auditEntityId);
  Future<int> updateAuditEntity(String auditEntityName, int auditEntityId) =>
      updateByAuditEntityId(auditEntityName, auditEntityId);
}
