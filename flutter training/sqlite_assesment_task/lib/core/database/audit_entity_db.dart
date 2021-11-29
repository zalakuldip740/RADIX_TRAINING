import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'audit_entity_db.g.dart';

class AuditEntity extends Table {
  IntColumn get auditEntityId => integer()();

  IntColumn get auditId => integer()();

  TextColumn get auditEntityName => text()();

  IntColumn get auditEntityTypeId => integer()();

  IntColumn get auditParentEntityId => integer()();

  IntColumn get sequenceNo => integer()();

  DateTimeColumn get entityEndDate => dateTime().nullable()();

  BoolColumn get isLeafNode => boolean()();

  TextColumn get barCodeNfc => text()();

  IntColumn get entityLevel => integer()();

  BoolColumn get entityException => boolean()();

  TextColumn get scheduleOccurrenceIds => text()();

  @override
  Set<Column> get primaryKey => {auditEntityId};
}

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

@DriftDatabase(tables: [AuditEntity])
class AuditEntityDb extends _$AuditEntityDb {
  AuditEntityDb() : super(_openConnection());

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;

  // Stream<List<AuditEntityData>> getAllAuditEntity() =>
  //     select(auditEntity).watch();
  Future<List<AuditEntityData>> getAllAuditEntity() =>
      select(auditEntity).get();

  Future insertAuditEntity(AuditEntityData auditEntityData) =>
      into(auditEntity).insert(auditEntityData);

  Future updateAuditEntity(AuditEntityData auditEntityData) =>
      update(auditEntity).replace(auditEntityData);

  // Future updateAuditEntity(String auditEntityName, int auditEntityId) =>
  //     updateByAuditEntityId(auditEntityName, auditEntityId);

  Future deleteAuditEntity(AuditEntityData auditEntityData) =>
      delete(auditEntity).delete(auditEntityData);
}
