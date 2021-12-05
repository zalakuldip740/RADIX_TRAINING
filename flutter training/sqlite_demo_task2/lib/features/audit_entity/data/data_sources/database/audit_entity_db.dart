import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite_demo_task2/features/audit_entity/data/models/audit_json_data_model.dart'
    as model;

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

  Future<int> insertAuditDetailsListTable(
          model.AuditDetailsList auditDetailsList) =>
      insertAuditDetailsList(
          auditDetailsList.userId,
          auditDetailsList.auditName,
          auditDetailsList.auditId,
          auditDetailsList.failureReason,
          auditDetailsList.correctiveAction,
          auditDetailsList.auditorSignOff,
          auditDetailsList.secondarySignOff,
          auditDetailsList.entityMustAddress,
          auditDetailsList.scoringFormulaId,
          auditDetailsList.auditMasterId,
          auditDetailsList.autoSyncInMobile,
          auditDetailsList.versionId,
          auditDetailsList.isFailureText,
          auditDetailsList.isFailureList,
          auditDetailsList.isCorrectiveActionText,
          auditDetailsList.isCorrectiveActionList,
          auditDetailsList.defaultTaskDueDateDays,
          auditDetailsList.task,
          auditDetailsList.allowDueDate,
          auditDetailsList.sendTaskAlertEmail,
          auditDetailsList.barcodeOrNFC,
          auditDetailsList.canEdit,
          auditDetailsList.showScoreInMobile,
          auditDetailsList.isRecheck,
          auditDetailsList.isRandomization,
          auditDetailsList.isQuestionCategory,
          auditDetailsList.isNotifyAuditor,
          auditDetailsList.auditorDeclarationText,
          auditDetailsList.secondaryDeclarationText,
          auditDetailsList.isScheduling,
          auditDetailsList.isFormerData,
          auditDetailsList.isAuditQuestions,
          auditDetailsList.isEntitiesAuditable,
          auditDetailsList.isEnforceFormerAudit,
          auditDetailsList.isFlipScore,
          auditDetailsList.auditTracking,
          auditDetailsList.isMultipleLevelTeam,
          auditDetailsList.isTaskDistribution,
          auditDetailsList.approveProcessEntitiesMandatory,
          auditDetailsList.approvalProcess,
          auditDetailsList.submissionPasswordRequired,
          auditDetailsList.isViewOnlyFormerData,
          auditDetailsList.auditGroupId,
          auditDetailsList.auditEndDate,
          auditDetailsList.lastAuditResponseId);

  Future<int> insertScoringTypesTable(model.ScoringTypes scoringTypes) =>
      insertScoringTypes(scoringTypes.scoringTypeId,
          scoringTypes.scoringTypeName, scoringTypes.applicationLanguageId);

  Future<int> insertScoringFormulaInfoModelTable(
          model.ScoringFormulaInfoModel scoringFormulaInfoModel) =>
      insertScoringFormulaInfoModel(
          scoringFormulaInfoModel.scoringFormulaId,
          scoringFormulaInfoModel.scoringFormulaDetailId,
          scoringFormulaInfoModel.scoringtypeid,
          scoringFormulaInfoModel.shortCode,
          scoringFormulaInfoModel.sortOrder,
          scoringFormulaInfoModel.title,
          scoringFormulaInfoModel.weight,
          scoringFormulaInfoModel.isDefault,
          scoringFormulaInfoModel.hexCode,
          scoringFormulaInfoModel.fontHexCode,
          scoringFormulaInfoModel.isAuditQuestions,
          scoringFormulaInfoModel.initialAuditScore);

  Future<int> insertAuditScoringTable(model.AuditScoring auditScoring) =>
      insertAuditScoring(auditScoring.auditScoringId, auditScoring.auditId,
          auditScoring.minScore, auditScoring.maxScore, auditScoring.color);

  Future<int> insertAuditEntityTable(model.AuditEntity auditEntity) =>
      insertAuditEntity(
          auditEntity.auditEntityId,
          auditEntity.auditId,
          auditEntity.auditEntityName,
          auditEntity.auditEntityTypeId,
          auditEntity.auditParentEntityId,
          auditEntity.sequenceNo,
          auditEntity.entityEndDate,
          auditEntity.isLeafNode,
          auditEntity.barcodeNFC,
          auditEntity.entityLevel,
          auditEntity.entityException,
          auditEntity.scheduleOccurrenceIds);

  Future<int> insertAuditQuestionTable(model.AuditQuestion auditQuestion) =>
      insertAuditQuestion(
          auditQuestion.auditQuestionId,
          auditQuestion.auditId,
          auditQuestion.questionTitle,
          auditQuestion.sequenceNo,
          auditQuestion.description,
          auditQuestion.weight,
          auditQuestion.statusId,
          auditQuestion.questionCategory,
          auditQuestion.questionCategoryId,
          auditQuestion.questionImageId,
          auditQuestion.imageUrl);

  Future<int> insertAuditEntityTypesTable(
          model.AuditEntityTypes auditEntityTypes) =>
      insertAuditEntityTypes(
          auditEntityTypes.auditId,
          auditEntityTypes.auditEntityTypeId,
          auditEntityTypes.auditEntityTypeName,
          auditEntityTypes.entityTypeWeight);

  Future<int> insertAuditEntityTypeQuestionsTable(
          model.AuditEntityTypeQuestions auditEntityTypeQuestions) =>
      insertAuditEntityTypeQuestions(
          auditEntityTypeQuestions.auditEntityTypeId,
          auditEntityTypeQuestions.auditEntityTypeQuestionId,
          auditEntityTypeQuestions.auditQuestionId);

  Future<int> insertAuditCorrectiveActionsTable(
          model.AuditCorrectiveActions auditCorrectiveActions) =>
      insertAuditCorrectiveActions(
          auditCorrectiveActions.auditCorrectiveActionId,
          auditCorrectiveActions.auditEntityTypeQuestionId,
          auditCorrectiveActions.auditQuestionCorrectiveActionId,
          auditCorrectiveActions.correctiveActionTitle,
          auditCorrectiveActions.auditId);

  Future<int> insertAuditFailureReasonTable(
          model.AuditFailureReason auditFailureReason) =>
      insertAuditFailureReason(
          auditFailureReason.auditQuestionFailureReasonId,
          auditFailureReason.auditEntityTypeQuestionId,
          auditFailureReason.auditFailureReasonId,
          auditFailureReason.failureReasonTitle,
          auditFailureReason.auditId);

  Future<int> insertAuditAdditionalFieldsTable(
          model.AuditAdditionalFields auditAdditionalFields) =>
      insertAuditAdditionalFields(
          auditAdditionalFields.additionalFieldId,
          auditAdditionalFields.auditId,
          auditAdditionalFields.fieldName,
          auditAdditionalFields.fieldTypeId,
          auditAdditionalFields.displayPosition,
          auditAdditionalFields.isMandatory,
          auditAdditionalFields.isPreDisplay,
          auditAdditionalFields.levelTypeId,
          auditAdditionalFields.auditQuestionId,
          auditAdditionalFields.sequenceNo,
          auditAdditionalFields.isMask,
          auditAdditionalFields.maskPattent,
          auditAdditionalFields.maskPlaceholder);

  Future<int> insertAuditAdditionalFieldTypeValuesTable(
          model.AuditAdditionalFieldTypeValues
              auditAdditionalFieldTypeValues) =>
      insertAuditAdditionalFieldTypeValues(
          auditAdditionalFieldTypeValues.additionalFieldTypeValueId,
          auditAdditionalFieldTypeValues.additionalFieldId,
          auditAdditionalFieldTypeValues.additionalFieldValue);

  Future<int> insertAuditAdditionalFieldEntityTypesTable(
          model.AuditAdditionalFieldEntityTypes
              auditAdditionalFieldEntityTypes) =>
      insertAuditAdditionalFieldEntityTypes(
          auditAdditionalFieldEntityTypes.additionalFieldEntityTypeId,
          auditAdditionalFieldEntityTypes.additionalFieldId,
          auditAdditionalFieldEntityTypes.entityTypeId,
          auditAdditionalFieldEntityTypes.entityLevel);

  Future<int> insertSizeTable(model.Size size) => insertSize(
      size.androidMaxUploadFileSize,
      size.iosMaxUploadFileSize,
      size.htmL5MaxUploadFileSize,
      size.additionalFieldEmail,
      size.additionalFieldTextArea,
      size.additionalFieldTextBox,
      size.additionalFieldLocation,
      size.comment,
      size.failureNote,
      size.correctiveNote,
      size.barcode,
      size.taskComment,
      size.sessionTimeOut,
      size.signDeclarationTextSize,
      size.nfcComment,
      size.captureImageNote,
      size.nonAuditableComment,
      size.flipScoreTime,
      size.eventNumber,
      size.eventTitle,
      size.eventDescription,
      size.eventRiskAssociated,
      size.eventImmediateActionTaken,
      size.eventCorrectiveActions,
      size.eventSituationTitle,
      size.eventSituationDetails,
      size.eventKeyIssueTitle,
      size.eventKeyIssueActionTitle,
      size.injuryPersonName,
      size.injurySupervisiorName,
      size.eventInjuryComment,
      size.eventScheduleTitle,
      size.keyIssueActionComment,
      size.situationTitle,
      size.situationDetail,
      size.lostHours,
      size.initialRootCauses,
      size.finalClosureNotes,
      size.maxEventAttachment,
      size.maxEventInvestigationAttachment,
      size.defaultTaskDueDateDays);

  Future<int> insertAuditTeamTaskTable(model.AuditTeamTask auditTeamTask) =>
      insertAuditTeamTask(
          auditTeamTask.auditTeamMappingId,
          auditTeamTask.auditId,
          auditTeamTask.auditEntityId,
          auditTeamTask.teamId,
          auditTeamTask.memberId);

  Future<int> insertTeamDetailsTable(model.TeamDetails teamDetails) =>
      insertTeamDetails(teamDetails.teamId, teamDetails.teamName);

  Future<int> insertUserDetailsTable(model.UserDetails userDetails) =>
      insertUserDetails(
          userDetails.firstName, userDetails.lastName, userDetails.memberId);

  Future<int> insertUserPermissionTable(model.UserPermission userPermission) =>
      insertUserPermission(userPermission.userTaskPermission);

  Future<int> insertOccurrenceScheduleDatesTable(
          model.OccurrenceScheduleDates occurrenceScheduleDates) =>
      insertOccurrenceScheduleDates(
          occurrenceScheduleDates.occurrenceScheduleDateId,
          occurrenceScheduleDates.auditId,
          occurrenceScheduleDates.auditScheduleRuleId,
          occurrenceScheduleDates.scheduleOccurrenceId,
          occurrenceScheduleDates.scheduleRuleTitle,
          occurrenceScheduleDates.occurrenceTitle,
          occurrenceScheduleDates.occurrenceCycle,
          occurrenceScheduleDates.startDate,
          occurrenceScheduleDates.endDate,
          occurrenceScheduleDates.auditStatusId,
          occurrenceScheduleDates.userId,
          occurrenceScheduleDates.isEntityRule);

  Future<int> insertAuditEnforceTimeDataTable(
          model.AuditEnforceTimeData auditEnforceTimeData) =>
      insertAuditEnforceTimeData(
          auditEnforceTimeData.enforceTimeId,
          auditEnforceTimeData.auditId,
          auditEnforceTimeData.fromTime,
          auditEnforceTimeData.toTime);

  Future<int> insertAuditGroupsTable(model.AuditGroups auditGroups) =>
      insertAuditGroups(
          auditGroups.auditGroupId,
          auditGroups.auditGroupParentId,
          auditGroups.auditGroupName,
          auditGroups.auditGroupLevel,
          auditGroups.auditCount);

  Future<List<CountResult>> countAuditTable() => count().get();
}
