import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/sqlite_database/audit_entity_db.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/models/audit_entity_json_model.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

class AuditEntityDataSourceImpl implements AuditEntityDataSource {
  final AuditEntityDb auditEntityDb;

  AuditEntityDataSourceImpl({required this.auditEntityDb});
  @override
  Future<int> deleteAuditEntityData(int auditEntityId) async {
    return auditEntityDb.deleteByAuditEntityId(auditEntityId);
  }

  @override
  Stream getAuditEntitydata() {
    return auditEntityDb.getAuditEntity();
  }

  @override
  Future<int> insertAuditEntityData(AuditEntitys auditEntitys) {
    return auditEntityDb.insertAuditEntityData(auditEntitys);
  }

  @override
  Future<int> updateAuditEntityData(String auditEntityName, int auditEntityId) {
    return auditEntityDb.updateByAuditEntityId(auditEntityName, auditEntityId);
  }

  @override
  Future<List<AuditEntitysData>?> getJsonData() async {
    final String response =
        await rootBundle.rootBundle.loadString('assets/Entity.json');
    final data = AuditEntityDatas.fromJson(json.decode(response));
    var futuredata = Future.value(data.auditEntity);
    return futuredata;
  }
}
