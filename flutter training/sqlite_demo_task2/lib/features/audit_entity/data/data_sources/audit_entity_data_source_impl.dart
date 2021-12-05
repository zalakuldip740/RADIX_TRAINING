import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:sqlite_demo_task2/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task2/features/audit_entity/data/data_sources/database/audit_entity_db.dart';
import 'package:sqlite_demo_task2/features/audit_entity/data/models/audit_json_data_model.dart';

class AuditEntityDataSourceImpl extends AuditEntityDataSource {
  final AuditEntityDb auditEntityDb;

  AuditEntityDataSourceImpl({required this.auditEntityDb});

  @override
  Future<List<int>> getEntriesCount() async {
    List<int> data = [];
    final listofcount = await auditEntityDb.countAuditTable();
    listofcount.forEach((element) {
      data.add(element.countAuditDetailsList);
    });
    listofcount.forEach((element) {
      data.add(element.countScoringTypes);
    });
    listofcount.forEach((element) {
      data.add(element.countScoringFormulaInfoModel);
    });
    listofcount.forEach((element) {
      data.add(element.countAuditScoring);
    });
    listofcount.forEach((element) {
      data.add(element.countAuditEntityTable);
    });
    listofcount.forEach((element) {
      data.add(element.countAuditQuestion);
    });
    listofcount.forEach((element) {
      data.add(element.countauditEntityTypes);
    });
    listofcount.forEach((element) {
      data.add(element.countauditEntityTypeQuestions);
    });
    listofcount.forEach((element) {
      data.add(element.countauditCorrectiveActions);
    });
    listofcount.forEach((element) {
      data.add(element.countauditFailureReason);
    });
    listofcount.forEach((element) {
      data.add(element.countauditAdditionalFields);
    });
    listofcount.forEach((element) {
      data.add(element.countauditAdditionalFieldTypeValues);
    });
    listofcount.forEach((element) {
      data.add(element.countauditAdditionalFieldEntityTypes);
    });
    listofcount.forEach((element) {
      data.add(element.countsize);
    });
    listofcount.forEach((element) {
      data.add(element.countauditTeamTask);
    });
    listofcount.forEach((element) {
      data.add(element.countteamDetails);
    });
    listofcount.forEach((element) {
      data.add(element.countuserDetails);
    });
    listofcount.forEach((element) {
      data.add(element.countuserPermission);
    });
    listofcount.forEach((element) {
      data.add(element.countoccurrenceScheduleDates);
    });
    listofcount.forEach((element) {
      data.add(element.countauditEnforceTimeData);
    });
    listofcount.forEach((element) {
      data.add(element.countauditGroups);
    });

    return data;
  }

  @override
  Future<void> getJsonAndInsertAuditEntity() async {
    final String response =
        await rootBundle.rootBundle.loadString('assets/audit.json');
    final data = AuditData.fromJson(json.decode(response));
    data.auditDetailsList.forEach((auditDetailsList) async {
      await auditEntityDb.insertAuditDetailsListTable(auditDetailsList);
    });

    data.scoringTypes.forEach((scoringTypes) async {
      await auditEntityDb.insertScoringTypesTable(scoringTypes);
    });

    data.scoringFormulaInfoModel.forEach((scoringFormulaInfoModel) async {
      await auditEntityDb
          .insertScoringFormulaInfoModelTable(scoringFormulaInfoModel);
    });

    data.auditScoring.forEach((auditScoring) async {
      await auditEntityDb.insertAuditScoringTable(auditScoring);
    });

    data.auditEntity.forEach((auditEntity) async {
      await auditEntityDb.insertAuditEntityTable(auditEntity);
    });

    data.auditQuestion.forEach((auditQuestion) async {
      await auditEntityDb.insertAuditQuestionTable(auditQuestion);
    });

    data.auditEntityTypes.forEach((auditEntityTypes) async {
      await auditEntityDb.insertAuditEntityTypesTable(auditEntityTypes);
    });

    data.auditEntityTypeQuestions.forEach((auditEntityTypeQuestions) async {
      await auditEntityDb
          .insertAuditEntityTypeQuestionsTable(auditEntityTypeQuestions);
    });

    data.auditCorrectiveActions.forEach((auditCorrectiveActions) async {
      await auditEntityDb
          .insertAuditCorrectiveActionsTable(auditCorrectiveActions);
    });

    data.auditFailureReason.forEach((auditFailureReason) async {
      await auditEntityDb.insertAuditFailureReasonTable(auditFailureReason);
    });

    data.auditAdditionalFields.forEach((auditAdditionalFields) async {
      await auditEntityDb
          .insertAuditAdditionalFieldsTable(auditAdditionalFields);
    });

    data.auditAdditionalFieldEntityTypes
        .forEach((auditAdditionalFieldEntityTypes) async {
      await auditEntityDb.insertAuditAdditionalFieldEntityTypesTable(
          auditAdditionalFieldEntityTypes);
    });

    data.auditAdditionalFieldTypeValues
        .forEach((auditAdditionalFieldTypeValues) async {
      await auditEntityDb.insertAuditAdditionalFieldTypeValuesTable(
          auditAdditionalFieldTypeValues);
    });

    data.size.forEach((size) async {
      await auditEntityDb.insertSizeTable(size);
    });

    data.auditTeamTask.forEach((auditTeamTask) async {
      await auditEntityDb.insertAuditTeamTaskTable(auditTeamTask);
    });

    data.teamDetails.forEach((teamDetails) async {
      await auditEntityDb.insertTeamDetailsTable(teamDetails);
    });

    data.userDetails.forEach((userDetails) async {
      await auditEntityDb.insertUserDetailsTable(userDetails);
    });
    data.userPermission.forEach((userPermission) async {
      await auditEntityDb.insertUserPermissionTable(userPermission);
    });

    data.occurrenceScheduleDates.forEach((occurrenceScheduleDates) async {
      await auditEntityDb
          .insertOccurrenceScheduleDatesTable(occurrenceScheduleDates);
    });

    data.auditEnforceTimeData.forEach((auditEnforceTimeData) async {
      await auditEntityDb.insertAuditEnforceTimeDataTable(auditEnforceTimeData);
    });

    data.auditGroups.forEach((auditGroups) async {
      await auditEntityDb.insertAuditGroupsTable(auditGroups);
    });
  }
}
