// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_entity_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AuditDetailsListData extends DataClass
    implements Insertable<AuditDetailsListData> {
  final int userId;
  final String auditName;
  final int auditId;
  final bool failureReason;
  final bool correctiveAction;
  final bool auditorSignOff;
  final bool secondarySignOff;
  final bool entityMustAddress;
  final int scoringFormulaId;
  final int auditMasterId;
  final bool autoSyncInMobile;
  final int? versionId;
  final int isFailureText;
  final int isFailureList;
  final int isCorrectiveActionText;
  final int isCorrectiveActionList;
  final int defaultTaskDueDateDays;
  final bool task;
  final bool allowDueDate;
  final bool sendTaskAlertEmail;
  final int barcodeOrNFC;
  final bool canEdit;
  final bool showScoreInMobile;
  final bool isRecheck;
  final bool isRandomization;
  final bool isQuestionCategory;
  final bool isNotifyAuditor;
  final String? auditorDeclarationText;
  final String? secondaryDeclarationText;
  final bool isScheduling;
  final bool isFormerData;
  final bool isAuditQuestions;
  final bool isEntitiesAuditable;
  final bool isEnforceFormerAudit;
  final bool isFlipScore;
  final bool auditTracking;
  final bool isMultipleLevelTeam;
  final bool isTaskDistribution;
  final bool approveProcessEntitiesMandatory;
  final bool approvalProcess;
  final bool submissionPasswordRequired;
  final bool isViewOnlyFormerData;
  final int auditGroupId;
  final DateTime? auditEndDate;
  final int? lastAuditResponseId;
  AuditDetailsListData(
      {required this.userId,
      required this.auditName,
      required this.auditId,
      required this.failureReason,
      required this.correctiveAction,
      required this.auditorSignOff,
      required this.secondarySignOff,
      required this.entityMustAddress,
      required this.scoringFormulaId,
      required this.auditMasterId,
      required this.autoSyncInMobile,
      this.versionId,
      required this.isFailureText,
      required this.isFailureList,
      required this.isCorrectiveActionText,
      required this.isCorrectiveActionList,
      required this.defaultTaskDueDateDays,
      required this.task,
      required this.allowDueDate,
      required this.sendTaskAlertEmail,
      required this.barcodeOrNFC,
      required this.canEdit,
      required this.showScoreInMobile,
      required this.isRecheck,
      required this.isRandomization,
      required this.isQuestionCategory,
      required this.isNotifyAuditor,
      this.auditorDeclarationText,
      this.secondaryDeclarationText,
      required this.isScheduling,
      required this.isFormerData,
      required this.isAuditQuestions,
      required this.isEntitiesAuditable,
      required this.isEnforceFormerAudit,
      required this.isFlipScore,
      required this.auditTracking,
      required this.isMultipleLevelTeam,
      required this.isTaskDistribution,
      required this.approveProcessEntitiesMandatory,
      required this.approvalProcess,
      required this.submissionPasswordRequired,
      required this.isViewOnlyFormerData,
      required this.auditGroupId,
      this.auditEndDate,
      this.lastAuditResponseId});
  factory AuditDetailsListData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditDetailsListData(
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId'])!,
      auditName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditName'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      failureReason: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}failureReason'])!,
      correctiveAction: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}correctiveAction'])!,
      auditorSignOff: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditorSignOff'])!,
      secondarySignOff: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}secondarySignOff'])!,
      entityMustAddress: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}entityMustAddress'])!,
      scoringFormulaId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoringFormulaId'])!,
      auditMasterId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditMasterId'])!,
      autoSyncInMobile: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}autoSyncInMobile'])!,
      versionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}versionId']),
      isFailureText: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isFailureText'])!,
      isFailureList: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isFailureList'])!,
      isCorrectiveActionText: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}isCorrectiveActionText'])!,
      isCorrectiveActionList: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}isCorrectiveActionList'])!,
      defaultTaskDueDateDays: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}defaultTaskDueDateDays'])!,
      task: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}task'])!,
      allowDueDate: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}allowDueDate'])!,
      sendTaskAlertEmail: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}sendTaskAlertEmail'])!,
      barcodeOrNFC: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barcodeOrNFC'])!,
      canEdit: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}canEdit'])!,
      showScoreInMobile: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}showScoreInMobile'])!,
      isRecheck: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isRecheck'])!,
      isRandomization: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isRandomization'])!,
      isQuestionCategory: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isQuestionCategory'])!,
      isNotifyAuditor: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isNotifyAuditor'])!,
      auditorDeclarationText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditorDeclarationText']),
      secondaryDeclarationText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}secondaryDeclarationText']),
      isScheduling: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isScheduling'])!,
      isFormerData: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isFormerData'])!,
      isAuditQuestions: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isAuditQuestions'])!,
      isEntitiesAuditable: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isEntitiesAuditable'])!,
      isEnforceFormerAudit: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isEnforceFormerAudit'])!,
      isFlipScore: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isFlipScore'])!,
      auditTracking: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditTracking'])!,
      isMultipleLevelTeam: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isMultipleLevelTeam'])!,
      isTaskDistribution: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isTaskDistribution'])!,
      approveProcessEntitiesMandatory: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}approveProcessEntitiesMandatory'])!,
      approvalProcess: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}approvalProcess'])!,
      submissionPasswordRequired: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}submissionPasswordRequired'])!,
      isViewOnlyFormerData: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}isViewOnlyFormerData'])!,
      auditGroupId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditGroupId'])!,
      auditEndDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditEndDate']),
      lastAuditResponseId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}lastAuditResponseId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['userId'] = Variable<int>(userId);
    map['auditName'] = Variable<String>(auditName);
    map['auditId'] = Variable<int>(auditId);
    map['failureReason'] = Variable<bool>(failureReason);
    map['correctiveAction'] = Variable<bool>(correctiveAction);
    map['auditorSignOff'] = Variable<bool>(auditorSignOff);
    map['secondarySignOff'] = Variable<bool>(secondarySignOff);
    map['entityMustAddress'] = Variable<bool>(entityMustAddress);
    map['scoringFormulaId'] = Variable<int>(scoringFormulaId);
    map['auditMasterId'] = Variable<int>(auditMasterId);
    map['autoSyncInMobile'] = Variable<bool>(autoSyncInMobile);
    if (!nullToAbsent || versionId != null) {
      map['versionId'] = Variable<int?>(versionId);
    }
    map['isFailureText'] = Variable<int>(isFailureText);
    map['isFailureList'] = Variable<int>(isFailureList);
    map['isCorrectiveActionText'] = Variable<int>(isCorrectiveActionText);
    map['isCorrectiveActionList'] = Variable<int>(isCorrectiveActionList);
    map['defaultTaskDueDateDays'] = Variable<int>(defaultTaskDueDateDays);
    map['task'] = Variable<bool>(task);
    map['allowDueDate'] = Variable<bool>(allowDueDate);
    map['sendTaskAlertEmail'] = Variable<bool>(sendTaskAlertEmail);
    map['barcodeOrNFC'] = Variable<int>(barcodeOrNFC);
    map['canEdit'] = Variable<bool>(canEdit);
    map['showScoreInMobile'] = Variable<bool>(showScoreInMobile);
    map['isRecheck'] = Variable<bool>(isRecheck);
    map['isRandomization'] = Variable<bool>(isRandomization);
    map['isQuestionCategory'] = Variable<bool>(isQuestionCategory);
    map['isNotifyAuditor'] = Variable<bool>(isNotifyAuditor);
    if (!nullToAbsent || auditorDeclarationText != null) {
      map['auditorDeclarationText'] = Variable<String?>(auditorDeclarationText);
    }
    if (!nullToAbsent || secondaryDeclarationText != null) {
      map['secondaryDeclarationText'] =
          Variable<String?>(secondaryDeclarationText);
    }
    map['isScheduling'] = Variable<bool>(isScheduling);
    map['isFormerData'] = Variable<bool>(isFormerData);
    map['isAuditQuestions'] = Variable<bool>(isAuditQuestions);
    map['isEntitiesAuditable'] = Variable<bool>(isEntitiesAuditable);
    map['isEnforceFormerAudit'] = Variable<bool>(isEnforceFormerAudit);
    map['isFlipScore'] = Variable<bool>(isFlipScore);
    map['auditTracking'] = Variable<bool>(auditTracking);
    map['isMultipleLevelTeam'] = Variable<bool>(isMultipleLevelTeam);
    map['isTaskDistribution'] = Variable<bool>(isTaskDistribution);
    map['approveProcessEntitiesMandatory'] =
        Variable<bool>(approveProcessEntitiesMandatory);
    map['approvalProcess'] = Variable<bool>(approvalProcess);
    map['submissionPasswordRequired'] =
        Variable<bool>(submissionPasswordRequired);
    map['isViewOnlyFormerData'] = Variable<bool>(isViewOnlyFormerData);
    map['auditGroupId'] = Variable<int>(auditGroupId);
    if (!nullToAbsent || auditEndDate != null) {
      map['auditEndDate'] = Variable<DateTime?>(auditEndDate);
    }
    if (!nullToAbsent || lastAuditResponseId != null) {
      map['lastAuditResponseId'] = Variable<int?>(lastAuditResponseId);
    }
    return map;
  }

  AuditDetailsListCompanion toCompanion(bool nullToAbsent) {
    return AuditDetailsListCompanion(
      userId: Value(userId),
      auditName: Value(auditName),
      auditId: Value(auditId),
      failureReason: Value(failureReason),
      correctiveAction: Value(correctiveAction),
      auditorSignOff: Value(auditorSignOff),
      secondarySignOff: Value(secondarySignOff),
      entityMustAddress: Value(entityMustAddress),
      scoringFormulaId: Value(scoringFormulaId),
      auditMasterId: Value(auditMasterId),
      autoSyncInMobile: Value(autoSyncInMobile),
      versionId: versionId == null && nullToAbsent
          ? const Value.absent()
          : Value(versionId),
      isFailureText: Value(isFailureText),
      isFailureList: Value(isFailureList),
      isCorrectiveActionText: Value(isCorrectiveActionText),
      isCorrectiveActionList: Value(isCorrectiveActionList),
      defaultTaskDueDateDays: Value(defaultTaskDueDateDays),
      task: Value(task),
      allowDueDate: Value(allowDueDate),
      sendTaskAlertEmail: Value(sendTaskAlertEmail),
      barcodeOrNFC: Value(barcodeOrNFC),
      canEdit: Value(canEdit),
      showScoreInMobile: Value(showScoreInMobile),
      isRecheck: Value(isRecheck),
      isRandomization: Value(isRandomization),
      isQuestionCategory: Value(isQuestionCategory),
      isNotifyAuditor: Value(isNotifyAuditor),
      auditorDeclarationText: auditorDeclarationText == null && nullToAbsent
          ? const Value.absent()
          : Value(auditorDeclarationText),
      secondaryDeclarationText: secondaryDeclarationText == null && nullToAbsent
          ? const Value.absent()
          : Value(secondaryDeclarationText),
      isScheduling: Value(isScheduling),
      isFormerData: Value(isFormerData),
      isAuditQuestions: Value(isAuditQuestions),
      isEntitiesAuditable: Value(isEntitiesAuditable),
      isEnforceFormerAudit: Value(isEnforceFormerAudit),
      isFlipScore: Value(isFlipScore),
      auditTracking: Value(auditTracking),
      isMultipleLevelTeam: Value(isMultipleLevelTeam),
      isTaskDistribution: Value(isTaskDistribution),
      approveProcessEntitiesMandatory: Value(approveProcessEntitiesMandatory),
      approvalProcess: Value(approvalProcess),
      submissionPasswordRequired: Value(submissionPasswordRequired),
      isViewOnlyFormerData: Value(isViewOnlyFormerData),
      auditGroupId: Value(auditGroupId),
      auditEndDate: auditEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(auditEndDate),
      lastAuditResponseId: lastAuditResponseId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastAuditResponseId),
    );
  }

  factory AuditDetailsListData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditDetailsListData(
      userId: serializer.fromJson<int>(json['userId']),
      auditName: serializer.fromJson<String>(json['auditName']),
      auditId: serializer.fromJson<int>(json['auditId']),
      failureReason: serializer.fromJson<bool>(json['failureReason']),
      correctiveAction: serializer.fromJson<bool>(json['correctiveAction']),
      auditorSignOff: serializer.fromJson<bool>(json['auditorSignOff']),
      secondarySignOff: serializer.fromJson<bool>(json['secondarySignOff']),
      entityMustAddress: serializer.fromJson<bool>(json['entityMustAddress']),
      scoringFormulaId: serializer.fromJson<int>(json['scoringFormulaId']),
      auditMasterId: serializer.fromJson<int>(json['auditMasterId']),
      autoSyncInMobile: serializer.fromJson<bool>(json['autoSyncInMobile']),
      versionId: serializer.fromJson<int?>(json['versionId']),
      isFailureText: serializer.fromJson<int>(json['isFailureText']),
      isFailureList: serializer.fromJson<int>(json['isFailureList']),
      isCorrectiveActionText:
          serializer.fromJson<int>(json['isCorrectiveActionText']),
      isCorrectiveActionList:
          serializer.fromJson<int>(json['isCorrectiveActionList']),
      defaultTaskDueDateDays:
          serializer.fromJson<int>(json['defaultTaskDueDateDays']),
      task: serializer.fromJson<bool>(json['task']),
      allowDueDate: serializer.fromJson<bool>(json['allowDueDate']),
      sendTaskAlertEmail: serializer.fromJson<bool>(json['sendTaskAlertEmail']),
      barcodeOrNFC: serializer.fromJson<int>(json['barcodeOrNFC']),
      canEdit: serializer.fromJson<bool>(json['canEdit']),
      showScoreInMobile: serializer.fromJson<bool>(json['showScoreInMobile']),
      isRecheck: serializer.fromJson<bool>(json['isRecheck']),
      isRandomization: serializer.fromJson<bool>(json['isRandomization']),
      isQuestionCategory: serializer.fromJson<bool>(json['isQuestionCategory']),
      isNotifyAuditor: serializer.fromJson<bool>(json['isNotifyAuditor']),
      auditorDeclarationText:
          serializer.fromJson<String?>(json['auditorDeclarationText']),
      secondaryDeclarationText:
          serializer.fromJson<String?>(json['secondaryDeclarationText']),
      isScheduling: serializer.fromJson<bool>(json['isScheduling']),
      isFormerData: serializer.fromJson<bool>(json['isFormerData']),
      isAuditQuestions: serializer.fromJson<bool>(json['isAuditQuestions']),
      isEntitiesAuditable:
          serializer.fromJson<bool>(json['isEntitiesAuditable']),
      isEnforceFormerAudit:
          serializer.fromJson<bool>(json['isEnforceFormerAudit']),
      isFlipScore: serializer.fromJson<bool>(json['isFlipScore']),
      auditTracking: serializer.fromJson<bool>(json['auditTracking']),
      isMultipleLevelTeam:
          serializer.fromJson<bool>(json['isMultipleLevelTeam']),
      isTaskDistribution: serializer.fromJson<bool>(json['isTaskDistribution']),
      approveProcessEntitiesMandatory:
          serializer.fromJson<bool>(json['approveProcessEntitiesMandatory']),
      approvalProcess: serializer.fromJson<bool>(json['approvalProcess']),
      submissionPasswordRequired:
          serializer.fromJson<bool>(json['submissionPasswordRequired']),
      isViewOnlyFormerData:
          serializer.fromJson<bool>(json['isViewOnlyFormerData']),
      auditGroupId: serializer.fromJson<int>(json['auditGroupId']),
      auditEndDate: serializer.fromJson<DateTime?>(json['auditEndDate']),
      lastAuditResponseId:
          serializer.fromJson<int?>(json['lastAuditResponseId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'auditName': serializer.toJson<String>(auditName),
      'auditId': serializer.toJson<int>(auditId),
      'failureReason': serializer.toJson<bool>(failureReason),
      'correctiveAction': serializer.toJson<bool>(correctiveAction),
      'auditorSignOff': serializer.toJson<bool>(auditorSignOff),
      'secondarySignOff': serializer.toJson<bool>(secondarySignOff),
      'entityMustAddress': serializer.toJson<bool>(entityMustAddress),
      'scoringFormulaId': serializer.toJson<int>(scoringFormulaId),
      'auditMasterId': serializer.toJson<int>(auditMasterId),
      'autoSyncInMobile': serializer.toJson<bool>(autoSyncInMobile),
      'versionId': serializer.toJson<int?>(versionId),
      'isFailureText': serializer.toJson<int>(isFailureText),
      'isFailureList': serializer.toJson<int>(isFailureList),
      'isCorrectiveActionText': serializer.toJson<int>(isCorrectiveActionText),
      'isCorrectiveActionList': serializer.toJson<int>(isCorrectiveActionList),
      'defaultTaskDueDateDays': serializer.toJson<int>(defaultTaskDueDateDays),
      'task': serializer.toJson<bool>(task),
      'allowDueDate': serializer.toJson<bool>(allowDueDate),
      'sendTaskAlertEmail': serializer.toJson<bool>(sendTaskAlertEmail),
      'barcodeOrNFC': serializer.toJson<int>(barcodeOrNFC),
      'canEdit': serializer.toJson<bool>(canEdit),
      'showScoreInMobile': serializer.toJson<bool>(showScoreInMobile),
      'isRecheck': serializer.toJson<bool>(isRecheck),
      'isRandomization': serializer.toJson<bool>(isRandomization),
      'isQuestionCategory': serializer.toJson<bool>(isQuestionCategory),
      'isNotifyAuditor': serializer.toJson<bool>(isNotifyAuditor),
      'auditorDeclarationText':
          serializer.toJson<String?>(auditorDeclarationText),
      'secondaryDeclarationText':
          serializer.toJson<String?>(secondaryDeclarationText),
      'isScheduling': serializer.toJson<bool>(isScheduling),
      'isFormerData': serializer.toJson<bool>(isFormerData),
      'isAuditQuestions': serializer.toJson<bool>(isAuditQuestions),
      'isEntitiesAuditable': serializer.toJson<bool>(isEntitiesAuditable),
      'isEnforceFormerAudit': serializer.toJson<bool>(isEnforceFormerAudit),
      'isFlipScore': serializer.toJson<bool>(isFlipScore),
      'auditTracking': serializer.toJson<bool>(auditTracking),
      'isMultipleLevelTeam': serializer.toJson<bool>(isMultipleLevelTeam),
      'isTaskDistribution': serializer.toJson<bool>(isTaskDistribution),
      'approveProcessEntitiesMandatory':
          serializer.toJson<bool>(approveProcessEntitiesMandatory),
      'approvalProcess': serializer.toJson<bool>(approvalProcess),
      'submissionPasswordRequired':
          serializer.toJson<bool>(submissionPasswordRequired),
      'isViewOnlyFormerData': serializer.toJson<bool>(isViewOnlyFormerData),
      'auditGroupId': serializer.toJson<int>(auditGroupId),
      'auditEndDate': serializer.toJson<DateTime?>(auditEndDate),
      'lastAuditResponseId': serializer.toJson<int?>(lastAuditResponseId),
    };
  }

  AuditDetailsListData copyWith(
          {int? userId,
          String? auditName,
          int? auditId,
          bool? failureReason,
          bool? correctiveAction,
          bool? auditorSignOff,
          bool? secondarySignOff,
          bool? entityMustAddress,
          int? scoringFormulaId,
          int? auditMasterId,
          bool? autoSyncInMobile,
          int? versionId,
          int? isFailureText,
          int? isFailureList,
          int? isCorrectiveActionText,
          int? isCorrectiveActionList,
          int? defaultTaskDueDateDays,
          bool? task,
          bool? allowDueDate,
          bool? sendTaskAlertEmail,
          int? barcodeOrNFC,
          bool? canEdit,
          bool? showScoreInMobile,
          bool? isRecheck,
          bool? isRandomization,
          bool? isQuestionCategory,
          bool? isNotifyAuditor,
          String? auditorDeclarationText,
          String? secondaryDeclarationText,
          bool? isScheduling,
          bool? isFormerData,
          bool? isAuditQuestions,
          bool? isEntitiesAuditable,
          bool? isEnforceFormerAudit,
          bool? isFlipScore,
          bool? auditTracking,
          bool? isMultipleLevelTeam,
          bool? isTaskDistribution,
          bool? approveProcessEntitiesMandatory,
          bool? approvalProcess,
          bool? submissionPasswordRequired,
          bool? isViewOnlyFormerData,
          int? auditGroupId,
          DateTime? auditEndDate,
          int? lastAuditResponseId}) =>
      AuditDetailsListData(
        userId: userId ?? this.userId,
        auditName: auditName ?? this.auditName,
        auditId: auditId ?? this.auditId,
        failureReason: failureReason ?? this.failureReason,
        correctiveAction: correctiveAction ?? this.correctiveAction,
        auditorSignOff: auditorSignOff ?? this.auditorSignOff,
        secondarySignOff: secondarySignOff ?? this.secondarySignOff,
        entityMustAddress: entityMustAddress ?? this.entityMustAddress,
        scoringFormulaId: scoringFormulaId ?? this.scoringFormulaId,
        auditMasterId: auditMasterId ?? this.auditMasterId,
        autoSyncInMobile: autoSyncInMobile ?? this.autoSyncInMobile,
        versionId: versionId ?? this.versionId,
        isFailureText: isFailureText ?? this.isFailureText,
        isFailureList: isFailureList ?? this.isFailureList,
        isCorrectiveActionText:
            isCorrectiveActionText ?? this.isCorrectiveActionText,
        isCorrectiveActionList:
            isCorrectiveActionList ?? this.isCorrectiveActionList,
        defaultTaskDueDateDays:
            defaultTaskDueDateDays ?? this.defaultTaskDueDateDays,
        task: task ?? this.task,
        allowDueDate: allowDueDate ?? this.allowDueDate,
        sendTaskAlertEmail: sendTaskAlertEmail ?? this.sendTaskAlertEmail,
        barcodeOrNFC: barcodeOrNFC ?? this.barcodeOrNFC,
        canEdit: canEdit ?? this.canEdit,
        showScoreInMobile: showScoreInMobile ?? this.showScoreInMobile,
        isRecheck: isRecheck ?? this.isRecheck,
        isRandomization: isRandomization ?? this.isRandomization,
        isQuestionCategory: isQuestionCategory ?? this.isQuestionCategory,
        isNotifyAuditor: isNotifyAuditor ?? this.isNotifyAuditor,
        auditorDeclarationText:
            auditorDeclarationText ?? this.auditorDeclarationText,
        secondaryDeclarationText:
            secondaryDeclarationText ?? this.secondaryDeclarationText,
        isScheduling: isScheduling ?? this.isScheduling,
        isFormerData: isFormerData ?? this.isFormerData,
        isAuditQuestions: isAuditQuestions ?? this.isAuditQuestions,
        isEntitiesAuditable: isEntitiesAuditable ?? this.isEntitiesAuditable,
        isEnforceFormerAudit: isEnforceFormerAudit ?? this.isEnforceFormerAudit,
        isFlipScore: isFlipScore ?? this.isFlipScore,
        auditTracking: auditTracking ?? this.auditTracking,
        isMultipleLevelTeam: isMultipleLevelTeam ?? this.isMultipleLevelTeam,
        isTaskDistribution: isTaskDistribution ?? this.isTaskDistribution,
        approveProcessEntitiesMandatory: approveProcessEntitiesMandatory ??
            this.approveProcessEntitiesMandatory,
        approvalProcess: approvalProcess ?? this.approvalProcess,
        submissionPasswordRequired:
            submissionPasswordRequired ?? this.submissionPasswordRequired,
        isViewOnlyFormerData: isViewOnlyFormerData ?? this.isViewOnlyFormerData,
        auditGroupId: auditGroupId ?? this.auditGroupId,
        auditEndDate: auditEndDate ?? this.auditEndDate,
        lastAuditResponseId: lastAuditResponseId ?? this.lastAuditResponseId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditDetailsListData(')
          ..write('userId: $userId, ')
          ..write('auditName: $auditName, ')
          ..write('auditId: $auditId, ')
          ..write('failureReason: $failureReason, ')
          ..write('correctiveAction: $correctiveAction, ')
          ..write('auditorSignOff: $auditorSignOff, ')
          ..write('secondarySignOff: $secondarySignOff, ')
          ..write('entityMustAddress: $entityMustAddress, ')
          ..write('scoringFormulaId: $scoringFormulaId, ')
          ..write('auditMasterId: $auditMasterId, ')
          ..write('autoSyncInMobile: $autoSyncInMobile, ')
          ..write('versionId: $versionId, ')
          ..write('isFailureText: $isFailureText, ')
          ..write('isFailureList: $isFailureList, ')
          ..write('isCorrectiveActionText: $isCorrectiveActionText, ')
          ..write('isCorrectiveActionList: $isCorrectiveActionList, ')
          ..write('defaultTaskDueDateDays: $defaultTaskDueDateDays, ')
          ..write('task: $task, ')
          ..write('allowDueDate: $allowDueDate, ')
          ..write('sendTaskAlertEmail: $sendTaskAlertEmail, ')
          ..write('barcodeOrNFC: $barcodeOrNFC, ')
          ..write('canEdit: $canEdit, ')
          ..write('showScoreInMobile: $showScoreInMobile, ')
          ..write('isRecheck: $isRecheck, ')
          ..write('isRandomization: $isRandomization, ')
          ..write('isQuestionCategory: $isQuestionCategory, ')
          ..write('isNotifyAuditor: $isNotifyAuditor, ')
          ..write('auditorDeclarationText: $auditorDeclarationText, ')
          ..write('secondaryDeclarationText: $secondaryDeclarationText, ')
          ..write('isScheduling: $isScheduling, ')
          ..write('isFormerData: $isFormerData, ')
          ..write('isAuditQuestions: $isAuditQuestions, ')
          ..write('isEntitiesAuditable: $isEntitiesAuditable, ')
          ..write('isEnforceFormerAudit: $isEnforceFormerAudit, ')
          ..write('isFlipScore: $isFlipScore, ')
          ..write('auditTracking: $auditTracking, ')
          ..write('isMultipleLevelTeam: $isMultipleLevelTeam, ')
          ..write('isTaskDistribution: $isTaskDistribution, ')
          ..write(
              'approveProcessEntitiesMandatory: $approveProcessEntitiesMandatory, ')
          ..write('approvalProcess: $approvalProcess, ')
          ..write('submissionPasswordRequired: $submissionPasswordRequired, ')
          ..write('isViewOnlyFormerData: $isViewOnlyFormerData, ')
          ..write('auditGroupId: $auditGroupId, ')
          ..write('auditEndDate: $auditEndDate, ')
          ..write('lastAuditResponseId: $lastAuditResponseId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        userId,
        auditName,
        auditId,
        failureReason,
        correctiveAction,
        auditorSignOff,
        secondarySignOff,
        entityMustAddress,
        scoringFormulaId,
        auditMasterId,
        autoSyncInMobile,
        versionId,
        isFailureText,
        isFailureList,
        isCorrectiveActionText,
        isCorrectiveActionList,
        defaultTaskDueDateDays,
        task,
        allowDueDate,
        sendTaskAlertEmail,
        barcodeOrNFC,
        canEdit,
        showScoreInMobile,
        isRecheck,
        isRandomization,
        isQuestionCategory,
        isNotifyAuditor,
        auditorDeclarationText,
        secondaryDeclarationText,
        isScheduling,
        isFormerData,
        isAuditQuestions,
        isEntitiesAuditable,
        isEnforceFormerAudit,
        isFlipScore,
        auditTracking,
        isMultipleLevelTeam,
        isTaskDistribution,
        approveProcessEntitiesMandatory,
        approvalProcess,
        submissionPasswordRequired,
        isViewOnlyFormerData,
        auditGroupId,
        auditEndDate,
        lastAuditResponseId
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditDetailsListData &&
          other.userId == this.userId &&
          other.auditName == this.auditName &&
          other.auditId == this.auditId &&
          other.failureReason == this.failureReason &&
          other.correctiveAction == this.correctiveAction &&
          other.auditorSignOff == this.auditorSignOff &&
          other.secondarySignOff == this.secondarySignOff &&
          other.entityMustAddress == this.entityMustAddress &&
          other.scoringFormulaId == this.scoringFormulaId &&
          other.auditMasterId == this.auditMasterId &&
          other.autoSyncInMobile == this.autoSyncInMobile &&
          other.versionId == this.versionId &&
          other.isFailureText == this.isFailureText &&
          other.isFailureList == this.isFailureList &&
          other.isCorrectiveActionText == this.isCorrectiveActionText &&
          other.isCorrectiveActionList == this.isCorrectiveActionList &&
          other.defaultTaskDueDateDays == this.defaultTaskDueDateDays &&
          other.task == this.task &&
          other.allowDueDate == this.allowDueDate &&
          other.sendTaskAlertEmail == this.sendTaskAlertEmail &&
          other.barcodeOrNFC == this.barcodeOrNFC &&
          other.canEdit == this.canEdit &&
          other.showScoreInMobile == this.showScoreInMobile &&
          other.isRecheck == this.isRecheck &&
          other.isRandomization == this.isRandomization &&
          other.isQuestionCategory == this.isQuestionCategory &&
          other.isNotifyAuditor == this.isNotifyAuditor &&
          other.auditorDeclarationText == this.auditorDeclarationText &&
          other.secondaryDeclarationText == this.secondaryDeclarationText &&
          other.isScheduling == this.isScheduling &&
          other.isFormerData == this.isFormerData &&
          other.isAuditQuestions == this.isAuditQuestions &&
          other.isEntitiesAuditable == this.isEntitiesAuditable &&
          other.isEnforceFormerAudit == this.isEnforceFormerAudit &&
          other.isFlipScore == this.isFlipScore &&
          other.auditTracking == this.auditTracking &&
          other.isMultipleLevelTeam == this.isMultipleLevelTeam &&
          other.isTaskDistribution == this.isTaskDistribution &&
          other.approveProcessEntitiesMandatory ==
              this.approveProcessEntitiesMandatory &&
          other.approvalProcess == this.approvalProcess &&
          other.submissionPasswordRequired == this.submissionPasswordRequired &&
          other.isViewOnlyFormerData == this.isViewOnlyFormerData &&
          other.auditGroupId == this.auditGroupId &&
          other.auditEndDate == this.auditEndDate &&
          other.lastAuditResponseId == this.lastAuditResponseId);
}

class AuditDetailsListCompanion extends UpdateCompanion<AuditDetailsListData> {
  final Value<int> userId;
  final Value<String> auditName;
  final Value<int> auditId;
  final Value<bool> failureReason;
  final Value<bool> correctiveAction;
  final Value<bool> auditorSignOff;
  final Value<bool> secondarySignOff;
  final Value<bool> entityMustAddress;
  final Value<int> scoringFormulaId;
  final Value<int> auditMasterId;
  final Value<bool> autoSyncInMobile;
  final Value<int?> versionId;
  final Value<int> isFailureText;
  final Value<int> isFailureList;
  final Value<int> isCorrectiveActionText;
  final Value<int> isCorrectiveActionList;
  final Value<int> defaultTaskDueDateDays;
  final Value<bool> task;
  final Value<bool> allowDueDate;
  final Value<bool> sendTaskAlertEmail;
  final Value<int> barcodeOrNFC;
  final Value<bool> canEdit;
  final Value<bool> showScoreInMobile;
  final Value<bool> isRecheck;
  final Value<bool> isRandomization;
  final Value<bool> isQuestionCategory;
  final Value<bool> isNotifyAuditor;
  final Value<String?> auditorDeclarationText;
  final Value<String?> secondaryDeclarationText;
  final Value<bool> isScheduling;
  final Value<bool> isFormerData;
  final Value<bool> isAuditQuestions;
  final Value<bool> isEntitiesAuditable;
  final Value<bool> isEnforceFormerAudit;
  final Value<bool> isFlipScore;
  final Value<bool> auditTracking;
  final Value<bool> isMultipleLevelTeam;
  final Value<bool> isTaskDistribution;
  final Value<bool> approveProcessEntitiesMandatory;
  final Value<bool> approvalProcess;
  final Value<bool> submissionPasswordRequired;
  final Value<bool> isViewOnlyFormerData;
  final Value<int> auditGroupId;
  final Value<DateTime?> auditEndDate;
  final Value<int?> lastAuditResponseId;
  const AuditDetailsListCompanion({
    this.userId = const Value.absent(),
    this.auditName = const Value.absent(),
    this.auditId = const Value.absent(),
    this.failureReason = const Value.absent(),
    this.correctiveAction = const Value.absent(),
    this.auditorSignOff = const Value.absent(),
    this.secondarySignOff = const Value.absent(),
    this.entityMustAddress = const Value.absent(),
    this.scoringFormulaId = const Value.absent(),
    this.auditMasterId = const Value.absent(),
    this.autoSyncInMobile = const Value.absent(),
    this.versionId = const Value.absent(),
    this.isFailureText = const Value.absent(),
    this.isFailureList = const Value.absent(),
    this.isCorrectiveActionText = const Value.absent(),
    this.isCorrectiveActionList = const Value.absent(),
    this.defaultTaskDueDateDays = const Value.absent(),
    this.task = const Value.absent(),
    this.allowDueDate = const Value.absent(),
    this.sendTaskAlertEmail = const Value.absent(),
    this.barcodeOrNFC = const Value.absent(),
    this.canEdit = const Value.absent(),
    this.showScoreInMobile = const Value.absent(),
    this.isRecheck = const Value.absent(),
    this.isRandomization = const Value.absent(),
    this.isQuestionCategory = const Value.absent(),
    this.isNotifyAuditor = const Value.absent(),
    this.auditorDeclarationText = const Value.absent(),
    this.secondaryDeclarationText = const Value.absent(),
    this.isScheduling = const Value.absent(),
    this.isFormerData = const Value.absent(),
    this.isAuditQuestions = const Value.absent(),
    this.isEntitiesAuditable = const Value.absent(),
    this.isEnforceFormerAudit = const Value.absent(),
    this.isFlipScore = const Value.absent(),
    this.auditTracking = const Value.absent(),
    this.isMultipleLevelTeam = const Value.absent(),
    this.isTaskDistribution = const Value.absent(),
    this.approveProcessEntitiesMandatory = const Value.absent(),
    this.approvalProcess = const Value.absent(),
    this.submissionPasswordRequired = const Value.absent(),
    this.isViewOnlyFormerData = const Value.absent(),
    this.auditGroupId = const Value.absent(),
    this.auditEndDate = const Value.absent(),
    this.lastAuditResponseId = const Value.absent(),
  });
  AuditDetailsListCompanion.insert({
    required int userId,
    required String auditName,
    this.auditId = const Value.absent(),
    required bool failureReason,
    required bool correctiveAction,
    required bool auditorSignOff,
    required bool secondarySignOff,
    required bool entityMustAddress,
    required int scoringFormulaId,
    required int auditMasterId,
    required bool autoSyncInMobile,
    this.versionId = const Value.absent(),
    required int isFailureText,
    required int isFailureList,
    required int isCorrectiveActionText,
    required int isCorrectiveActionList,
    required int defaultTaskDueDateDays,
    required bool task,
    required bool allowDueDate,
    required bool sendTaskAlertEmail,
    required int barcodeOrNFC,
    required bool canEdit,
    required bool showScoreInMobile,
    required bool isRecheck,
    required bool isRandomization,
    required bool isQuestionCategory,
    required bool isNotifyAuditor,
    this.auditorDeclarationText = const Value.absent(),
    this.secondaryDeclarationText = const Value.absent(),
    required bool isScheduling,
    required bool isFormerData,
    required bool isAuditQuestions,
    required bool isEntitiesAuditable,
    required bool isEnforceFormerAudit,
    required bool isFlipScore,
    required bool auditTracking,
    required bool isMultipleLevelTeam,
    required bool isTaskDistribution,
    required bool approveProcessEntitiesMandatory,
    required bool approvalProcess,
    required bool submissionPasswordRequired,
    required bool isViewOnlyFormerData,
    required int auditGroupId,
    this.auditEndDate = const Value.absent(),
    this.lastAuditResponseId = const Value.absent(),
  })  : userId = Value(userId),
        auditName = Value(auditName),
        failureReason = Value(failureReason),
        correctiveAction = Value(correctiveAction),
        auditorSignOff = Value(auditorSignOff),
        secondarySignOff = Value(secondarySignOff),
        entityMustAddress = Value(entityMustAddress),
        scoringFormulaId = Value(scoringFormulaId),
        auditMasterId = Value(auditMasterId),
        autoSyncInMobile = Value(autoSyncInMobile),
        isFailureText = Value(isFailureText),
        isFailureList = Value(isFailureList),
        isCorrectiveActionText = Value(isCorrectiveActionText),
        isCorrectiveActionList = Value(isCorrectiveActionList),
        defaultTaskDueDateDays = Value(defaultTaskDueDateDays),
        task = Value(task),
        allowDueDate = Value(allowDueDate),
        sendTaskAlertEmail = Value(sendTaskAlertEmail),
        barcodeOrNFC = Value(barcodeOrNFC),
        canEdit = Value(canEdit),
        showScoreInMobile = Value(showScoreInMobile),
        isRecheck = Value(isRecheck),
        isRandomization = Value(isRandomization),
        isQuestionCategory = Value(isQuestionCategory),
        isNotifyAuditor = Value(isNotifyAuditor),
        isScheduling = Value(isScheduling),
        isFormerData = Value(isFormerData),
        isAuditQuestions = Value(isAuditQuestions),
        isEntitiesAuditable = Value(isEntitiesAuditable),
        isEnforceFormerAudit = Value(isEnforceFormerAudit),
        isFlipScore = Value(isFlipScore),
        auditTracking = Value(auditTracking),
        isMultipleLevelTeam = Value(isMultipleLevelTeam),
        isTaskDistribution = Value(isTaskDistribution),
        approveProcessEntitiesMandatory =
            Value(approveProcessEntitiesMandatory),
        approvalProcess = Value(approvalProcess),
        submissionPasswordRequired = Value(submissionPasswordRequired),
        isViewOnlyFormerData = Value(isViewOnlyFormerData),
        auditGroupId = Value(auditGroupId);
  static Insertable<AuditDetailsListData> custom({
    Expression<int>? userId,
    Expression<String>? auditName,
    Expression<int>? auditId,
    Expression<bool>? failureReason,
    Expression<bool>? correctiveAction,
    Expression<bool>? auditorSignOff,
    Expression<bool>? secondarySignOff,
    Expression<bool>? entityMustAddress,
    Expression<int>? scoringFormulaId,
    Expression<int>? auditMasterId,
    Expression<bool>? autoSyncInMobile,
    Expression<int?>? versionId,
    Expression<int>? isFailureText,
    Expression<int>? isFailureList,
    Expression<int>? isCorrectiveActionText,
    Expression<int>? isCorrectiveActionList,
    Expression<int>? defaultTaskDueDateDays,
    Expression<bool>? task,
    Expression<bool>? allowDueDate,
    Expression<bool>? sendTaskAlertEmail,
    Expression<int>? barcodeOrNFC,
    Expression<bool>? canEdit,
    Expression<bool>? showScoreInMobile,
    Expression<bool>? isRecheck,
    Expression<bool>? isRandomization,
    Expression<bool>? isQuestionCategory,
    Expression<bool>? isNotifyAuditor,
    Expression<String?>? auditorDeclarationText,
    Expression<String?>? secondaryDeclarationText,
    Expression<bool>? isScheduling,
    Expression<bool>? isFormerData,
    Expression<bool>? isAuditQuestions,
    Expression<bool>? isEntitiesAuditable,
    Expression<bool>? isEnforceFormerAudit,
    Expression<bool>? isFlipScore,
    Expression<bool>? auditTracking,
    Expression<bool>? isMultipleLevelTeam,
    Expression<bool>? isTaskDistribution,
    Expression<bool>? approveProcessEntitiesMandatory,
    Expression<bool>? approvalProcess,
    Expression<bool>? submissionPasswordRequired,
    Expression<bool>? isViewOnlyFormerData,
    Expression<int>? auditGroupId,
    Expression<DateTime?>? auditEndDate,
    Expression<int?>? lastAuditResponseId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'userId': userId,
      if (auditName != null) 'auditName': auditName,
      if (auditId != null) 'auditId': auditId,
      if (failureReason != null) 'failureReason': failureReason,
      if (correctiveAction != null) 'correctiveAction': correctiveAction,
      if (auditorSignOff != null) 'auditorSignOff': auditorSignOff,
      if (secondarySignOff != null) 'secondarySignOff': secondarySignOff,
      if (entityMustAddress != null) 'entityMustAddress': entityMustAddress,
      if (scoringFormulaId != null) 'scoringFormulaId': scoringFormulaId,
      if (auditMasterId != null) 'auditMasterId': auditMasterId,
      if (autoSyncInMobile != null) 'autoSyncInMobile': autoSyncInMobile,
      if (versionId != null) 'versionId': versionId,
      if (isFailureText != null) 'isFailureText': isFailureText,
      if (isFailureList != null) 'isFailureList': isFailureList,
      if (isCorrectiveActionText != null)
        'isCorrectiveActionText': isCorrectiveActionText,
      if (isCorrectiveActionList != null)
        'isCorrectiveActionList': isCorrectiveActionList,
      if (defaultTaskDueDateDays != null)
        'defaultTaskDueDateDays': defaultTaskDueDateDays,
      if (task != null) 'task': task,
      if (allowDueDate != null) 'allowDueDate': allowDueDate,
      if (sendTaskAlertEmail != null) 'sendTaskAlertEmail': sendTaskAlertEmail,
      if (barcodeOrNFC != null) 'barcodeOrNFC': barcodeOrNFC,
      if (canEdit != null) 'canEdit': canEdit,
      if (showScoreInMobile != null) 'showScoreInMobile': showScoreInMobile,
      if (isRecheck != null) 'isRecheck': isRecheck,
      if (isRandomization != null) 'isRandomization': isRandomization,
      if (isQuestionCategory != null) 'isQuestionCategory': isQuestionCategory,
      if (isNotifyAuditor != null) 'isNotifyAuditor': isNotifyAuditor,
      if (auditorDeclarationText != null)
        'auditorDeclarationText': auditorDeclarationText,
      if (secondaryDeclarationText != null)
        'secondaryDeclarationText': secondaryDeclarationText,
      if (isScheduling != null) 'isScheduling': isScheduling,
      if (isFormerData != null) 'isFormerData': isFormerData,
      if (isAuditQuestions != null) 'isAuditQuestions': isAuditQuestions,
      if (isEntitiesAuditable != null)
        'isEntitiesAuditable': isEntitiesAuditable,
      if (isEnforceFormerAudit != null)
        'isEnforceFormerAudit': isEnforceFormerAudit,
      if (isFlipScore != null) 'isFlipScore': isFlipScore,
      if (auditTracking != null) 'auditTracking': auditTracking,
      if (isMultipleLevelTeam != null)
        'isMultipleLevelTeam': isMultipleLevelTeam,
      if (isTaskDistribution != null) 'isTaskDistribution': isTaskDistribution,
      if (approveProcessEntitiesMandatory != null)
        'approveProcessEntitiesMandatory': approveProcessEntitiesMandatory,
      if (approvalProcess != null) 'approvalProcess': approvalProcess,
      if (submissionPasswordRequired != null)
        'submissionPasswordRequired': submissionPasswordRequired,
      if (isViewOnlyFormerData != null)
        'isViewOnlyFormerData': isViewOnlyFormerData,
      if (auditGroupId != null) 'auditGroupId': auditGroupId,
      if (auditEndDate != null) 'auditEndDate': auditEndDate,
      if (lastAuditResponseId != null)
        'lastAuditResponseId': lastAuditResponseId,
    });
  }

  AuditDetailsListCompanion copyWith(
      {Value<int>? userId,
      Value<String>? auditName,
      Value<int>? auditId,
      Value<bool>? failureReason,
      Value<bool>? correctiveAction,
      Value<bool>? auditorSignOff,
      Value<bool>? secondarySignOff,
      Value<bool>? entityMustAddress,
      Value<int>? scoringFormulaId,
      Value<int>? auditMasterId,
      Value<bool>? autoSyncInMobile,
      Value<int?>? versionId,
      Value<int>? isFailureText,
      Value<int>? isFailureList,
      Value<int>? isCorrectiveActionText,
      Value<int>? isCorrectiveActionList,
      Value<int>? defaultTaskDueDateDays,
      Value<bool>? task,
      Value<bool>? allowDueDate,
      Value<bool>? sendTaskAlertEmail,
      Value<int>? barcodeOrNFC,
      Value<bool>? canEdit,
      Value<bool>? showScoreInMobile,
      Value<bool>? isRecheck,
      Value<bool>? isRandomization,
      Value<bool>? isQuestionCategory,
      Value<bool>? isNotifyAuditor,
      Value<String?>? auditorDeclarationText,
      Value<String?>? secondaryDeclarationText,
      Value<bool>? isScheduling,
      Value<bool>? isFormerData,
      Value<bool>? isAuditQuestions,
      Value<bool>? isEntitiesAuditable,
      Value<bool>? isEnforceFormerAudit,
      Value<bool>? isFlipScore,
      Value<bool>? auditTracking,
      Value<bool>? isMultipleLevelTeam,
      Value<bool>? isTaskDistribution,
      Value<bool>? approveProcessEntitiesMandatory,
      Value<bool>? approvalProcess,
      Value<bool>? submissionPasswordRequired,
      Value<bool>? isViewOnlyFormerData,
      Value<int>? auditGroupId,
      Value<DateTime?>? auditEndDate,
      Value<int?>? lastAuditResponseId}) {
    return AuditDetailsListCompanion(
      userId: userId ?? this.userId,
      auditName: auditName ?? this.auditName,
      auditId: auditId ?? this.auditId,
      failureReason: failureReason ?? this.failureReason,
      correctiveAction: correctiveAction ?? this.correctiveAction,
      auditorSignOff: auditorSignOff ?? this.auditorSignOff,
      secondarySignOff: secondarySignOff ?? this.secondarySignOff,
      entityMustAddress: entityMustAddress ?? this.entityMustAddress,
      scoringFormulaId: scoringFormulaId ?? this.scoringFormulaId,
      auditMasterId: auditMasterId ?? this.auditMasterId,
      autoSyncInMobile: autoSyncInMobile ?? this.autoSyncInMobile,
      versionId: versionId ?? this.versionId,
      isFailureText: isFailureText ?? this.isFailureText,
      isFailureList: isFailureList ?? this.isFailureList,
      isCorrectiveActionText:
          isCorrectiveActionText ?? this.isCorrectiveActionText,
      isCorrectiveActionList:
          isCorrectiveActionList ?? this.isCorrectiveActionList,
      defaultTaskDueDateDays:
          defaultTaskDueDateDays ?? this.defaultTaskDueDateDays,
      task: task ?? this.task,
      allowDueDate: allowDueDate ?? this.allowDueDate,
      sendTaskAlertEmail: sendTaskAlertEmail ?? this.sendTaskAlertEmail,
      barcodeOrNFC: barcodeOrNFC ?? this.barcodeOrNFC,
      canEdit: canEdit ?? this.canEdit,
      showScoreInMobile: showScoreInMobile ?? this.showScoreInMobile,
      isRecheck: isRecheck ?? this.isRecheck,
      isRandomization: isRandomization ?? this.isRandomization,
      isQuestionCategory: isQuestionCategory ?? this.isQuestionCategory,
      isNotifyAuditor: isNotifyAuditor ?? this.isNotifyAuditor,
      auditorDeclarationText:
          auditorDeclarationText ?? this.auditorDeclarationText,
      secondaryDeclarationText:
          secondaryDeclarationText ?? this.secondaryDeclarationText,
      isScheduling: isScheduling ?? this.isScheduling,
      isFormerData: isFormerData ?? this.isFormerData,
      isAuditQuestions: isAuditQuestions ?? this.isAuditQuestions,
      isEntitiesAuditable: isEntitiesAuditable ?? this.isEntitiesAuditable,
      isEnforceFormerAudit: isEnforceFormerAudit ?? this.isEnforceFormerAudit,
      isFlipScore: isFlipScore ?? this.isFlipScore,
      auditTracking: auditTracking ?? this.auditTracking,
      isMultipleLevelTeam: isMultipleLevelTeam ?? this.isMultipleLevelTeam,
      isTaskDistribution: isTaskDistribution ?? this.isTaskDistribution,
      approveProcessEntitiesMandatory: approveProcessEntitiesMandatory ??
          this.approveProcessEntitiesMandatory,
      approvalProcess: approvalProcess ?? this.approvalProcess,
      submissionPasswordRequired:
          submissionPasswordRequired ?? this.submissionPasswordRequired,
      isViewOnlyFormerData: isViewOnlyFormerData ?? this.isViewOnlyFormerData,
      auditGroupId: auditGroupId ?? this.auditGroupId,
      auditEndDate: auditEndDate ?? this.auditEndDate,
      lastAuditResponseId: lastAuditResponseId ?? this.lastAuditResponseId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['userId'] = Variable<int>(userId.value);
    }
    if (auditName.present) {
      map['auditName'] = Variable<String>(auditName.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (failureReason.present) {
      map['failureReason'] = Variable<bool>(failureReason.value);
    }
    if (correctiveAction.present) {
      map['correctiveAction'] = Variable<bool>(correctiveAction.value);
    }
    if (auditorSignOff.present) {
      map['auditorSignOff'] = Variable<bool>(auditorSignOff.value);
    }
    if (secondarySignOff.present) {
      map['secondarySignOff'] = Variable<bool>(secondarySignOff.value);
    }
    if (entityMustAddress.present) {
      map['entityMustAddress'] = Variable<bool>(entityMustAddress.value);
    }
    if (scoringFormulaId.present) {
      map['scoringFormulaId'] = Variable<int>(scoringFormulaId.value);
    }
    if (auditMasterId.present) {
      map['auditMasterId'] = Variable<int>(auditMasterId.value);
    }
    if (autoSyncInMobile.present) {
      map['autoSyncInMobile'] = Variable<bool>(autoSyncInMobile.value);
    }
    if (versionId.present) {
      map['versionId'] = Variable<int?>(versionId.value);
    }
    if (isFailureText.present) {
      map['isFailureText'] = Variable<int>(isFailureText.value);
    }
    if (isFailureList.present) {
      map['isFailureList'] = Variable<int>(isFailureList.value);
    }
    if (isCorrectiveActionText.present) {
      map['isCorrectiveActionText'] =
          Variable<int>(isCorrectiveActionText.value);
    }
    if (isCorrectiveActionList.present) {
      map['isCorrectiveActionList'] =
          Variable<int>(isCorrectiveActionList.value);
    }
    if (defaultTaskDueDateDays.present) {
      map['defaultTaskDueDateDays'] =
          Variable<int>(defaultTaskDueDateDays.value);
    }
    if (task.present) {
      map['task'] = Variable<bool>(task.value);
    }
    if (allowDueDate.present) {
      map['allowDueDate'] = Variable<bool>(allowDueDate.value);
    }
    if (sendTaskAlertEmail.present) {
      map['sendTaskAlertEmail'] = Variable<bool>(sendTaskAlertEmail.value);
    }
    if (barcodeOrNFC.present) {
      map['barcodeOrNFC'] = Variable<int>(barcodeOrNFC.value);
    }
    if (canEdit.present) {
      map['canEdit'] = Variable<bool>(canEdit.value);
    }
    if (showScoreInMobile.present) {
      map['showScoreInMobile'] = Variable<bool>(showScoreInMobile.value);
    }
    if (isRecheck.present) {
      map['isRecheck'] = Variable<bool>(isRecheck.value);
    }
    if (isRandomization.present) {
      map['isRandomization'] = Variable<bool>(isRandomization.value);
    }
    if (isQuestionCategory.present) {
      map['isQuestionCategory'] = Variable<bool>(isQuestionCategory.value);
    }
    if (isNotifyAuditor.present) {
      map['isNotifyAuditor'] = Variable<bool>(isNotifyAuditor.value);
    }
    if (auditorDeclarationText.present) {
      map['auditorDeclarationText'] =
          Variable<String?>(auditorDeclarationText.value);
    }
    if (secondaryDeclarationText.present) {
      map['secondaryDeclarationText'] =
          Variable<String?>(secondaryDeclarationText.value);
    }
    if (isScheduling.present) {
      map['isScheduling'] = Variable<bool>(isScheduling.value);
    }
    if (isFormerData.present) {
      map['isFormerData'] = Variable<bool>(isFormerData.value);
    }
    if (isAuditQuestions.present) {
      map['isAuditQuestions'] = Variable<bool>(isAuditQuestions.value);
    }
    if (isEntitiesAuditable.present) {
      map['isEntitiesAuditable'] = Variable<bool>(isEntitiesAuditable.value);
    }
    if (isEnforceFormerAudit.present) {
      map['isEnforceFormerAudit'] = Variable<bool>(isEnforceFormerAudit.value);
    }
    if (isFlipScore.present) {
      map['isFlipScore'] = Variable<bool>(isFlipScore.value);
    }
    if (auditTracking.present) {
      map['auditTracking'] = Variable<bool>(auditTracking.value);
    }
    if (isMultipleLevelTeam.present) {
      map['isMultipleLevelTeam'] = Variable<bool>(isMultipleLevelTeam.value);
    }
    if (isTaskDistribution.present) {
      map['isTaskDistribution'] = Variable<bool>(isTaskDistribution.value);
    }
    if (approveProcessEntitiesMandatory.present) {
      map['approveProcessEntitiesMandatory'] =
          Variable<bool>(approveProcessEntitiesMandatory.value);
    }
    if (approvalProcess.present) {
      map['approvalProcess'] = Variable<bool>(approvalProcess.value);
    }
    if (submissionPasswordRequired.present) {
      map['submissionPasswordRequired'] =
          Variable<bool>(submissionPasswordRequired.value);
    }
    if (isViewOnlyFormerData.present) {
      map['isViewOnlyFormerData'] = Variable<bool>(isViewOnlyFormerData.value);
    }
    if (auditGroupId.present) {
      map['auditGroupId'] = Variable<int>(auditGroupId.value);
    }
    if (auditEndDate.present) {
      map['auditEndDate'] = Variable<DateTime?>(auditEndDate.value);
    }
    if (lastAuditResponseId.present) {
      map['lastAuditResponseId'] = Variable<int?>(lastAuditResponseId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditDetailsListCompanion(')
          ..write('userId: $userId, ')
          ..write('auditName: $auditName, ')
          ..write('auditId: $auditId, ')
          ..write('failureReason: $failureReason, ')
          ..write('correctiveAction: $correctiveAction, ')
          ..write('auditorSignOff: $auditorSignOff, ')
          ..write('secondarySignOff: $secondarySignOff, ')
          ..write('entityMustAddress: $entityMustAddress, ')
          ..write('scoringFormulaId: $scoringFormulaId, ')
          ..write('auditMasterId: $auditMasterId, ')
          ..write('autoSyncInMobile: $autoSyncInMobile, ')
          ..write('versionId: $versionId, ')
          ..write('isFailureText: $isFailureText, ')
          ..write('isFailureList: $isFailureList, ')
          ..write('isCorrectiveActionText: $isCorrectiveActionText, ')
          ..write('isCorrectiveActionList: $isCorrectiveActionList, ')
          ..write('defaultTaskDueDateDays: $defaultTaskDueDateDays, ')
          ..write('task: $task, ')
          ..write('allowDueDate: $allowDueDate, ')
          ..write('sendTaskAlertEmail: $sendTaskAlertEmail, ')
          ..write('barcodeOrNFC: $barcodeOrNFC, ')
          ..write('canEdit: $canEdit, ')
          ..write('showScoreInMobile: $showScoreInMobile, ')
          ..write('isRecheck: $isRecheck, ')
          ..write('isRandomization: $isRandomization, ')
          ..write('isQuestionCategory: $isQuestionCategory, ')
          ..write('isNotifyAuditor: $isNotifyAuditor, ')
          ..write('auditorDeclarationText: $auditorDeclarationText, ')
          ..write('secondaryDeclarationText: $secondaryDeclarationText, ')
          ..write('isScheduling: $isScheduling, ')
          ..write('isFormerData: $isFormerData, ')
          ..write('isAuditQuestions: $isAuditQuestions, ')
          ..write('isEntitiesAuditable: $isEntitiesAuditable, ')
          ..write('isEnforceFormerAudit: $isEnforceFormerAudit, ')
          ..write('isFlipScore: $isFlipScore, ')
          ..write('auditTracking: $auditTracking, ')
          ..write('isMultipleLevelTeam: $isMultipleLevelTeam, ')
          ..write('isTaskDistribution: $isTaskDistribution, ')
          ..write(
              'approveProcessEntitiesMandatory: $approveProcessEntitiesMandatory, ')
          ..write('approvalProcess: $approvalProcess, ')
          ..write('submissionPasswordRequired: $submissionPasswordRequired, ')
          ..write('isViewOnlyFormerData: $isViewOnlyFormerData, ')
          ..write('auditGroupId: $auditGroupId, ')
          ..write('auditEndDate: $auditEndDate, ')
          ..write('lastAuditResponseId: $lastAuditResponseId')
          ..write(')'))
        .toString();
  }
}

class AuditDetailsList extends Table
    with TableInfo<AuditDetailsList, AuditDetailsListData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditDetailsList(this._db, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditNameMeta = const VerificationMeta('auditName');
  late final GeneratedColumn<String?> auditName = GeneratedColumn<String?>(
      'auditName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _failureReasonMeta =
      const VerificationMeta('failureReason');
  late final GeneratedColumn<bool?> failureReason = GeneratedColumn<bool?>(
      'failureReason', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _correctiveActionMeta =
      const VerificationMeta('correctiveAction');
  late final GeneratedColumn<bool?> correctiveAction = GeneratedColumn<bool?>(
      'correctiveAction', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditorSignOffMeta =
      const VerificationMeta('auditorSignOff');
  late final GeneratedColumn<bool?> auditorSignOff = GeneratedColumn<bool?>(
      'auditorSignOff', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _secondarySignOffMeta =
      const VerificationMeta('secondarySignOff');
  late final GeneratedColumn<bool?> secondarySignOff = GeneratedColumn<bool?>(
      'secondarySignOff', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _entityMustAddressMeta =
      const VerificationMeta('entityMustAddress');
  late final GeneratedColumn<bool?> entityMustAddress = GeneratedColumn<bool?>(
      'entityMustAddress', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _scoringFormulaIdMeta =
      const VerificationMeta('scoringFormulaId');
  late final GeneratedColumn<int?> scoringFormulaId = GeneratedColumn<int?>(
      'scoringFormulaId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditMasterIdMeta =
      const VerificationMeta('auditMasterId');
  late final GeneratedColumn<int?> auditMasterId = GeneratedColumn<int?>(
      'auditMasterId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _autoSyncInMobileMeta =
      const VerificationMeta('autoSyncInMobile');
  late final GeneratedColumn<bool?> autoSyncInMobile = GeneratedColumn<bool?>(
      'autoSyncInMobile', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _versionIdMeta = const VerificationMeta('versionId');
  late final GeneratedColumn<int?> versionId = GeneratedColumn<int?>(
      'versionId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _isFailureTextMeta =
      const VerificationMeta('isFailureText');
  late final GeneratedColumn<int?> isFailureText = GeneratedColumn<int?>(
      'isFailureText', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isFailureListMeta =
      const VerificationMeta('isFailureList');
  late final GeneratedColumn<int?> isFailureList = GeneratedColumn<int?>(
      'isFailureList', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isCorrectiveActionTextMeta =
      const VerificationMeta('isCorrectiveActionText');
  late final GeneratedColumn<int?> isCorrectiveActionText =
      GeneratedColumn<int?>('isCorrectiveActionText', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _isCorrectiveActionListMeta =
      const VerificationMeta('isCorrectiveActionList');
  late final GeneratedColumn<int?> isCorrectiveActionList =
      GeneratedColumn<int?>('isCorrectiveActionList', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _defaultTaskDueDateDaysMeta =
      const VerificationMeta('defaultTaskDueDateDays');
  late final GeneratedColumn<int?> defaultTaskDueDateDays =
      GeneratedColumn<int?>('defaultTaskDueDateDays', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _taskMeta = const VerificationMeta('task');
  late final GeneratedColumn<bool?> task = GeneratedColumn<bool?>(
      'task', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _allowDueDateMeta =
      const VerificationMeta('allowDueDate');
  late final GeneratedColumn<bool?> allowDueDate = GeneratedColumn<bool?>(
      'allowDueDate', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sendTaskAlertEmailMeta =
      const VerificationMeta('sendTaskAlertEmail');
  late final GeneratedColumn<bool?> sendTaskAlertEmail = GeneratedColumn<bool?>(
      'sendTaskAlertEmail', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _barcodeOrNFCMeta =
      const VerificationMeta('barcodeOrNFC');
  late final GeneratedColumn<int?> barcodeOrNFC = GeneratedColumn<int?>(
      'barcodeOrNFC', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _canEditMeta = const VerificationMeta('canEdit');
  late final GeneratedColumn<bool?> canEdit = GeneratedColumn<bool?>(
      'canEdit', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _showScoreInMobileMeta =
      const VerificationMeta('showScoreInMobile');
  late final GeneratedColumn<bool?> showScoreInMobile = GeneratedColumn<bool?>(
      'showScoreInMobile', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isRecheckMeta = const VerificationMeta('isRecheck');
  late final GeneratedColumn<bool?> isRecheck = GeneratedColumn<bool?>(
      'isRecheck', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isRandomizationMeta =
      const VerificationMeta('isRandomization');
  late final GeneratedColumn<bool?> isRandomization = GeneratedColumn<bool?>(
      'isRandomization', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isQuestionCategoryMeta =
      const VerificationMeta('isQuestionCategory');
  late final GeneratedColumn<bool?> isQuestionCategory = GeneratedColumn<bool?>(
      'isQuestionCategory', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isNotifyAuditorMeta =
      const VerificationMeta('isNotifyAuditor');
  late final GeneratedColumn<bool?> isNotifyAuditor = GeneratedColumn<bool?>(
      'isNotifyAuditor', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditorDeclarationTextMeta =
      const VerificationMeta('auditorDeclarationText');
  late final GeneratedColumn<String?> auditorDeclarationText =
      GeneratedColumn<String?>('auditorDeclarationText', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _secondaryDeclarationTextMeta =
      const VerificationMeta('secondaryDeclarationText');
  late final GeneratedColumn<String?> secondaryDeclarationText =
      GeneratedColumn<String?>('secondaryDeclarationText', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _isSchedulingMeta =
      const VerificationMeta('isScheduling');
  late final GeneratedColumn<bool?> isScheduling = GeneratedColumn<bool?>(
      'isScheduling', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isFormerDataMeta =
      const VerificationMeta('isFormerData');
  late final GeneratedColumn<bool?> isFormerData = GeneratedColumn<bool?>(
      'isFormerData', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isAuditQuestionsMeta =
      const VerificationMeta('isAuditQuestions');
  late final GeneratedColumn<bool?> isAuditQuestions = GeneratedColumn<bool?>(
      'isAuditQuestions', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isEntitiesAuditableMeta =
      const VerificationMeta('isEntitiesAuditable');
  late final GeneratedColumn<bool?> isEntitiesAuditable =
      GeneratedColumn<bool?>('isEntitiesAuditable', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _isEnforceFormerAuditMeta =
      const VerificationMeta('isEnforceFormerAudit');
  late final GeneratedColumn<bool?> isEnforceFormerAudit =
      GeneratedColumn<bool?>('isEnforceFormerAudit', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _isFlipScoreMeta =
      const VerificationMeta('isFlipScore');
  late final GeneratedColumn<bool?> isFlipScore = GeneratedColumn<bool?>(
      'isFlipScore', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditTrackingMeta =
      const VerificationMeta('auditTracking');
  late final GeneratedColumn<bool?> auditTracking = GeneratedColumn<bool?>(
      'auditTracking', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isMultipleLevelTeamMeta =
      const VerificationMeta('isMultipleLevelTeam');
  late final GeneratedColumn<bool?> isMultipleLevelTeam =
      GeneratedColumn<bool?>('isMultipleLevelTeam', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _isTaskDistributionMeta =
      const VerificationMeta('isTaskDistribution');
  late final GeneratedColumn<bool?> isTaskDistribution = GeneratedColumn<bool?>(
      'isTaskDistribution', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _approveProcessEntitiesMandatoryMeta =
      const VerificationMeta('approveProcessEntitiesMandatory');
  late final GeneratedColumn<bool?> approveProcessEntitiesMandatory =
      GeneratedColumn<bool?>(
          'approveProcessEntitiesMandatory', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _approvalProcessMeta =
      const VerificationMeta('approvalProcess');
  late final GeneratedColumn<bool?> approvalProcess = GeneratedColumn<bool?>(
      'approvalProcess', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _submissionPasswordRequiredMeta =
      const VerificationMeta('submissionPasswordRequired');
  late final GeneratedColumn<bool?> submissionPasswordRequired =
      GeneratedColumn<bool?>('submissionPasswordRequired', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _isViewOnlyFormerDataMeta =
      const VerificationMeta('isViewOnlyFormerData');
  late final GeneratedColumn<bool?> isViewOnlyFormerData =
      GeneratedColumn<bool?>('isViewOnlyFormerData', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditGroupIdMeta =
      const VerificationMeta('auditGroupId');
  late final GeneratedColumn<int?> auditGroupId = GeneratedColumn<int?>(
      'auditGroupId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEndDateMeta =
      const VerificationMeta('auditEndDate');
  late final GeneratedColumn<DateTime?> auditEndDate =
      GeneratedColumn<DateTime?>('auditEndDate', aliasedName, true,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _lastAuditResponseIdMeta =
      const VerificationMeta('lastAuditResponseId');
  late final GeneratedColumn<int?> lastAuditResponseId = GeneratedColumn<int?>(
      'lastAuditResponseId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        auditName,
        auditId,
        failureReason,
        correctiveAction,
        auditorSignOff,
        secondarySignOff,
        entityMustAddress,
        scoringFormulaId,
        auditMasterId,
        autoSyncInMobile,
        versionId,
        isFailureText,
        isFailureList,
        isCorrectiveActionText,
        isCorrectiveActionList,
        defaultTaskDueDateDays,
        task,
        allowDueDate,
        sendTaskAlertEmail,
        barcodeOrNFC,
        canEdit,
        showScoreInMobile,
        isRecheck,
        isRandomization,
        isQuestionCategory,
        isNotifyAuditor,
        auditorDeclarationText,
        secondaryDeclarationText,
        isScheduling,
        isFormerData,
        isAuditQuestions,
        isEntitiesAuditable,
        isEnforceFormerAudit,
        isFlipScore,
        auditTracking,
        isMultipleLevelTeam,
        isTaskDistribution,
        approveProcessEntitiesMandatory,
        approvalProcess,
        submissionPasswordRequired,
        isViewOnlyFormerData,
        auditGroupId,
        auditEndDate,
        lastAuditResponseId
      ];
  @override
  String get aliasedName => _alias ?? 'AuditDetailsList';
  @override
  String get actualTableName => 'AuditDetailsList';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditDetailsListData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('auditName')) {
      context.handle(_auditNameMeta,
          auditName.isAcceptableOrUnknown(data['auditName']!, _auditNameMeta));
    } else if (isInserting) {
      context.missing(_auditNameMeta);
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    }
    if (data.containsKey('failureReason')) {
      context.handle(
          _failureReasonMeta,
          failureReason.isAcceptableOrUnknown(
              data['failureReason']!, _failureReasonMeta));
    } else if (isInserting) {
      context.missing(_failureReasonMeta);
    }
    if (data.containsKey('correctiveAction')) {
      context.handle(
          _correctiveActionMeta,
          correctiveAction.isAcceptableOrUnknown(
              data['correctiveAction']!, _correctiveActionMeta));
    } else if (isInserting) {
      context.missing(_correctiveActionMeta);
    }
    if (data.containsKey('auditorSignOff')) {
      context.handle(
          _auditorSignOffMeta,
          auditorSignOff.isAcceptableOrUnknown(
              data['auditorSignOff']!, _auditorSignOffMeta));
    } else if (isInserting) {
      context.missing(_auditorSignOffMeta);
    }
    if (data.containsKey('secondarySignOff')) {
      context.handle(
          _secondarySignOffMeta,
          secondarySignOff.isAcceptableOrUnknown(
              data['secondarySignOff']!, _secondarySignOffMeta));
    } else if (isInserting) {
      context.missing(_secondarySignOffMeta);
    }
    if (data.containsKey('entityMustAddress')) {
      context.handle(
          _entityMustAddressMeta,
          entityMustAddress.isAcceptableOrUnknown(
              data['entityMustAddress']!, _entityMustAddressMeta));
    } else if (isInserting) {
      context.missing(_entityMustAddressMeta);
    }
    if (data.containsKey('scoringFormulaId')) {
      context.handle(
          _scoringFormulaIdMeta,
          scoringFormulaId.isAcceptableOrUnknown(
              data['scoringFormulaId']!, _scoringFormulaIdMeta));
    } else if (isInserting) {
      context.missing(_scoringFormulaIdMeta);
    }
    if (data.containsKey('auditMasterId')) {
      context.handle(
          _auditMasterIdMeta,
          auditMasterId.isAcceptableOrUnknown(
              data['auditMasterId']!, _auditMasterIdMeta));
    } else if (isInserting) {
      context.missing(_auditMasterIdMeta);
    }
    if (data.containsKey('autoSyncInMobile')) {
      context.handle(
          _autoSyncInMobileMeta,
          autoSyncInMobile.isAcceptableOrUnknown(
              data['autoSyncInMobile']!, _autoSyncInMobileMeta));
    } else if (isInserting) {
      context.missing(_autoSyncInMobileMeta);
    }
    if (data.containsKey('versionId')) {
      context.handle(_versionIdMeta,
          versionId.isAcceptableOrUnknown(data['versionId']!, _versionIdMeta));
    }
    if (data.containsKey('isFailureText')) {
      context.handle(
          _isFailureTextMeta,
          isFailureText.isAcceptableOrUnknown(
              data['isFailureText']!, _isFailureTextMeta));
    } else if (isInserting) {
      context.missing(_isFailureTextMeta);
    }
    if (data.containsKey('isFailureList')) {
      context.handle(
          _isFailureListMeta,
          isFailureList.isAcceptableOrUnknown(
              data['isFailureList']!, _isFailureListMeta));
    } else if (isInserting) {
      context.missing(_isFailureListMeta);
    }
    if (data.containsKey('isCorrectiveActionText')) {
      context.handle(
          _isCorrectiveActionTextMeta,
          isCorrectiveActionText.isAcceptableOrUnknown(
              data['isCorrectiveActionText']!, _isCorrectiveActionTextMeta));
    } else if (isInserting) {
      context.missing(_isCorrectiveActionTextMeta);
    }
    if (data.containsKey('isCorrectiveActionList')) {
      context.handle(
          _isCorrectiveActionListMeta,
          isCorrectiveActionList.isAcceptableOrUnknown(
              data['isCorrectiveActionList']!, _isCorrectiveActionListMeta));
    } else if (isInserting) {
      context.missing(_isCorrectiveActionListMeta);
    }
    if (data.containsKey('defaultTaskDueDateDays')) {
      context.handle(
          _defaultTaskDueDateDaysMeta,
          defaultTaskDueDateDays.isAcceptableOrUnknown(
              data['defaultTaskDueDateDays']!, _defaultTaskDueDateDaysMeta));
    } else if (isInserting) {
      context.missing(_defaultTaskDueDateDaysMeta);
    }
    if (data.containsKey('task')) {
      context.handle(
          _taskMeta, task.isAcceptableOrUnknown(data['task']!, _taskMeta));
    } else if (isInserting) {
      context.missing(_taskMeta);
    }
    if (data.containsKey('allowDueDate')) {
      context.handle(
          _allowDueDateMeta,
          allowDueDate.isAcceptableOrUnknown(
              data['allowDueDate']!, _allowDueDateMeta));
    } else if (isInserting) {
      context.missing(_allowDueDateMeta);
    }
    if (data.containsKey('sendTaskAlertEmail')) {
      context.handle(
          _sendTaskAlertEmailMeta,
          sendTaskAlertEmail.isAcceptableOrUnknown(
              data['sendTaskAlertEmail']!, _sendTaskAlertEmailMeta));
    } else if (isInserting) {
      context.missing(_sendTaskAlertEmailMeta);
    }
    if (data.containsKey('barcodeOrNFC')) {
      context.handle(
          _barcodeOrNFCMeta,
          barcodeOrNFC.isAcceptableOrUnknown(
              data['barcodeOrNFC']!, _barcodeOrNFCMeta));
    } else if (isInserting) {
      context.missing(_barcodeOrNFCMeta);
    }
    if (data.containsKey('canEdit')) {
      context.handle(_canEditMeta,
          canEdit.isAcceptableOrUnknown(data['canEdit']!, _canEditMeta));
    } else if (isInserting) {
      context.missing(_canEditMeta);
    }
    if (data.containsKey('showScoreInMobile')) {
      context.handle(
          _showScoreInMobileMeta,
          showScoreInMobile.isAcceptableOrUnknown(
              data['showScoreInMobile']!, _showScoreInMobileMeta));
    } else if (isInserting) {
      context.missing(_showScoreInMobileMeta);
    }
    if (data.containsKey('isRecheck')) {
      context.handle(_isRecheckMeta,
          isRecheck.isAcceptableOrUnknown(data['isRecheck']!, _isRecheckMeta));
    } else if (isInserting) {
      context.missing(_isRecheckMeta);
    }
    if (data.containsKey('isRandomization')) {
      context.handle(
          _isRandomizationMeta,
          isRandomization.isAcceptableOrUnknown(
              data['isRandomization']!, _isRandomizationMeta));
    } else if (isInserting) {
      context.missing(_isRandomizationMeta);
    }
    if (data.containsKey('isQuestionCategory')) {
      context.handle(
          _isQuestionCategoryMeta,
          isQuestionCategory.isAcceptableOrUnknown(
              data['isQuestionCategory']!, _isQuestionCategoryMeta));
    } else if (isInserting) {
      context.missing(_isQuestionCategoryMeta);
    }
    if (data.containsKey('isNotifyAuditor')) {
      context.handle(
          _isNotifyAuditorMeta,
          isNotifyAuditor.isAcceptableOrUnknown(
              data['isNotifyAuditor']!, _isNotifyAuditorMeta));
    } else if (isInserting) {
      context.missing(_isNotifyAuditorMeta);
    }
    if (data.containsKey('auditorDeclarationText')) {
      context.handle(
          _auditorDeclarationTextMeta,
          auditorDeclarationText.isAcceptableOrUnknown(
              data['auditorDeclarationText']!, _auditorDeclarationTextMeta));
    }
    if (data.containsKey('secondaryDeclarationText')) {
      context.handle(
          _secondaryDeclarationTextMeta,
          secondaryDeclarationText.isAcceptableOrUnknown(
              data['secondaryDeclarationText']!,
              _secondaryDeclarationTextMeta));
    }
    if (data.containsKey('isScheduling')) {
      context.handle(
          _isSchedulingMeta,
          isScheduling.isAcceptableOrUnknown(
              data['isScheduling']!, _isSchedulingMeta));
    } else if (isInserting) {
      context.missing(_isSchedulingMeta);
    }
    if (data.containsKey('isFormerData')) {
      context.handle(
          _isFormerDataMeta,
          isFormerData.isAcceptableOrUnknown(
              data['isFormerData']!, _isFormerDataMeta));
    } else if (isInserting) {
      context.missing(_isFormerDataMeta);
    }
    if (data.containsKey('isAuditQuestions')) {
      context.handle(
          _isAuditQuestionsMeta,
          isAuditQuestions.isAcceptableOrUnknown(
              data['isAuditQuestions']!, _isAuditQuestionsMeta));
    } else if (isInserting) {
      context.missing(_isAuditQuestionsMeta);
    }
    if (data.containsKey('isEntitiesAuditable')) {
      context.handle(
          _isEntitiesAuditableMeta,
          isEntitiesAuditable.isAcceptableOrUnknown(
              data['isEntitiesAuditable']!, _isEntitiesAuditableMeta));
    } else if (isInserting) {
      context.missing(_isEntitiesAuditableMeta);
    }
    if (data.containsKey('isEnforceFormerAudit')) {
      context.handle(
          _isEnforceFormerAuditMeta,
          isEnforceFormerAudit.isAcceptableOrUnknown(
              data['isEnforceFormerAudit']!, _isEnforceFormerAuditMeta));
    } else if (isInserting) {
      context.missing(_isEnforceFormerAuditMeta);
    }
    if (data.containsKey('isFlipScore')) {
      context.handle(
          _isFlipScoreMeta,
          isFlipScore.isAcceptableOrUnknown(
              data['isFlipScore']!, _isFlipScoreMeta));
    } else if (isInserting) {
      context.missing(_isFlipScoreMeta);
    }
    if (data.containsKey('auditTracking')) {
      context.handle(
          _auditTrackingMeta,
          auditTracking.isAcceptableOrUnknown(
              data['auditTracking']!, _auditTrackingMeta));
    } else if (isInserting) {
      context.missing(_auditTrackingMeta);
    }
    if (data.containsKey('isMultipleLevelTeam')) {
      context.handle(
          _isMultipleLevelTeamMeta,
          isMultipleLevelTeam.isAcceptableOrUnknown(
              data['isMultipleLevelTeam']!, _isMultipleLevelTeamMeta));
    } else if (isInserting) {
      context.missing(_isMultipleLevelTeamMeta);
    }
    if (data.containsKey('isTaskDistribution')) {
      context.handle(
          _isTaskDistributionMeta,
          isTaskDistribution.isAcceptableOrUnknown(
              data['isTaskDistribution']!, _isTaskDistributionMeta));
    } else if (isInserting) {
      context.missing(_isTaskDistributionMeta);
    }
    if (data.containsKey('approveProcessEntitiesMandatory')) {
      context.handle(
          _approveProcessEntitiesMandatoryMeta,
          approveProcessEntitiesMandatory.isAcceptableOrUnknown(
              data['approveProcessEntitiesMandatory']!,
              _approveProcessEntitiesMandatoryMeta));
    } else if (isInserting) {
      context.missing(_approveProcessEntitiesMandatoryMeta);
    }
    if (data.containsKey('approvalProcess')) {
      context.handle(
          _approvalProcessMeta,
          approvalProcess.isAcceptableOrUnknown(
              data['approvalProcess']!, _approvalProcessMeta));
    } else if (isInserting) {
      context.missing(_approvalProcessMeta);
    }
    if (data.containsKey('submissionPasswordRequired')) {
      context.handle(
          _submissionPasswordRequiredMeta,
          submissionPasswordRequired.isAcceptableOrUnknown(
              data['submissionPasswordRequired']!,
              _submissionPasswordRequiredMeta));
    } else if (isInserting) {
      context.missing(_submissionPasswordRequiredMeta);
    }
    if (data.containsKey('isViewOnlyFormerData')) {
      context.handle(
          _isViewOnlyFormerDataMeta,
          isViewOnlyFormerData.isAcceptableOrUnknown(
              data['isViewOnlyFormerData']!, _isViewOnlyFormerDataMeta));
    } else if (isInserting) {
      context.missing(_isViewOnlyFormerDataMeta);
    }
    if (data.containsKey('auditGroupId')) {
      context.handle(
          _auditGroupIdMeta,
          auditGroupId.isAcceptableOrUnknown(
              data['auditGroupId']!, _auditGroupIdMeta));
    } else if (isInserting) {
      context.missing(_auditGroupIdMeta);
    }
    if (data.containsKey('auditEndDate')) {
      context.handle(
          _auditEndDateMeta,
          auditEndDate.isAcceptableOrUnknown(
              data['auditEndDate']!, _auditEndDateMeta));
    }
    if (data.containsKey('lastAuditResponseId')) {
      context.handle(
          _lastAuditResponseIdMeta,
          lastAuditResponseId.isAcceptableOrUnknown(
              data['lastAuditResponseId']!, _lastAuditResponseIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditId};
  @override
  AuditDetailsListData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditDetailsListData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditDetailsList createAlias(String alias) {
    return AuditDetailsList(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ScoringType extends DataClass implements Insertable<ScoringType> {
  final int scoringTypeId;
  final String scoringTypeName;
  final int applicationLanguageId;
  ScoringType(
      {required this.scoringTypeId,
      required this.scoringTypeName,
      required this.applicationLanguageId});
  factory ScoringType.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ScoringType(
      scoringTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoringTypeId'])!,
      scoringTypeName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoringTypeName'])!,
      applicationLanguageId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}applicationLanguageId'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['scoringTypeId'] = Variable<int>(scoringTypeId);
    map['scoringTypeName'] = Variable<String>(scoringTypeName);
    map['applicationLanguageId'] = Variable<int>(applicationLanguageId);
    return map;
  }

  ScoringTypesCompanion toCompanion(bool nullToAbsent) {
    return ScoringTypesCompanion(
      scoringTypeId: Value(scoringTypeId),
      scoringTypeName: Value(scoringTypeName),
      applicationLanguageId: Value(applicationLanguageId),
    );
  }

  factory ScoringType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScoringType(
      scoringTypeId: serializer.fromJson<int>(json['scoringTypeId']),
      scoringTypeName: serializer.fromJson<String>(json['scoringTypeName']),
      applicationLanguageId:
          serializer.fromJson<int>(json['applicationLanguageId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'scoringTypeId': serializer.toJson<int>(scoringTypeId),
      'scoringTypeName': serializer.toJson<String>(scoringTypeName),
      'applicationLanguageId': serializer.toJson<int>(applicationLanguageId),
    };
  }

  ScoringType copyWith(
          {int? scoringTypeId,
          String? scoringTypeName,
          int? applicationLanguageId}) =>
      ScoringType(
        scoringTypeId: scoringTypeId ?? this.scoringTypeId,
        scoringTypeName: scoringTypeName ?? this.scoringTypeName,
        applicationLanguageId:
            applicationLanguageId ?? this.applicationLanguageId,
      );
  @override
  String toString() {
    return (StringBuffer('ScoringType(')
          ..write('scoringTypeId: $scoringTypeId, ')
          ..write('scoringTypeName: $scoringTypeName, ')
          ..write('applicationLanguageId: $applicationLanguageId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(scoringTypeId, scoringTypeName, applicationLanguageId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoringType &&
          other.scoringTypeId == this.scoringTypeId &&
          other.scoringTypeName == this.scoringTypeName &&
          other.applicationLanguageId == this.applicationLanguageId);
}

class ScoringTypesCompanion extends UpdateCompanion<ScoringType> {
  final Value<int> scoringTypeId;
  final Value<String> scoringTypeName;
  final Value<int> applicationLanguageId;
  const ScoringTypesCompanion({
    this.scoringTypeId = const Value.absent(),
    this.scoringTypeName = const Value.absent(),
    this.applicationLanguageId = const Value.absent(),
  });
  ScoringTypesCompanion.insert({
    this.scoringTypeId = const Value.absent(),
    required String scoringTypeName,
    required int applicationLanguageId,
  })  : scoringTypeName = Value(scoringTypeName),
        applicationLanguageId = Value(applicationLanguageId);
  static Insertable<ScoringType> custom({
    Expression<int>? scoringTypeId,
    Expression<String>? scoringTypeName,
    Expression<int>? applicationLanguageId,
  }) {
    return RawValuesInsertable({
      if (scoringTypeId != null) 'scoringTypeId': scoringTypeId,
      if (scoringTypeName != null) 'scoringTypeName': scoringTypeName,
      if (applicationLanguageId != null)
        'applicationLanguageId': applicationLanguageId,
    });
  }

  ScoringTypesCompanion copyWith(
      {Value<int>? scoringTypeId,
      Value<String>? scoringTypeName,
      Value<int>? applicationLanguageId}) {
    return ScoringTypesCompanion(
      scoringTypeId: scoringTypeId ?? this.scoringTypeId,
      scoringTypeName: scoringTypeName ?? this.scoringTypeName,
      applicationLanguageId:
          applicationLanguageId ?? this.applicationLanguageId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (scoringTypeId.present) {
      map['scoringTypeId'] = Variable<int>(scoringTypeId.value);
    }
    if (scoringTypeName.present) {
      map['scoringTypeName'] = Variable<String>(scoringTypeName.value);
    }
    if (applicationLanguageId.present) {
      map['applicationLanguageId'] = Variable<int>(applicationLanguageId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoringTypesCompanion(')
          ..write('scoringTypeId: $scoringTypeId, ')
          ..write('scoringTypeName: $scoringTypeName, ')
          ..write('applicationLanguageId: $applicationLanguageId')
          ..write(')'))
        .toString();
  }
}

class ScoringTypes extends Table with TableInfo<ScoringTypes, ScoringType> {
  final GeneratedDatabase _db;
  final String? _alias;
  ScoringTypes(this._db, [this._alias]);
  final VerificationMeta _scoringTypeIdMeta =
      const VerificationMeta('scoringTypeId');
  late final GeneratedColumn<int?> scoringTypeId = GeneratedColumn<int?>(
      'scoringTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _scoringTypeNameMeta =
      const VerificationMeta('scoringTypeName');
  late final GeneratedColumn<String?> scoringTypeName =
      GeneratedColumn<String?>('scoringTypeName', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _applicationLanguageIdMeta =
      const VerificationMeta('applicationLanguageId');
  late final GeneratedColumn<int?> applicationLanguageId =
      GeneratedColumn<int?>('applicationLanguageId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [scoringTypeId, scoringTypeName, applicationLanguageId];
  @override
  String get aliasedName => _alias ?? 'scoringTypes';
  @override
  String get actualTableName => 'scoringTypes';
  @override
  VerificationContext validateIntegrity(Insertable<ScoringType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('scoringTypeId')) {
      context.handle(
          _scoringTypeIdMeta,
          scoringTypeId.isAcceptableOrUnknown(
              data['scoringTypeId']!, _scoringTypeIdMeta));
    }
    if (data.containsKey('scoringTypeName')) {
      context.handle(
          _scoringTypeNameMeta,
          scoringTypeName.isAcceptableOrUnknown(
              data['scoringTypeName']!, _scoringTypeNameMeta));
    } else if (isInserting) {
      context.missing(_scoringTypeNameMeta);
    }
    if (data.containsKey('applicationLanguageId')) {
      context.handle(
          _applicationLanguageIdMeta,
          applicationLanguageId.isAcceptableOrUnknown(
              data['applicationLanguageId']!, _applicationLanguageIdMeta));
    } else if (isInserting) {
      context.missing(_applicationLanguageIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {scoringTypeId};
  @override
  ScoringType map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ScoringType.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ScoringTypes createAlias(String alias) {
    return ScoringTypes(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ScoringFormulaInfoModelData extends DataClass
    implements Insertable<ScoringFormulaInfoModelData> {
  final int scoringFormulaId;
  final int scoringFormulaDetailId;
  final int scoringtypeid;
  final String shortCode;
  final int sortOrder;
  final String title;
  final int? weight;
  final bool isDefault;
  final String hexCode;
  final String fontHexCode;
  final bool isAuditQuestions;
  final int? initialAuditScore;
  ScoringFormulaInfoModelData(
      {required this.scoringFormulaId,
      required this.scoringFormulaDetailId,
      required this.scoringtypeid,
      required this.shortCode,
      required this.sortOrder,
      required this.title,
      this.weight,
      required this.isDefault,
      required this.hexCode,
      required this.fontHexCode,
      required this.isAuditQuestions,
      this.initialAuditScore});
  factory ScoringFormulaInfoModelData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ScoringFormulaInfoModelData(
      scoringFormulaId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoringFormulaId'])!,
      scoringFormulaDetailId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}scoringFormulaDetailId'])!,
      scoringtypeid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoringtypeid'])!,
      shortCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}shortCode'])!,
      sortOrder: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sortOrder'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      weight: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weight']),
      isDefault: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isDefault'])!,
      hexCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hexCode'])!,
      fontHexCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fontHexCode'])!,
      isAuditQuestions: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isAuditQuestions'])!,
      initialAuditScore: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}initialAuditScore']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['scoringFormulaId'] = Variable<int>(scoringFormulaId);
    map['scoringFormulaDetailId'] = Variable<int>(scoringFormulaDetailId);
    map['scoringtypeid'] = Variable<int>(scoringtypeid);
    map['shortCode'] = Variable<String>(shortCode);
    map['sortOrder'] = Variable<int>(sortOrder);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<int?>(weight);
    }
    map['isDefault'] = Variable<bool>(isDefault);
    map['hexCode'] = Variable<String>(hexCode);
    map['fontHexCode'] = Variable<String>(fontHexCode);
    map['isAuditQuestions'] = Variable<bool>(isAuditQuestions);
    if (!nullToAbsent || initialAuditScore != null) {
      map['initialAuditScore'] = Variable<int?>(initialAuditScore);
    }
    return map;
  }

  ScoringFormulaInfoModelCompanion toCompanion(bool nullToAbsent) {
    return ScoringFormulaInfoModelCompanion(
      scoringFormulaId: Value(scoringFormulaId),
      scoringFormulaDetailId: Value(scoringFormulaDetailId),
      scoringtypeid: Value(scoringtypeid),
      shortCode: Value(shortCode),
      sortOrder: Value(sortOrder),
      title: Value(title),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      isDefault: Value(isDefault),
      hexCode: Value(hexCode),
      fontHexCode: Value(fontHexCode),
      isAuditQuestions: Value(isAuditQuestions),
      initialAuditScore: initialAuditScore == null && nullToAbsent
          ? const Value.absent()
          : Value(initialAuditScore),
    );
  }

  factory ScoringFormulaInfoModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScoringFormulaInfoModelData(
      scoringFormulaId: serializer.fromJson<int>(json['scoringFormulaId']),
      scoringFormulaDetailId:
          serializer.fromJson<int>(json['scoringFormulaDetailId']),
      scoringtypeid: serializer.fromJson<int>(json['scoringtypeid']),
      shortCode: serializer.fromJson<String>(json['shortCode']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      title: serializer.fromJson<String>(json['title']),
      weight: serializer.fromJson<int?>(json['weight']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
      hexCode: serializer.fromJson<String>(json['hexCode']),
      fontHexCode: serializer.fromJson<String>(json['fontHexCode']),
      isAuditQuestions: serializer.fromJson<bool>(json['isAuditQuestions']),
      initialAuditScore: serializer.fromJson<int?>(json['initialAuditScore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'scoringFormulaId': serializer.toJson<int>(scoringFormulaId),
      'scoringFormulaDetailId': serializer.toJson<int>(scoringFormulaDetailId),
      'scoringtypeid': serializer.toJson<int>(scoringtypeid),
      'shortCode': serializer.toJson<String>(shortCode),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'title': serializer.toJson<String>(title),
      'weight': serializer.toJson<int?>(weight),
      'isDefault': serializer.toJson<bool>(isDefault),
      'hexCode': serializer.toJson<String>(hexCode),
      'fontHexCode': serializer.toJson<String>(fontHexCode),
      'isAuditQuestions': serializer.toJson<bool>(isAuditQuestions),
      'initialAuditScore': serializer.toJson<int?>(initialAuditScore),
    };
  }

  ScoringFormulaInfoModelData copyWith(
          {int? scoringFormulaId,
          int? scoringFormulaDetailId,
          int? scoringtypeid,
          String? shortCode,
          int? sortOrder,
          String? title,
          int? weight,
          bool? isDefault,
          String? hexCode,
          String? fontHexCode,
          bool? isAuditQuestions,
          int? initialAuditScore}) =>
      ScoringFormulaInfoModelData(
        scoringFormulaId: scoringFormulaId ?? this.scoringFormulaId,
        scoringFormulaDetailId:
            scoringFormulaDetailId ?? this.scoringFormulaDetailId,
        scoringtypeid: scoringtypeid ?? this.scoringtypeid,
        shortCode: shortCode ?? this.shortCode,
        sortOrder: sortOrder ?? this.sortOrder,
        title: title ?? this.title,
        weight: weight ?? this.weight,
        isDefault: isDefault ?? this.isDefault,
        hexCode: hexCode ?? this.hexCode,
        fontHexCode: fontHexCode ?? this.fontHexCode,
        isAuditQuestions: isAuditQuestions ?? this.isAuditQuestions,
        initialAuditScore: initialAuditScore ?? this.initialAuditScore,
      );
  @override
  String toString() {
    return (StringBuffer('ScoringFormulaInfoModelData(')
          ..write('scoringFormulaId: $scoringFormulaId, ')
          ..write('scoringFormulaDetailId: $scoringFormulaDetailId, ')
          ..write('scoringtypeid: $scoringtypeid, ')
          ..write('shortCode: $shortCode, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('title: $title, ')
          ..write('weight: $weight, ')
          ..write('isDefault: $isDefault, ')
          ..write('hexCode: $hexCode, ')
          ..write('fontHexCode: $fontHexCode, ')
          ..write('isAuditQuestions: $isAuditQuestions, ')
          ..write('initialAuditScore: $initialAuditScore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      scoringFormulaId,
      scoringFormulaDetailId,
      scoringtypeid,
      shortCode,
      sortOrder,
      title,
      weight,
      isDefault,
      hexCode,
      fontHexCode,
      isAuditQuestions,
      initialAuditScore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoringFormulaInfoModelData &&
          other.scoringFormulaId == this.scoringFormulaId &&
          other.scoringFormulaDetailId == this.scoringFormulaDetailId &&
          other.scoringtypeid == this.scoringtypeid &&
          other.shortCode == this.shortCode &&
          other.sortOrder == this.sortOrder &&
          other.title == this.title &&
          other.weight == this.weight &&
          other.isDefault == this.isDefault &&
          other.hexCode == this.hexCode &&
          other.fontHexCode == this.fontHexCode &&
          other.isAuditQuestions == this.isAuditQuestions &&
          other.initialAuditScore == this.initialAuditScore);
}

class ScoringFormulaInfoModelCompanion
    extends UpdateCompanion<ScoringFormulaInfoModelData> {
  final Value<int> scoringFormulaId;
  final Value<int> scoringFormulaDetailId;
  final Value<int> scoringtypeid;
  final Value<String> shortCode;
  final Value<int> sortOrder;
  final Value<String> title;
  final Value<int?> weight;
  final Value<bool> isDefault;
  final Value<String> hexCode;
  final Value<String> fontHexCode;
  final Value<bool> isAuditQuestions;
  final Value<int?> initialAuditScore;
  const ScoringFormulaInfoModelCompanion({
    this.scoringFormulaId = const Value.absent(),
    this.scoringFormulaDetailId = const Value.absent(),
    this.scoringtypeid = const Value.absent(),
    this.shortCode = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.title = const Value.absent(),
    this.weight = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.hexCode = const Value.absent(),
    this.fontHexCode = const Value.absent(),
    this.isAuditQuestions = const Value.absent(),
    this.initialAuditScore = const Value.absent(),
  });
  ScoringFormulaInfoModelCompanion.insert({
    required int scoringFormulaId,
    this.scoringFormulaDetailId = const Value.absent(),
    required int scoringtypeid,
    required String shortCode,
    required int sortOrder,
    required String title,
    this.weight = const Value.absent(),
    required bool isDefault,
    required String hexCode,
    required String fontHexCode,
    required bool isAuditQuestions,
    this.initialAuditScore = const Value.absent(),
  })  : scoringFormulaId = Value(scoringFormulaId),
        scoringtypeid = Value(scoringtypeid),
        shortCode = Value(shortCode),
        sortOrder = Value(sortOrder),
        title = Value(title),
        isDefault = Value(isDefault),
        hexCode = Value(hexCode),
        fontHexCode = Value(fontHexCode),
        isAuditQuestions = Value(isAuditQuestions);
  static Insertable<ScoringFormulaInfoModelData> custom({
    Expression<int>? scoringFormulaId,
    Expression<int>? scoringFormulaDetailId,
    Expression<int>? scoringtypeid,
    Expression<String>? shortCode,
    Expression<int>? sortOrder,
    Expression<String>? title,
    Expression<int?>? weight,
    Expression<bool>? isDefault,
    Expression<String>? hexCode,
    Expression<String>? fontHexCode,
    Expression<bool>? isAuditQuestions,
    Expression<int?>? initialAuditScore,
  }) {
    return RawValuesInsertable({
      if (scoringFormulaId != null) 'scoringFormulaId': scoringFormulaId,
      if (scoringFormulaDetailId != null)
        'scoringFormulaDetailId': scoringFormulaDetailId,
      if (scoringtypeid != null) 'scoringtypeid': scoringtypeid,
      if (shortCode != null) 'shortCode': shortCode,
      if (sortOrder != null) 'sortOrder': sortOrder,
      if (title != null) 'title': title,
      if (weight != null) 'weight': weight,
      if (isDefault != null) 'isDefault': isDefault,
      if (hexCode != null) 'hexCode': hexCode,
      if (fontHexCode != null) 'fontHexCode': fontHexCode,
      if (isAuditQuestions != null) 'isAuditQuestions': isAuditQuestions,
      if (initialAuditScore != null) 'initialAuditScore': initialAuditScore,
    });
  }

  ScoringFormulaInfoModelCompanion copyWith(
      {Value<int>? scoringFormulaId,
      Value<int>? scoringFormulaDetailId,
      Value<int>? scoringtypeid,
      Value<String>? shortCode,
      Value<int>? sortOrder,
      Value<String>? title,
      Value<int?>? weight,
      Value<bool>? isDefault,
      Value<String>? hexCode,
      Value<String>? fontHexCode,
      Value<bool>? isAuditQuestions,
      Value<int?>? initialAuditScore}) {
    return ScoringFormulaInfoModelCompanion(
      scoringFormulaId: scoringFormulaId ?? this.scoringFormulaId,
      scoringFormulaDetailId:
          scoringFormulaDetailId ?? this.scoringFormulaDetailId,
      scoringtypeid: scoringtypeid ?? this.scoringtypeid,
      shortCode: shortCode ?? this.shortCode,
      sortOrder: sortOrder ?? this.sortOrder,
      title: title ?? this.title,
      weight: weight ?? this.weight,
      isDefault: isDefault ?? this.isDefault,
      hexCode: hexCode ?? this.hexCode,
      fontHexCode: fontHexCode ?? this.fontHexCode,
      isAuditQuestions: isAuditQuestions ?? this.isAuditQuestions,
      initialAuditScore: initialAuditScore ?? this.initialAuditScore,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (scoringFormulaId.present) {
      map['scoringFormulaId'] = Variable<int>(scoringFormulaId.value);
    }
    if (scoringFormulaDetailId.present) {
      map['scoringFormulaDetailId'] =
          Variable<int>(scoringFormulaDetailId.value);
    }
    if (scoringtypeid.present) {
      map['scoringtypeid'] = Variable<int>(scoringtypeid.value);
    }
    if (shortCode.present) {
      map['shortCode'] = Variable<String>(shortCode.value);
    }
    if (sortOrder.present) {
      map['sortOrder'] = Variable<int>(sortOrder.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int?>(weight.value);
    }
    if (isDefault.present) {
      map['isDefault'] = Variable<bool>(isDefault.value);
    }
    if (hexCode.present) {
      map['hexCode'] = Variable<String>(hexCode.value);
    }
    if (fontHexCode.present) {
      map['fontHexCode'] = Variable<String>(fontHexCode.value);
    }
    if (isAuditQuestions.present) {
      map['isAuditQuestions'] = Variable<bool>(isAuditQuestions.value);
    }
    if (initialAuditScore.present) {
      map['initialAuditScore'] = Variable<int?>(initialAuditScore.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoringFormulaInfoModelCompanion(')
          ..write('scoringFormulaId: $scoringFormulaId, ')
          ..write('scoringFormulaDetailId: $scoringFormulaDetailId, ')
          ..write('scoringtypeid: $scoringtypeid, ')
          ..write('shortCode: $shortCode, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('title: $title, ')
          ..write('weight: $weight, ')
          ..write('isDefault: $isDefault, ')
          ..write('hexCode: $hexCode, ')
          ..write('fontHexCode: $fontHexCode, ')
          ..write('isAuditQuestions: $isAuditQuestions, ')
          ..write('initialAuditScore: $initialAuditScore')
          ..write(')'))
        .toString();
  }
}

class ScoringFormulaInfoModel extends Table
    with TableInfo<ScoringFormulaInfoModel, ScoringFormulaInfoModelData> {
  final GeneratedDatabase _db;
  final String? _alias;
  ScoringFormulaInfoModel(this._db, [this._alias]);
  final VerificationMeta _scoringFormulaIdMeta =
      const VerificationMeta('scoringFormulaId');
  late final GeneratedColumn<int?> scoringFormulaId = GeneratedColumn<int?>(
      'scoringFormulaId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _scoringFormulaDetailIdMeta =
      const VerificationMeta('scoringFormulaDetailId');
  late final GeneratedColumn<int?> scoringFormulaDetailId =
      GeneratedColumn<int?>('scoringFormulaDetailId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _scoringtypeidMeta =
      const VerificationMeta('scoringtypeid');
  late final GeneratedColumn<int?> scoringtypeid = GeneratedColumn<int?>(
      'scoringtypeid', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _shortCodeMeta = const VerificationMeta('shortCode');
  late final GeneratedColumn<String?> shortCode = GeneratedColumn<String?>(
      'shortCode', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sortOrderMeta = const VerificationMeta('sortOrder');
  late final GeneratedColumn<int?> sortOrder = GeneratedColumn<int?>(
      'sortOrder', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  late final GeneratedColumn<int?> weight = GeneratedColumn<int?>(
      'weight', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _isDefaultMeta = const VerificationMeta('isDefault');
  late final GeneratedColumn<bool?> isDefault = GeneratedColumn<bool?>(
      'isDefault', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _hexCodeMeta = const VerificationMeta('hexCode');
  late final GeneratedColumn<String?> hexCode = GeneratedColumn<String?>(
      'hexCode', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fontHexCodeMeta =
      const VerificationMeta('fontHexCode');
  late final GeneratedColumn<String?> fontHexCode = GeneratedColumn<String?>(
      'fontHexCode', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isAuditQuestionsMeta =
      const VerificationMeta('isAuditQuestions');
  late final GeneratedColumn<bool?> isAuditQuestions = GeneratedColumn<bool?>(
      'isAuditQuestions', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _initialAuditScoreMeta =
      const VerificationMeta('initialAuditScore');
  late final GeneratedColumn<int?> initialAuditScore = GeneratedColumn<int?>(
      'initialAuditScore', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        scoringFormulaId,
        scoringFormulaDetailId,
        scoringtypeid,
        shortCode,
        sortOrder,
        title,
        weight,
        isDefault,
        hexCode,
        fontHexCode,
        isAuditQuestions,
        initialAuditScore
      ];
  @override
  String get aliasedName => _alias ?? 'scoringFormulaInfoModel';
  @override
  String get actualTableName => 'scoringFormulaInfoModel';
  @override
  VerificationContext validateIntegrity(
      Insertable<ScoringFormulaInfoModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('scoringFormulaId')) {
      context.handle(
          _scoringFormulaIdMeta,
          scoringFormulaId.isAcceptableOrUnknown(
              data['scoringFormulaId']!, _scoringFormulaIdMeta));
    } else if (isInserting) {
      context.missing(_scoringFormulaIdMeta);
    }
    if (data.containsKey('scoringFormulaDetailId')) {
      context.handle(
          _scoringFormulaDetailIdMeta,
          scoringFormulaDetailId.isAcceptableOrUnknown(
              data['scoringFormulaDetailId']!, _scoringFormulaDetailIdMeta));
    }
    if (data.containsKey('scoringtypeid')) {
      context.handle(
          _scoringtypeidMeta,
          scoringtypeid.isAcceptableOrUnknown(
              data['scoringtypeid']!, _scoringtypeidMeta));
    } else if (isInserting) {
      context.missing(_scoringtypeidMeta);
    }
    if (data.containsKey('shortCode')) {
      context.handle(_shortCodeMeta,
          shortCode.isAcceptableOrUnknown(data['shortCode']!, _shortCodeMeta));
    } else if (isInserting) {
      context.missing(_shortCodeMeta);
    }
    if (data.containsKey('sortOrder')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sortOrder']!, _sortOrderMeta));
    } else if (isInserting) {
      context.missing(_sortOrderMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('isDefault')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['isDefault']!, _isDefaultMeta));
    } else if (isInserting) {
      context.missing(_isDefaultMeta);
    }
    if (data.containsKey('hexCode')) {
      context.handle(_hexCodeMeta,
          hexCode.isAcceptableOrUnknown(data['hexCode']!, _hexCodeMeta));
    } else if (isInserting) {
      context.missing(_hexCodeMeta);
    }
    if (data.containsKey('fontHexCode')) {
      context.handle(
          _fontHexCodeMeta,
          fontHexCode.isAcceptableOrUnknown(
              data['fontHexCode']!, _fontHexCodeMeta));
    } else if (isInserting) {
      context.missing(_fontHexCodeMeta);
    }
    if (data.containsKey('isAuditQuestions')) {
      context.handle(
          _isAuditQuestionsMeta,
          isAuditQuestions.isAcceptableOrUnknown(
              data['isAuditQuestions']!, _isAuditQuestionsMeta));
    } else if (isInserting) {
      context.missing(_isAuditQuestionsMeta);
    }
    if (data.containsKey('initialAuditScore')) {
      context.handle(
          _initialAuditScoreMeta,
          initialAuditScore.isAcceptableOrUnknown(
              data['initialAuditScore']!, _initialAuditScoreMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {scoringFormulaDetailId};
  @override
  ScoringFormulaInfoModelData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ScoringFormulaInfoModelData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ScoringFormulaInfoModel createAlias(String alias) {
    return ScoringFormulaInfoModel(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditScoringData extends DataClass
    implements Insertable<AuditScoringData> {
  final int auditScoringId;
  final int auditId;
  final int minScore;
  final double? maxScore;
  final String? color;
  AuditScoringData(
      {required this.auditScoringId,
      required this.auditId,
      required this.minScore,
      this.maxScore,
      this.color});
  factory AuditScoringData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditScoringData(
      auditScoringId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditScoringId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      minScore: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}minScore'])!,
      maxScore: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}maxScore']),
      color: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditScoringId'] = Variable<int>(auditScoringId);
    map['auditId'] = Variable<int>(auditId);
    map['minScore'] = Variable<int>(minScore);
    if (!nullToAbsent || maxScore != null) {
      map['maxScore'] = Variable<double?>(maxScore);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String?>(color);
    }
    return map;
  }

  AuditScoringCompanion toCompanion(bool nullToAbsent) {
    return AuditScoringCompanion(
      auditScoringId: Value(auditScoringId),
      auditId: Value(auditId),
      minScore: Value(minScore),
      maxScore: maxScore == null && nullToAbsent
          ? const Value.absent()
          : Value(maxScore),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
    );
  }

  factory AuditScoringData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditScoringData(
      auditScoringId: serializer.fromJson<int>(json['auditScoringId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      minScore: serializer.fromJson<int>(json['minScore']),
      maxScore: serializer.fromJson<double?>(json['maxScore']),
      color: serializer.fromJson<String?>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditScoringId': serializer.toJson<int>(auditScoringId),
      'auditId': serializer.toJson<int>(auditId),
      'minScore': serializer.toJson<int>(minScore),
      'maxScore': serializer.toJson<double?>(maxScore),
      'color': serializer.toJson<String?>(color),
    };
  }

  AuditScoringData copyWith(
          {int? auditScoringId,
          int? auditId,
          int? minScore,
          double? maxScore,
          String? color}) =>
      AuditScoringData(
        auditScoringId: auditScoringId ?? this.auditScoringId,
        auditId: auditId ?? this.auditId,
        minScore: minScore ?? this.minScore,
        maxScore: maxScore ?? this.maxScore,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('AuditScoringData(')
          ..write('auditScoringId: $auditScoringId, ')
          ..write('auditId: $auditId, ')
          ..write('minScore: $minScore, ')
          ..write('maxScore: $maxScore, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(auditScoringId, auditId, minScore, maxScore, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditScoringData &&
          other.auditScoringId == this.auditScoringId &&
          other.auditId == this.auditId &&
          other.minScore == this.minScore &&
          other.maxScore == this.maxScore &&
          other.color == this.color);
}

class AuditScoringCompanion extends UpdateCompanion<AuditScoringData> {
  final Value<int> auditScoringId;
  final Value<int> auditId;
  final Value<int> minScore;
  final Value<double?> maxScore;
  final Value<String?> color;
  const AuditScoringCompanion({
    this.auditScoringId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.minScore = const Value.absent(),
    this.maxScore = const Value.absent(),
    this.color = const Value.absent(),
  });
  AuditScoringCompanion.insert({
    this.auditScoringId = const Value.absent(),
    required int auditId,
    required int minScore,
    this.maxScore = const Value.absent(),
    this.color = const Value.absent(),
  })  : auditId = Value(auditId),
        minScore = Value(minScore);
  static Insertable<AuditScoringData> custom({
    Expression<int>? auditScoringId,
    Expression<int>? auditId,
    Expression<int>? minScore,
    Expression<double?>? maxScore,
    Expression<String?>? color,
  }) {
    return RawValuesInsertable({
      if (auditScoringId != null) 'auditScoringId': auditScoringId,
      if (auditId != null) 'auditId': auditId,
      if (minScore != null) 'minScore': minScore,
      if (maxScore != null) 'maxScore': maxScore,
      if (color != null) 'color': color,
    });
  }

  AuditScoringCompanion copyWith(
      {Value<int>? auditScoringId,
      Value<int>? auditId,
      Value<int>? minScore,
      Value<double?>? maxScore,
      Value<String?>? color}) {
    return AuditScoringCompanion(
      auditScoringId: auditScoringId ?? this.auditScoringId,
      auditId: auditId ?? this.auditId,
      minScore: minScore ?? this.minScore,
      maxScore: maxScore ?? this.maxScore,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditScoringId.present) {
      map['auditScoringId'] = Variable<int>(auditScoringId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (minScore.present) {
      map['minScore'] = Variable<int>(minScore.value);
    }
    if (maxScore.present) {
      map['maxScore'] = Variable<double?>(maxScore.value);
    }
    if (color.present) {
      map['color'] = Variable<String?>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditScoringCompanion(')
          ..write('auditScoringId: $auditScoringId, ')
          ..write('auditId: $auditId, ')
          ..write('minScore: $minScore, ')
          ..write('maxScore: $maxScore, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

class AuditScoring extends Table
    with TableInfo<AuditScoring, AuditScoringData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditScoring(this._db, [this._alias]);
  final VerificationMeta _auditScoringIdMeta =
      const VerificationMeta('auditScoringId');
  late final GeneratedColumn<int?> auditScoringId = GeneratedColumn<int?>(
      'auditScoringId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _minScoreMeta = const VerificationMeta('minScore');
  late final GeneratedColumn<int?> minScore = GeneratedColumn<int?>(
      'minScore', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _maxScoreMeta = const VerificationMeta('maxScore');
  late final GeneratedColumn<double?> maxScore = GeneratedColumn<double?>(
      'maxScore', aliasedName, true,
      typeName: 'REAL', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  late final GeneratedColumn<String?> color = GeneratedColumn<String?>(
      'color', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [auditScoringId, auditId, minScore, maxScore, color];
  @override
  String get aliasedName => _alias ?? 'auditScoring';
  @override
  String get actualTableName => 'auditScoring';
  @override
  VerificationContext validateIntegrity(Insertable<AuditScoringData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditScoringId')) {
      context.handle(
          _auditScoringIdMeta,
          auditScoringId.isAcceptableOrUnknown(
              data['auditScoringId']!, _auditScoringIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('minScore')) {
      context.handle(_minScoreMeta,
          minScore.isAcceptableOrUnknown(data['minScore']!, _minScoreMeta));
    } else if (isInserting) {
      context.missing(_minScoreMeta);
    }
    if (data.containsKey('maxScore')) {
      context.handle(_maxScoreMeta,
          maxScore.isAcceptableOrUnknown(data['maxScore']!, _maxScoreMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditScoringId};
  @override
  AuditScoringData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditScoringData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditScoring createAlias(String alias) {
    return AuditScoring(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditEntityTableData extends DataClass
    implements Insertable<AuditEntityTableData> {
  final int auditEntityId;
  final int auditId;
  final String auditEntityName;
  final int auditEntityTypeId;
  final int auditParentEntityId;
  final int sequenceNo;
  final DateTime? entityEndDate;
  final bool isLeafNode;
  final String? barCodeNfc;
  final int entityLevel;
  final bool? entityException;
  final String? scheduleOccurrenceIds;
  AuditEntityTableData(
      {required this.auditEntityId,
      required this.auditId,
      required this.auditEntityName,
      required this.auditEntityTypeId,
      required this.auditParentEntityId,
      required this.sequenceNo,
      this.entityEndDate,
      required this.isLeafNode,
      this.barCodeNfc,
      required this.entityLevel,
      this.entityException,
      this.scheduleOccurrenceIds});
  factory AuditEntityTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityTableData(
      auditEntityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditEntityId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      auditEntityName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditEntityName'])!,
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeId'])!,
      auditParentEntityId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditParentEntityId'])!,
      sequenceNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sequenceNo'])!,
      entityEndDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityEndDate']),
      isLeafNode: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isLeafNode'])!,
      barCodeNfc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barCodeNfc']),
      entityLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityLevel'])!,
      entityException: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityException']),
      scheduleOccurrenceIds: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ScheduleOccurrenceIds']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditEntityId'] = Variable<int>(auditEntityId);
    map['auditId'] = Variable<int>(auditId);
    map['auditEntityName'] = Variable<String>(auditEntityName);
    map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId);
    map['auditParentEntityId'] = Variable<int>(auditParentEntityId);
    map['sequenceNo'] = Variable<int>(sequenceNo);
    if (!nullToAbsent || entityEndDate != null) {
      map['entityEndDate'] = Variable<DateTime?>(entityEndDate);
    }
    map['isLeafNode'] = Variable<bool>(isLeafNode);
    if (!nullToAbsent || barCodeNfc != null) {
      map['barCodeNfc'] = Variable<String?>(barCodeNfc);
    }
    map['entityLevel'] = Variable<int>(entityLevel);
    if (!nullToAbsent || entityException != null) {
      map['entityException'] = Variable<bool?>(entityException);
    }
    if (!nullToAbsent || scheduleOccurrenceIds != null) {
      map['ScheduleOccurrenceIds'] = Variable<String?>(scheduleOccurrenceIds);
    }
    return map;
  }

  AuditEntityTableCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTableCompanion(
      auditEntityId: Value(auditEntityId),
      auditId: Value(auditId),
      auditEntityName: Value(auditEntityName),
      auditEntityTypeId: Value(auditEntityTypeId),
      auditParentEntityId: Value(auditParentEntityId),
      sequenceNo: Value(sequenceNo),
      entityEndDate: entityEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(entityEndDate),
      isLeafNode: Value(isLeafNode),
      barCodeNfc: barCodeNfc == null && nullToAbsent
          ? const Value.absent()
          : Value(barCodeNfc),
      entityLevel: Value(entityLevel),
      entityException: entityException == null && nullToAbsent
          ? const Value.absent()
          : Value(entityException),
      scheduleOccurrenceIds: scheduleOccurrenceIds == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleOccurrenceIds),
    );
  }

  factory AuditEntityTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEntityTableData(
      auditEntityId: serializer.fromJson<int>(json['auditEntityId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      auditEntityName: serializer.fromJson<String>(json['auditEntityName']),
      auditEntityTypeId: serializer.fromJson<int>(json['auditEntityTypeId']),
      auditParentEntityId:
          serializer.fromJson<int>(json['auditParentEntityId']),
      sequenceNo: serializer.fromJson<int>(json['sequenceNo']),
      entityEndDate: serializer.fromJson<DateTime?>(json['entityEndDate']),
      isLeafNode: serializer.fromJson<bool>(json['isLeafNode']),
      barCodeNfc: serializer.fromJson<String?>(json['barCodeNfc']),
      entityLevel: serializer.fromJson<int>(json['entityLevel']),
      entityException: serializer.fromJson<bool?>(json['entityException']),
      scheduleOccurrenceIds:
          serializer.fromJson<String?>(json['ScheduleOccurrenceIds']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityId': serializer.toJson<int>(auditEntityId),
      'auditId': serializer.toJson<int>(auditId),
      'auditEntityName': serializer.toJson<String>(auditEntityName),
      'auditEntityTypeId': serializer.toJson<int>(auditEntityTypeId),
      'auditParentEntityId': serializer.toJson<int>(auditParentEntityId),
      'sequenceNo': serializer.toJson<int>(sequenceNo),
      'entityEndDate': serializer.toJson<DateTime?>(entityEndDate),
      'isLeafNode': serializer.toJson<bool>(isLeafNode),
      'barCodeNfc': serializer.toJson<String?>(barCodeNfc),
      'entityLevel': serializer.toJson<int>(entityLevel),
      'entityException': serializer.toJson<bool?>(entityException),
      'ScheduleOccurrenceIds':
          serializer.toJson<String?>(scheduleOccurrenceIds),
    };
  }

  AuditEntityTableData copyWith(
          {int? auditEntityId,
          int? auditId,
          String? auditEntityName,
          int? auditEntityTypeId,
          int? auditParentEntityId,
          int? sequenceNo,
          DateTime? entityEndDate,
          bool? isLeafNode,
          String? barCodeNfc,
          int? entityLevel,
          bool? entityException,
          String? scheduleOccurrenceIds}) =>
      AuditEntityTableData(
        auditEntityId: auditEntityId ?? this.auditEntityId,
        auditId: auditId ?? this.auditId,
        auditEntityName: auditEntityName ?? this.auditEntityName,
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
        auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
        sequenceNo: sequenceNo ?? this.sequenceNo,
        entityEndDate: entityEndDate ?? this.entityEndDate,
        isLeafNode: isLeafNode ?? this.isLeafNode,
        barCodeNfc: barCodeNfc ?? this.barCodeNfc,
        entityLevel: entityLevel ?? this.entityLevel,
        entityException: entityException ?? this.entityException,
        scheduleOccurrenceIds:
            scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityTableData(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityEndDate: $entityEndDate, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('barCodeNfc: $barCodeNfc, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('entityException: $entityException, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditEntityId,
      auditId,
      auditEntityName,
      auditEntityTypeId,
      auditParentEntityId,
      sequenceNo,
      entityEndDate,
      isLeafNode,
      barCodeNfc,
      entityLevel,
      entityException,
      scheduleOccurrenceIds);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityTableData &&
          other.auditEntityId == this.auditEntityId &&
          other.auditId == this.auditId &&
          other.auditEntityName == this.auditEntityName &&
          other.auditEntityTypeId == this.auditEntityTypeId &&
          other.auditParentEntityId == this.auditParentEntityId &&
          other.sequenceNo == this.sequenceNo &&
          other.entityEndDate == this.entityEndDate &&
          other.isLeafNode == this.isLeafNode &&
          other.barCodeNfc == this.barCodeNfc &&
          other.entityLevel == this.entityLevel &&
          other.entityException == this.entityException &&
          other.scheduleOccurrenceIds == this.scheduleOccurrenceIds);
}

class AuditEntityTableCompanion extends UpdateCompanion<AuditEntityTableData> {
  final Value<int> auditEntityId;
  final Value<int> auditId;
  final Value<String> auditEntityName;
  final Value<int> auditEntityTypeId;
  final Value<int> auditParentEntityId;
  final Value<int> sequenceNo;
  final Value<DateTime?> entityEndDate;
  final Value<bool> isLeafNode;
  final Value<String?> barCodeNfc;
  final Value<int> entityLevel;
  final Value<bool?> entityException;
  final Value<String?> scheduleOccurrenceIds;
  const AuditEntityTableCompanion({
    this.auditEntityId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityName = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditParentEntityId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.entityEndDate = const Value.absent(),
    this.isLeafNode = const Value.absent(),
    this.barCodeNfc = const Value.absent(),
    this.entityLevel = const Value.absent(),
    this.entityException = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
  });
  AuditEntityTableCompanion.insert({
    this.auditEntityId = const Value.absent(),
    required int auditId,
    required String auditEntityName,
    required int auditEntityTypeId,
    required int auditParentEntityId,
    required int sequenceNo,
    this.entityEndDate = const Value.absent(),
    required bool isLeafNode,
    this.barCodeNfc = const Value.absent(),
    required int entityLevel,
    this.entityException = const Value.absent(),
    this.scheduleOccurrenceIds = const Value.absent(),
  })  : auditId = Value(auditId),
        auditEntityName = Value(auditEntityName),
        auditEntityTypeId = Value(auditEntityTypeId),
        auditParentEntityId = Value(auditParentEntityId),
        sequenceNo = Value(sequenceNo),
        isLeafNode = Value(isLeafNode),
        entityLevel = Value(entityLevel);
  static Insertable<AuditEntityTableData> custom({
    Expression<int>? auditEntityId,
    Expression<int>? auditId,
    Expression<String>? auditEntityName,
    Expression<int>? auditEntityTypeId,
    Expression<int>? auditParentEntityId,
    Expression<int>? sequenceNo,
    Expression<DateTime?>? entityEndDate,
    Expression<bool>? isLeafNode,
    Expression<String?>? barCodeNfc,
    Expression<int>? entityLevel,
    Expression<bool?>? entityException,
    Expression<String?>? scheduleOccurrenceIds,
  }) {
    return RawValuesInsertable({
      if (auditEntityId != null) 'auditEntityId': auditEntityId,
      if (auditId != null) 'auditId': auditId,
      if (auditEntityName != null) 'auditEntityName': auditEntityName,
      if (auditEntityTypeId != null) 'auditEntityTypeId': auditEntityTypeId,
      if (auditParentEntityId != null)
        'auditParentEntityId': auditParentEntityId,
      if (sequenceNo != null) 'sequenceNo': sequenceNo,
      if (entityEndDate != null) 'entityEndDate': entityEndDate,
      if (isLeafNode != null) 'isLeafNode': isLeafNode,
      if (barCodeNfc != null) 'barCodeNfc': barCodeNfc,
      if (entityLevel != null) 'entityLevel': entityLevel,
      if (entityException != null) 'entityException': entityException,
      if (scheduleOccurrenceIds != null)
        'ScheduleOccurrenceIds': scheduleOccurrenceIds,
    });
  }

  AuditEntityTableCompanion copyWith(
      {Value<int>? auditEntityId,
      Value<int>? auditId,
      Value<String>? auditEntityName,
      Value<int>? auditEntityTypeId,
      Value<int>? auditParentEntityId,
      Value<int>? sequenceNo,
      Value<DateTime?>? entityEndDate,
      Value<bool>? isLeafNode,
      Value<String?>? barCodeNfc,
      Value<int>? entityLevel,
      Value<bool?>? entityException,
      Value<String?>? scheduleOccurrenceIds}) {
    return AuditEntityTableCompanion(
      auditEntityId: auditEntityId ?? this.auditEntityId,
      auditId: auditId ?? this.auditId,
      auditEntityName: auditEntityName ?? this.auditEntityName,
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      auditParentEntityId: auditParentEntityId ?? this.auditParentEntityId,
      sequenceNo: sequenceNo ?? this.sequenceNo,
      entityEndDate: entityEndDate ?? this.entityEndDate,
      isLeafNode: isLeafNode ?? this.isLeafNode,
      barCodeNfc: barCodeNfc ?? this.barCodeNfc,
      entityLevel: entityLevel ?? this.entityLevel,
      entityException: entityException ?? this.entityException,
      scheduleOccurrenceIds:
          scheduleOccurrenceIds ?? this.scheduleOccurrenceIds,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityId.present) {
      map['auditEntityId'] = Variable<int>(auditEntityId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (auditEntityName.present) {
      map['auditEntityName'] = Variable<String>(auditEntityName.value);
    }
    if (auditEntityTypeId.present) {
      map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId.value);
    }
    if (auditParentEntityId.present) {
      map['auditParentEntityId'] = Variable<int>(auditParentEntityId.value);
    }
    if (sequenceNo.present) {
      map['sequenceNo'] = Variable<int>(sequenceNo.value);
    }
    if (entityEndDate.present) {
      map['entityEndDate'] = Variable<DateTime?>(entityEndDate.value);
    }
    if (isLeafNode.present) {
      map['isLeafNode'] = Variable<bool>(isLeafNode.value);
    }
    if (barCodeNfc.present) {
      map['barCodeNfc'] = Variable<String?>(barCodeNfc.value);
    }
    if (entityLevel.present) {
      map['entityLevel'] = Variable<int>(entityLevel.value);
    }
    if (entityException.present) {
      map['entityException'] = Variable<bool?>(entityException.value);
    }
    if (scheduleOccurrenceIds.present) {
      map['ScheduleOccurrenceIds'] =
          Variable<String?>(scheduleOccurrenceIds.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTableCompanion(')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityName: $auditEntityName, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditParentEntityId: $auditParentEntityId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('entityEndDate: $entityEndDate, ')
          ..write('isLeafNode: $isLeafNode, ')
          ..write('barCodeNfc: $barCodeNfc, ')
          ..write('entityLevel: $entityLevel, ')
          ..write('entityException: $entityException, ')
          ..write('scheduleOccurrenceIds: $scheduleOccurrenceIds')
          ..write(')'))
        .toString();
  }
}

class AuditEntityTable extends Table
    with TableInfo<AuditEntityTable, AuditEntityTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditEntityTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityIdMeta =
      const VerificationMeta('auditEntityId');
  late final GeneratedColumn<int?> auditEntityId = GeneratedColumn<int?>(
      'auditEntityId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityNameMeta =
      const VerificationMeta('auditEntityName');
  late final GeneratedColumn<String?> auditEntityName =
      GeneratedColumn<String?>('auditEntityName', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'auditEntityTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditParentEntityIdMeta =
      const VerificationMeta('auditParentEntityId');
  late final GeneratedColumn<int?> auditParentEntityId = GeneratedColumn<int?>(
      'auditParentEntityId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sequenceNoMeta = const VerificationMeta('sequenceNo');
  late final GeneratedColumn<int?> sequenceNo = GeneratedColumn<int?>(
      'sequenceNo', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _entityEndDateMeta =
      const VerificationMeta('entityEndDate');
  late final GeneratedColumn<DateTime?> entityEndDate =
      GeneratedColumn<DateTime?>('entityEndDate', aliasedName, true,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: '');
  final VerificationMeta _isLeafNodeMeta = const VerificationMeta('isLeafNode');
  late final GeneratedColumn<bool?> isLeafNode = GeneratedColumn<bool?>(
      'isLeafNode', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _barCodeNfcMeta = const VerificationMeta('barCodeNfc');
  late final GeneratedColumn<String?> barCodeNfc = GeneratedColumn<String?>(
      'barCodeNfc', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _entityLevelMeta =
      const VerificationMeta('entityLevel');
  late final GeneratedColumn<int?> entityLevel = GeneratedColumn<int?>(
      'entityLevel', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _entityExceptionMeta =
      const VerificationMeta('entityException');
  late final GeneratedColumn<bool?> entityException = GeneratedColumn<bool?>(
      'entityException', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _scheduleOccurrenceIdsMeta =
      const VerificationMeta('scheduleOccurrenceIds');
  late final GeneratedColumn<String?> scheduleOccurrenceIds =
      GeneratedColumn<String?>('ScheduleOccurrenceIds', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        auditEntityId,
        auditId,
        auditEntityName,
        auditEntityTypeId,
        auditParentEntityId,
        sequenceNo,
        entityEndDate,
        isLeafNode,
        barCodeNfc,
        entityLevel,
        entityException,
        scheduleOccurrenceIds
      ];
  @override
  String get aliasedName => _alias ?? 'AuditEntityTable';
  @override
  String get actualTableName => 'AuditEntityTable';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEntityTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditEntityId')) {
      context.handle(
          _auditEntityIdMeta,
          auditEntityId.isAcceptableOrUnknown(
              data['auditEntityId']!, _auditEntityIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('auditEntityName')) {
      context.handle(
          _auditEntityNameMeta,
          auditEntityName.isAcceptableOrUnknown(
              data['auditEntityName']!, _auditEntityNameMeta));
    } else if (isInserting) {
      context.missing(_auditEntityNameMeta);
    }
    if (data.containsKey('auditEntityTypeId')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['auditEntityTypeId']!, _auditEntityTypeIdMeta));
    } else if (isInserting) {
      context.missing(_auditEntityTypeIdMeta);
    }
    if (data.containsKey('auditParentEntityId')) {
      context.handle(
          _auditParentEntityIdMeta,
          auditParentEntityId.isAcceptableOrUnknown(
              data['auditParentEntityId']!, _auditParentEntityIdMeta));
    } else if (isInserting) {
      context.missing(_auditParentEntityIdMeta);
    }
    if (data.containsKey('sequenceNo')) {
      context.handle(
          _sequenceNoMeta,
          sequenceNo.isAcceptableOrUnknown(
              data['sequenceNo']!, _sequenceNoMeta));
    } else if (isInserting) {
      context.missing(_sequenceNoMeta);
    }
    if (data.containsKey('entityEndDate')) {
      context.handle(
          _entityEndDateMeta,
          entityEndDate.isAcceptableOrUnknown(
              data['entityEndDate']!, _entityEndDateMeta));
    }
    if (data.containsKey('isLeafNode')) {
      context.handle(
          _isLeafNodeMeta,
          isLeafNode.isAcceptableOrUnknown(
              data['isLeafNode']!, _isLeafNodeMeta));
    } else if (isInserting) {
      context.missing(_isLeafNodeMeta);
    }
    if (data.containsKey('barCodeNfc')) {
      context.handle(
          _barCodeNfcMeta,
          barCodeNfc.isAcceptableOrUnknown(
              data['barCodeNfc']!, _barCodeNfcMeta));
    }
    if (data.containsKey('entityLevel')) {
      context.handle(
          _entityLevelMeta,
          entityLevel.isAcceptableOrUnknown(
              data['entityLevel']!, _entityLevelMeta));
    } else if (isInserting) {
      context.missing(_entityLevelMeta);
    }
    if (data.containsKey('entityException')) {
      context.handle(
          _entityExceptionMeta,
          entityException.isAcceptableOrUnknown(
              data['entityException']!, _entityExceptionMeta));
    }
    if (data.containsKey('ScheduleOccurrenceIds')) {
      context.handle(
          _scheduleOccurrenceIdsMeta,
          scheduleOccurrenceIds.isAcceptableOrUnknown(
              data['ScheduleOccurrenceIds']!, _scheduleOccurrenceIdsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityId};
  @override
  AuditEntityTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntityTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditEntityTable createAlias(String alias) {
    return AuditEntityTable(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditQuestionData extends DataClass
    implements Insertable<AuditQuestionData> {
  final int auditQuestionId;
  final int auditId;
  final String questionTitle;
  final int sequenceNo;
  final String description;
  final int weight;
  final int statusId;
  final String questionCategory;
  final int? questionCategoryId;
  final int? questionImageId;
  final String? imageUrl;
  AuditQuestionData(
      {required this.auditQuestionId,
      required this.auditId,
      required this.questionTitle,
      required this.sequenceNo,
      required this.description,
      required this.weight,
      required this.statusId,
      required this.questionCategory,
      this.questionCategoryId,
      this.questionImageId,
      this.imageUrl});
  factory AuditQuestionData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditQuestionData(
      auditQuestionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditQuestionId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      questionTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}questionTitle'])!,
      sequenceNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sequenceNo'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      weight: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weight'])!,
      statusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}statusId'])!,
      questionCategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}questionCategory'])!,
      questionCategoryId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}questionCategoryId']),
      questionImageId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}questionImageId']),
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}imageUrl']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditQuestionId'] = Variable<int>(auditQuestionId);
    map['auditId'] = Variable<int>(auditId);
    map['questionTitle'] = Variable<String>(questionTitle);
    map['sequenceNo'] = Variable<int>(sequenceNo);
    map['description'] = Variable<String>(description);
    map['weight'] = Variable<int>(weight);
    map['statusId'] = Variable<int>(statusId);
    map['questionCategory'] = Variable<String>(questionCategory);
    if (!nullToAbsent || questionCategoryId != null) {
      map['questionCategoryId'] = Variable<int?>(questionCategoryId);
    }
    if (!nullToAbsent || questionImageId != null) {
      map['questionImageId'] = Variable<int?>(questionImageId);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['imageUrl'] = Variable<String?>(imageUrl);
    }
    return map;
  }

  AuditQuestionCompanion toCompanion(bool nullToAbsent) {
    return AuditQuestionCompanion(
      auditQuestionId: Value(auditQuestionId),
      auditId: Value(auditId),
      questionTitle: Value(questionTitle),
      sequenceNo: Value(sequenceNo),
      description: Value(description),
      weight: Value(weight),
      statusId: Value(statusId),
      questionCategory: Value(questionCategory),
      questionCategoryId: questionCategoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(questionCategoryId),
      questionImageId: questionImageId == null && nullToAbsent
          ? const Value.absent()
          : Value(questionImageId),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
    );
  }

  factory AuditQuestionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditQuestionData(
      auditQuestionId: serializer.fromJson<int>(json['auditQuestionId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      questionTitle: serializer.fromJson<String>(json['questionTitle']),
      sequenceNo: serializer.fromJson<int>(json['sequenceNo']),
      description: serializer.fromJson<String>(json['description']),
      weight: serializer.fromJson<int>(json['weight']),
      statusId: serializer.fromJson<int>(json['statusId']),
      questionCategory: serializer.fromJson<String>(json['questionCategory']),
      questionCategoryId: serializer.fromJson<int?>(json['questionCategoryId']),
      questionImageId: serializer.fromJson<int?>(json['questionImageId']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditQuestionId': serializer.toJson<int>(auditQuestionId),
      'auditId': serializer.toJson<int>(auditId),
      'questionTitle': serializer.toJson<String>(questionTitle),
      'sequenceNo': serializer.toJson<int>(sequenceNo),
      'description': serializer.toJson<String>(description),
      'weight': serializer.toJson<int>(weight),
      'statusId': serializer.toJson<int>(statusId),
      'questionCategory': serializer.toJson<String>(questionCategory),
      'questionCategoryId': serializer.toJson<int?>(questionCategoryId),
      'questionImageId': serializer.toJson<int?>(questionImageId),
      'imageUrl': serializer.toJson<String?>(imageUrl),
    };
  }

  AuditQuestionData copyWith(
          {int? auditQuestionId,
          int? auditId,
          String? questionTitle,
          int? sequenceNo,
          String? description,
          int? weight,
          int? statusId,
          String? questionCategory,
          int? questionCategoryId,
          int? questionImageId,
          String? imageUrl}) =>
      AuditQuestionData(
        auditQuestionId: auditQuestionId ?? this.auditQuestionId,
        auditId: auditId ?? this.auditId,
        questionTitle: questionTitle ?? this.questionTitle,
        sequenceNo: sequenceNo ?? this.sequenceNo,
        description: description ?? this.description,
        weight: weight ?? this.weight,
        statusId: statusId ?? this.statusId,
        questionCategory: questionCategory ?? this.questionCategory,
        questionCategoryId: questionCategoryId ?? this.questionCategoryId,
        questionImageId: questionImageId ?? this.questionImageId,
        imageUrl: imageUrl ?? this.imageUrl,
      );
  @override
  String toString() {
    return (StringBuffer('AuditQuestionData(')
          ..write('auditQuestionId: $auditQuestionId, ')
          ..write('auditId: $auditId, ')
          ..write('questionTitle: $questionTitle, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('description: $description, ')
          ..write('weight: $weight, ')
          ..write('statusId: $statusId, ')
          ..write('questionCategory: $questionCategory, ')
          ..write('questionCategoryId: $questionCategoryId, ')
          ..write('questionImageId: $questionImageId, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditQuestionId,
      auditId,
      questionTitle,
      sequenceNo,
      description,
      weight,
      statusId,
      questionCategory,
      questionCategoryId,
      questionImageId,
      imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditQuestionData &&
          other.auditQuestionId == this.auditQuestionId &&
          other.auditId == this.auditId &&
          other.questionTitle == this.questionTitle &&
          other.sequenceNo == this.sequenceNo &&
          other.description == this.description &&
          other.weight == this.weight &&
          other.statusId == this.statusId &&
          other.questionCategory == this.questionCategory &&
          other.questionCategoryId == this.questionCategoryId &&
          other.questionImageId == this.questionImageId &&
          other.imageUrl == this.imageUrl);
}

class AuditQuestionCompanion extends UpdateCompanion<AuditQuestionData> {
  final Value<int> auditQuestionId;
  final Value<int> auditId;
  final Value<String> questionTitle;
  final Value<int> sequenceNo;
  final Value<String> description;
  final Value<int> weight;
  final Value<int> statusId;
  final Value<String> questionCategory;
  final Value<int?> questionCategoryId;
  final Value<int?> questionImageId;
  final Value<String?> imageUrl;
  const AuditQuestionCompanion({
    this.auditQuestionId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.questionTitle = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.description = const Value.absent(),
    this.weight = const Value.absent(),
    this.statusId = const Value.absent(),
    this.questionCategory = const Value.absent(),
    this.questionCategoryId = const Value.absent(),
    this.questionImageId = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  AuditQuestionCompanion.insert({
    this.auditQuestionId = const Value.absent(),
    required int auditId,
    required String questionTitle,
    required int sequenceNo,
    required String description,
    required int weight,
    required int statusId,
    required String questionCategory,
    this.questionCategoryId = const Value.absent(),
    this.questionImageId = const Value.absent(),
    this.imageUrl = const Value.absent(),
  })  : auditId = Value(auditId),
        questionTitle = Value(questionTitle),
        sequenceNo = Value(sequenceNo),
        description = Value(description),
        weight = Value(weight),
        statusId = Value(statusId),
        questionCategory = Value(questionCategory);
  static Insertable<AuditQuestionData> custom({
    Expression<int>? auditQuestionId,
    Expression<int>? auditId,
    Expression<String>? questionTitle,
    Expression<int>? sequenceNo,
    Expression<String>? description,
    Expression<int>? weight,
    Expression<int>? statusId,
    Expression<String>? questionCategory,
    Expression<int?>? questionCategoryId,
    Expression<int?>? questionImageId,
    Expression<String?>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (auditQuestionId != null) 'auditQuestionId': auditQuestionId,
      if (auditId != null) 'auditId': auditId,
      if (questionTitle != null) 'questionTitle': questionTitle,
      if (sequenceNo != null) 'sequenceNo': sequenceNo,
      if (description != null) 'description': description,
      if (weight != null) 'weight': weight,
      if (statusId != null) 'statusId': statusId,
      if (questionCategory != null) 'questionCategory': questionCategory,
      if (questionCategoryId != null) 'questionCategoryId': questionCategoryId,
      if (questionImageId != null) 'questionImageId': questionImageId,
      if (imageUrl != null) 'imageUrl': imageUrl,
    });
  }

  AuditQuestionCompanion copyWith(
      {Value<int>? auditQuestionId,
      Value<int>? auditId,
      Value<String>? questionTitle,
      Value<int>? sequenceNo,
      Value<String>? description,
      Value<int>? weight,
      Value<int>? statusId,
      Value<String>? questionCategory,
      Value<int?>? questionCategoryId,
      Value<int?>? questionImageId,
      Value<String?>? imageUrl}) {
    return AuditQuestionCompanion(
      auditQuestionId: auditQuestionId ?? this.auditQuestionId,
      auditId: auditId ?? this.auditId,
      questionTitle: questionTitle ?? this.questionTitle,
      sequenceNo: sequenceNo ?? this.sequenceNo,
      description: description ?? this.description,
      weight: weight ?? this.weight,
      statusId: statusId ?? this.statusId,
      questionCategory: questionCategory ?? this.questionCategory,
      questionCategoryId: questionCategoryId ?? this.questionCategoryId,
      questionImageId: questionImageId ?? this.questionImageId,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditQuestionId.present) {
      map['auditQuestionId'] = Variable<int>(auditQuestionId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (questionTitle.present) {
      map['questionTitle'] = Variable<String>(questionTitle.value);
    }
    if (sequenceNo.present) {
      map['sequenceNo'] = Variable<int>(sequenceNo.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (weight.present) {
      map['weight'] = Variable<int>(weight.value);
    }
    if (statusId.present) {
      map['statusId'] = Variable<int>(statusId.value);
    }
    if (questionCategory.present) {
      map['questionCategory'] = Variable<String>(questionCategory.value);
    }
    if (questionCategoryId.present) {
      map['questionCategoryId'] = Variable<int?>(questionCategoryId.value);
    }
    if (questionImageId.present) {
      map['questionImageId'] = Variable<int?>(questionImageId.value);
    }
    if (imageUrl.present) {
      map['imageUrl'] = Variable<String?>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditQuestionCompanion(')
          ..write('auditQuestionId: $auditQuestionId, ')
          ..write('auditId: $auditId, ')
          ..write('questionTitle: $questionTitle, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('description: $description, ')
          ..write('weight: $weight, ')
          ..write('statusId: $statusId, ')
          ..write('questionCategory: $questionCategory, ')
          ..write('questionCategoryId: $questionCategoryId, ')
          ..write('questionImageId: $questionImageId, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

class AuditQuestion extends Table
    with TableInfo<AuditQuestion, AuditQuestionData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditQuestion(this._db, [this._alias]);
  final VerificationMeta _auditQuestionIdMeta =
      const VerificationMeta('auditQuestionId');
  late final GeneratedColumn<int?> auditQuestionId = GeneratedColumn<int?>(
      'auditQuestionId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _questionTitleMeta =
      const VerificationMeta('questionTitle');
  late final GeneratedColumn<String?> questionTitle = GeneratedColumn<String?>(
      'questionTitle', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sequenceNoMeta = const VerificationMeta('sequenceNo');
  late final GeneratedColumn<int?> sequenceNo = GeneratedColumn<int?>(
      'sequenceNo', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  late final GeneratedColumn<int?> weight = GeneratedColumn<int?>(
      'weight', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  late final GeneratedColumn<int?> statusId = GeneratedColumn<int?>(
      'statusId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _questionCategoryMeta =
      const VerificationMeta('questionCategory');
  late final GeneratedColumn<String?> questionCategory =
      GeneratedColumn<String?>('questionCategory', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _questionCategoryIdMeta =
      const VerificationMeta('questionCategoryId');
  late final GeneratedColumn<int?> questionCategoryId = GeneratedColumn<int?>(
      'questionCategoryId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _questionImageIdMeta =
      const VerificationMeta('questionImageId');
  late final GeneratedColumn<int?> questionImageId = GeneratedColumn<int?>(
      'questionImageId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  late final GeneratedColumn<String?> imageUrl = GeneratedColumn<String?>(
      'imageUrl', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        auditQuestionId,
        auditId,
        questionTitle,
        sequenceNo,
        description,
        weight,
        statusId,
        questionCategory,
        questionCategoryId,
        questionImageId,
        imageUrl
      ];
  @override
  String get aliasedName => _alias ?? 'auditQuestion';
  @override
  String get actualTableName => 'auditQuestion';
  @override
  VerificationContext validateIntegrity(Insertable<AuditQuestionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditQuestionId')) {
      context.handle(
          _auditQuestionIdMeta,
          auditQuestionId.isAcceptableOrUnknown(
              data['auditQuestionId']!, _auditQuestionIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('questionTitle')) {
      context.handle(
          _questionTitleMeta,
          questionTitle.isAcceptableOrUnknown(
              data['questionTitle']!, _questionTitleMeta));
    } else if (isInserting) {
      context.missing(_questionTitleMeta);
    }
    if (data.containsKey('sequenceNo')) {
      context.handle(
          _sequenceNoMeta,
          sequenceNo.isAcceptableOrUnknown(
              data['sequenceNo']!, _sequenceNoMeta));
    } else if (isInserting) {
      context.missing(_sequenceNoMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    if (data.containsKey('statusId')) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableOrUnknown(data['statusId']!, _statusIdMeta));
    } else if (isInserting) {
      context.missing(_statusIdMeta);
    }
    if (data.containsKey('questionCategory')) {
      context.handle(
          _questionCategoryMeta,
          questionCategory.isAcceptableOrUnknown(
              data['questionCategory']!, _questionCategoryMeta));
    } else if (isInserting) {
      context.missing(_questionCategoryMeta);
    }
    if (data.containsKey('questionCategoryId')) {
      context.handle(
          _questionCategoryIdMeta,
          questionCategoryId.isAcceptableOrUnknown(
              data['questionCategoryId']!, _questionCategoryIdMeta));
    }
    if (data.containsKey('questionImageId')) {
      context.handle(
          _questionImageIdMeta,
          questionImageId.isAcceptableOrUnknown(
              data['questionImageId']!, _questionImageIdMeta));
    }
    if (data.containsKey('imageUrl')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['imageUrl']!, _imageUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditQuestionId};
  @override
  AuditQuestionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditQuestionData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditQuestion createAlias(String alias) {
    return AuditQuestion(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditEntityType extends DataClass implements Insertable<AuditEntityType> {
  final int auditId;
  final int auditEntityTypeId;
  final String auditEntityTypeName;
  final double? entityTypeWeight;
  AuditEntityType(
      {required this.auditId,
      required this.auditEntityTypeId,
      required this.auditEntityTypeName,
      this.entityTypeWeight});
  factory AuditEntityType.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityType(
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeId'])!,
      auditEntityTypeName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeName'])!,
      entityTypeWeight: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityTypeWeight']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditId'] = Variable<int>(auditId);
    map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId);
    map['auditEntityTypeName'] = Variable<String>(auditEntityTypeName);
    if (!nullToAbsent || entityTypeWeight != null) {
      map['entityTypeWeight'] = Variable<double?>(entityTypeWeight);
    }
    return map;
  }

  AuditEntityTypesCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTypesCompanion(
      auditId: Value(auditId),
      auditEntityTypeId: Value(auditEntityTypeId),
      auditEntityTypeName: Value(auditEntityTypeName),
      entityTypeWeight: entityTypeWeight == null && nullToAbsent
          ? const Value.absent()
          : Value(entityTypeWeight),
    );
  }

  factory AuditEntityType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEntityType(
      auditId: serializer.fromJson<int>(json['auditId']),
      auditEntityTypeId: serializer.fromJson<int>(json['auditEntityTypeId']),
      auditEntityTypeName:
          serializer.fromJson<String>(json['auditEntityTypeName']),
      entityTypeWeight: serializer.fromJson<double?>(json['entityTypeWeight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditId': serializer.toJson<int>(auditId),
      'auditEntityTypeId': serializer.toJson<int>(auditEntityTypeId),
      'auditEntityTypeName': serializer.toJson<String>(auditEntityTypeName),
      'entityTypeWeight': serializer.toJson<double?>(entityTypeWeight),
    };
  }

  AuditEntityType copyWith(
          {int? auditId,
          int? auditEntityTypeId,
          String? auditEntityTypeName,
          double? entityTypeWeight}) =>
      AuditEntityType(
        auditId: auditId ?? this.auditId,
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
        auditEntityTypeName: auditEntityTypeName ?? this.auditEntityTypeName,
        entityTypeWeight: entityTypeWeight ?? this.entityTypeWeight,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityType(')
          ..write('auditId: $auditId, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditEntityTypeName: $auditEntityTypeName, ')
          ..write('entityTypeWeight: $entityTypeWeight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditId, auditEntityTypeId, auditEntityTypeName, entityTypeWeight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityType &&
          other.auditId == this.auditId &&
          other.auditEntityTypeId == this.auditEntityTypeId &&
          other.auditEntityTypeName == this.auditEntityTypeName &&
          other.entityTypeWeight == this.entityTypeWeight);
}

class AuditEntityTypesCompanion extends UpdateCompanion<AuditEntityType> {
  final Value<int> auditId;
  final Value<int> auditEntityTypeId;
  final Value<String> auditEntityTypeName;
  final Value<double?> entityTypeWeight;
  const AuditEntityTypesCompanion({
    this.auditId = const Value.absent(),
    this.auditEntityTypeId = const Value.absent(),
    this.auditEntityTypeName = const Value.absent(),
    this.entityTypeWeight = const Value.absent(),
  });
  AuditEntityTypesCompanion.insert({
    required int auditId,
    this.auditEntityTypeId = const Value.absent(),
    required String auditEntityTypeName,
    this.entityTypeWeight = const Value.absent(),
  })  : auditId = Value(auditId),
        auditEntityTypeName = Value(auditEntityTypeName);
  static Insertable<AuditEntityType> custom({
    Expression<int>? auditId,
    Expression<int>? auditEntityTypeId,
    Expression<String>? auditEntityTypeName,
    Expression<double?>? entityTypeWeight,
  }) {
    return RawValuesInsertable({
      if (auditId != null) 'auditId': auditId,
      if (auditEntityTypeId != null) 'auditEntityTypeId': auditEntityTypeId,
      if (auditEntityTypeName != null)
        'auditEntityTypeName': auditEntityTypeName,
      if (entityTypeWeight != null) 'entityTypeWeight': entityTypeWeight,
    });
  }

  AuditEntityTypesCompanion copyWith(
      {Value<int>? auditId,
      Value<int>? auditEntityTypeId,
      Value<String>? auditEntityTypeName,
      Value<double?>? entityTypeWeight}) {
    return AuditEntityTypesCompanion(
      auditId: auditId ?? this.auditId,
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      auditEntityTypeName: auditEntityTypeName ?? this.auditEntityTypeName,
      entityTypeWeight: entityTypeWeight ?? this.entityTypeWeight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (auditEntityTypeId.present) {
      map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId.value);
    }
    if (auditEntityTypeName.present) {
      map['auditEntityTypeName'] = Variable<String>(auditEntityTypeName.value);
    }
    if (entityTypeWeight.present) {
      map['entityTypeWeight'] = Variable<double?>(entityTypeWeight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTypesCompanion(')
          ..write('auditId: $auditId, ')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditEntityTypeName: $auditEntityTypeName, ')
          ..write('entityTypeWeight: $entityTypeWeight')
          ..write(')'))
        .toString();
  }
}

class AuditEntityTypes extends Table
    with TableInfo<AuditEntityTypes, AuditEntityType> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditEntityTypes(this._db, [this._alias]);
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'auditEntityTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditEntityTypeNameMeta =
      const VerificationMeta('auditEntityTypeName');
  late final GeneratedColumn<String?> auditEntityTypeName =
      GeneratedColumn<String?>('auditEntityTypeName', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _entityTypeWeightMeta =
      const VerificationMeta('entityTypeWeight');
  late final GeneratedColumn<double?> entityTypeWeight =
      GeneratedColumn<double?>('entityTypeWeight', aliasedName, true,
          typeName: 'REAL',
          requiredDuringInsert: false,
          $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [auditId, auditEntityTypeId, auditEntityTypeName, entityTypeWeight];
  @override
  String get aliasedName => _alias ?? 'auditEntityTypes';
  @override
  String get actualTableName => 'auditEntityTypes';
  @override
  VerificationContext validateIntegrity(Insertable<AuditEntityType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('auditEntityTypeId')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['auditEntityTypeId']!, _auditEntityTypeIdMeta));
    }
    if (data.containsKey('auditEntityTypeName')) {
      context.handle(
          _auditEntityTypeNameMeta,
          auditEntityTypeName.isAcceptableOrUnknown(
              data['auditEntityTypeName']!, _auditEntityTypeNameMeta));
    } else if (isInserting) {
      context.missing(_auditEntityTypeNameMeta);
    }
    if (data.containsKey('entityTypeWeight')) {
      context.handle(
          _entityTypeWeightMeta,
          entityTypeWeight.isAcceptableOrUnknown(
              data['entityTypeWeight']!, _entityTypeWeightMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityTypeId};
  @override
  AuditEntityType map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntityType.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditEntityTypes createAlias(String alias) {
    return AuditEntityTypes(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditEntityTypeQuestion extends DataClass
    implements Insertable<AuditEntityTypeQuestion> {
  final int auditEntityTypeId;
  final int auditEntityTypeQuestionId;
  final int? auditQuestionId;
  AuditEntityTypeQuestion(
      {required this.auditEntityTypeId,
      required this.auditEntityTypeQuestionId,
      this.auditQuestionId});
  factory AuditEntityTypeQuestion.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityTypeQuestion(
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeId'])!,
      auditEntityTypeQuestionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeQuestionId'])!,
      auditQuestionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditQuestionId']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId);
    map['auditEntityTypeQuestionId'] = Variable<int>(auditEntityTypeQuestionId);
    if (!nullToAbsent || auditQuestionId != null) {
      map['auditQuestionId'] = Variable<int?>(auditQuestionId);
    }
    return map;
  }

  AuditEntityTypeQuestionsCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTypeQuestionsCompanion(
      auditEntityTypeId: Value(auditEntityTypeId),
      auditEntityTypeQuestionId: Value(auditEntityTypeQuestionId),
      auditQuestionId: auditQuestionId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditQuestionId),
    );
  }

  factory AuditEntityTypeQuestion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEntityTypeQuestion(
      auditEntityTypeId: serializer.fromJson<int>(json['auditEntityTypeId']),
      auditEntityTypeQuestionId:
          serializer.fromJson<int>(json['auditEntityTypeQuestionId']),
      auditQuestionId: serializer.fromJson<int?>(json['auditQuestionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityTypeId': serializer.toJson<int>(auditEntityTypeId),
      'auditEntityTypeQuestionId':
          serializer.toJson<int>(auditEntityTypeQuestionId),
      'auditQuestionId': serializer.toJson<int?>(auditQuestionId),
    };
  }

  AuditEntityTypeQuestion copyWith(
          {int? auditEntityTypeId,
          int? auditEntityTypeQuestionId,
          int? auditQuestionId}) =>
      AuditEntityTypeQuestion(
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
        auditEntityTypeQuestionId:
            auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
        auditQuestionId: auditQuestionId ?? this.auditQuestionId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityTypeQuestion(')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write('auditQuestionId: $auditQuestionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditEntityTypeId, auditEntityTypeQuestionId, auditQuestionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityTypeQuestion &&
          other.auditEntityTypeId == this.auditEntityTypeId &&
          other.auditEntityTypeQuestionId == this.auditEntityTypeQuestionId &&
          other.auditQuestionId == this.auditQuestionId);
}

class AuditEntityTypeQuestionsCompanion
    extends UpdateCompanion<AuditEntityTypeQuestion> {
  final Value<int> auditEntityTypeId;
  final Value<int> auditEntityTypeQuestionId;
  final Value<int?> auditQuestionId;
  const AuditEntityTypeQuestionsCompanion({
    this.auditEntityTypeId = const Value.absent(),
    this.auditEntityTypeQuestionId = const Value.absent(),
    this.auditQuestionId = const Value.absent(),
  });
  AuditEntityTypeQuestionsCompanion.insert({
    required int auditEntityTypeId,
    this.auditEntityTypeQuestionId = const Value.absent(),
    this.auditQuestionId = const Value.absent(),
  }) : auditEntityTypeId = Value(auditEntityTypeId);
  static Insertable<AuditEntityTypeQuestion> custom({
    Expression<int>? auditEntityTypeId,
    Expression<int>? auditEntityTypeQuestionId,
    Expression<int?>? auditQuestionId,
  }) {
    return RawValuesInsertable({
      if (auditEntityTypeId != null) 'auditEntityTypeId': auditEntityTypeId,
      if (auditEntityTypeQuestionId != null)
        'auditEntityTypeQuestionId': auditEntityTypeQuestionId,
      if (auditQuestionId != null) 'auditQuestionId': auditQuestionId,
    });
  }

  AuditEntityTypeQuestionsCompanion copyWith(
      {Value<int>? auditEntityTypeId,
      Value<int>? auditEntityTypeQuestionId,
      Value<int?>? auditQuestionId}) {
    return AuditEntityTypeQuestionsCompanion(
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      auditEntityTypeQuestionId:
          auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
      auditQuestionId: auditQuestionId ?? this.auditQuestionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityTypeId.present) {
      map['auditEntityTypeId'] = Variable<int>(auditEntityTypeId.value);
    }
    if (auditEntityTypeQuestionId.present) {
      map['auditEntityTypeQuestionId'] =
          Variable<int>(auditEntityTypeQuestionId.value);
    }
    if (auditQuestionId.present) {
      map['auditQuestionId'] = Variable<int?>(auditQuestionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTypeQuestionsCompanion(')
          ..write('auditEntityTypeId: $auditEntityTypeId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write('auditQuestionId: $auditQuestionId')
          ..write(')'))
        .toString();
  }
}

class AuditEntityTypeQuestions extends Table
    with TableInfo<AuditEntityTypeQuestions, AuditEntityTypeQuestion> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditEntityTypeQuestions(this._db, [this._alias]);
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'auditEntityTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityTypeQuestionIdMeta =
      const VerificationMeta('auditEntityTypeQuestionId');
  late final GeneratedColumn<int?> auditEntityTypeQuestionId =
      GeneratedColumn<int?>('auditEntityTypeQuestionId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditQuestionIdMeta =
      const VerificationMeta('auditQuestionId');
  late final GeneratedColumn<int?> auditQuestionId = GeneratedColumn<int?>(
      'auditQuestionId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [auditEntityTypeId, auditEntityTypeQuestionId, auditQuestionId];
  @override
  String get aliasedName => _alias ?? 'auditEntityTypeQuestions';
  @override
  String get actualTableName => 'auditEntityTypeQuestions';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEntityTypeQuestion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditEntityTypeId')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['auditEntityTypeId']!, _auditEntityTypeIdMeta));
    } else if (isInserting) {
      context.missing(_auditEntityTypeIdMeta);
    }
    if (data.containsKey('auditEntityTypeQuestionId')) {
      context.handle(
          _auditEntityTypeQuestionIdMeta,
          auditEntityTypeQuestionId.isAcceptableOrUnknown(
              data['auditEntityTypeQuestionId']!,
              _auditEntityTypeQuestionIdMeta));
    }
    if (data.containsKey('auditQuestionId')) {
      context.handle(
          _auditQuestionIdMeta,
          auditQuestionId.isAcceptableOrUnknown(
              data['auditQuestionId']!, _auditQuestionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityTypeQuestionId};
  @override
  AuditEntityTypeQuestion map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditEntityTypeQuestion.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditEntityTypeQuestions createAlias(String alias) {
    return AuditEntityTypeQuestions(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditCorrectiveAction extends DataClass
    implements Insertable<AuditCorrectiveAction> {
  final int auditCorrectiveActionId;
  final int auditEntityTypeQuestionId;
  final int auditQuestionCorrectiveActionId;
  final String correctiveActionTitle;
  final int auditId;
  AuditCorrectiveAction(
      {required this.auditCorrectiveActionId,
      required this.auditEntityTypeQuestionId,
      required this.auditQuestionCorrectiveActionId,
      required this.correctiveActionTitle,
      required this.auditId});
  factory AuditCorrectiveAction.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditCorrectiveAction(
      auditCorrectiveActionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditCorrectiveActionId'])!,
      auditEntityTypeQuestionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeQuestionId'])!,
      auditQuestionCorrectiveActionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditQuestionCorrectiveActionId'])!,
      correctiveActionTitle: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}correctiveActionTitle'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditCorrectiveActionId'] = Variable<int>(auditCorrectiveActionId);
    map['auditEntityTypeQuestionId'] = Variable<int>(auditEntityTypeQuestionId);
    map['auditQuestionCorrectiveActionId'] =
        Variable<int>(auditQuestionCorrectiveActionId);
    map['correctiveActionTitle'] = Variable<String>(correctiveActionTitle);
    map['auditId'] = Variable<int>(auditId);
    return map;
  }

  AuditCorrectiveActionsCompanion toCompanion(bool nullToAbsent) {
    return AuditCorrectiveActionsCompanion(
      auditCorrectiveActionId: Value(auditCorrectiveActionId),
      auditEntityTypeQuestionId: Value(auditEntityTypeQuestionId),
      auditQuestionCorrectiveActionId: Value(auditQuestionCorrectiveActionId),
      correctiveActionTitle: Value(correctiveActionTitle),
      auditId: Value(auditId),
    );
  }

  factory AuditCorrectiveAction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditCorrectiveAction(
      auditCorrectiveActionId:
          serializer.fromJson<int>(json['auditCorrectiveActionId']),
      auditEntityTypeQuestionId:
          serializer.fromJson<int>(json['auditEntityTypeQuestionId']),
      auditQuestionCorrectiveActionId:
          serializer.fromJson<int>(json['auditQuestionCorrectiveActionId']),
      correctiveActionTitle:
          serializer.fromJson<String>(json['correctiveActionTitle']),
      auditId: serializer.fromJson<int>(json['auditId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditCorrectiveActionId':
          serializer.toJson<int>(auditCorrectiveActionId),
      'auditEntityTypeQuestionId':
          serializer.toJson<int>(auditEntityTypeQuestionId),
      'auditQuestionCorrectiveActionId':
          serializer.toJson<int>(auditQuestionCorrectiveActionId),
      'correctiveActionTitle': serializer.toJson<String>(correctiveActionTitle),
      'auditId': serializer.toJson<int>(auditId),
    };
  }

  AuditCorrectiveAction copyWith(
          {int? auditCorrectiveActionId,
          int? auditEntityTypeQuestionId,
          int? auditQuestionCorrectiveActionId,
          String? correctiveActionTitle,
          int? auditId}) =>
      AuditCorrectiveAction(
        auditCorrectiveActionId:
            auditCorrectiveActionId ?? this.auditCorrectiveActionId,
        auditEntityTypeQuestionId:
            auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
        auditQuestionCorrectiveActionId: auditQuestionCorrectiveActionId ??
            this.auditQuestionCorrectiveActionId,
        correctiveActionTitle:
            correctiveActionTitle ?? this.correctiveActionTitle,
        auditId: auditId ?? this.auditId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditCorrectiveAction(')
          ..write('auditCorrectiveActionId: $auditCorrectiveActionId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write(
              'auditQuestionCorrectiveActionId: $auditQuestionCorrectiveActionId, ')
          ..write('correctiveActionTitle: $correctiveActionTitle, ')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditCorrectiveActionId,
      auditEntityTypeQuestionId,
      auditQuestionCorrectiveActionId,
      correctiveActionTitle,
      auditId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditCorrectiveAction &&
          other.auditCorrectiveActionId == this.auditCorrectiveActionId &&
          other.auditEntityTypeQuestionId == this.auditEntityTypeQuestionId &&
          other.auditQuestionCorrectiveActionId ==
              this.auditQuestionCorrectiveActionId &&
          other.correctiveActionTitle == this.correctiveActionTitle &&
          other.auditId == this.auditId);
}

class AuditCorrectiveActionsCompanion
    extends UpdateCompanion<AuditCorrectiveAction> {
  final Value<int> auditCorrectiveActionId;
  final Value<int> auditEntityTypeQuestionId;
  final Value<int> auditQuestionCorrectiveActionId;
  final Value<String> correctiveActionTitle;
  final Value<int> auditId;
  const AuditCorrectiveActionsCompanion({
    this.auditCorrectiveActionId = const Value.absent(),
    this.auditEntityTypeQuestionId = const Value.absent(),
    this.auditQuestionCorrectiveActionId = const Value.absent(),
    this.correctiveActionTitle = const Value.absent(),
    this.auditId = const Value.absent(),
  });
  AuditCorrectiveActionsCompanion.insert({
    required int auditCorrectiveActionId,
    required int auditEntityTypeQuestionId,
    required int auditQuestionCorrectiveActionId,
    required String correctiveActionTitle,
    required int auditId,
  })  : auditCorrectiveActionId = Value(auditCorrectiveActionId),
        auditEntityTypeQuestionId = Value(auditEntityTypeQuestionId),
        auditQuestionCorrectiveActionId =
            Value(auditQuestionCorrectiveActionId),
        correctiveActionTitle = Value(correctiveActionTitle),
        auditId = Value(auditId);
  static Insertable<AuditCorrectiveAction> custom({
    Expression<int>? auditCorrectiveActionId,
    Expression<int>? auditEntityTypeQuestionId,
    Expression<int>? auditQuestionCorrectiveActionId,
    Expression<String>? correctiveActionTitle,
    Expression<int>? auditId,
  }) {
    return RawValuesInsertable({
      if (auditCorrectiveActionId != null)
        'auditCorrectiveActionId': auditCorrectiveActionId,
      if (auditEntityTypeQuestionId != null)
        'auditEntityTypeQuestionId': auditEntityTypeQuestionId,
      if (auditQuestionCorrectiveActionId != null)
        'auditQuestionCorrectiveActionId': auditQuestionCorrectiveActionId,
      if (correctiveActionTitle != null)
        'correctiveActionTitle': correctiveActionTitle,
      if (auditId != null) 'auditId': auditId,
    });
  }

  AuditCorrectiveActionsCompanion copyWith(
      {Value<int>? auditCorrectiveActionId,
      Value<int>? auditEntityTypeQuestionId,
      Value<int>? auditQuestionCorrectiveActionId,
      Value<String>? correctiveActionTitle,
      Value<int>? auditId}) {
    return AuditCorrectiveActionsCompanion(
      auditCorrectiveActionId:
          auditCorrectiveActionId ?? this.auditCorrectiveActionId,
      auditEntityTypeQuestionId:
          auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
      auditQuestionCorrectiveActionId: auditQuestionCorrectiveActionId ??
          this.auditQuestionCorrectiveActionId,
      correctiveActionTitle:
          correctiveActionTitle ?? this.correctiveActionTitle,
      auditId: auditId ?? this.auditId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditCorrectiveActionId.present) {
      map['auditCorrectiveActionId'] =
          Variable<int>(auditCorrectiveActionId.value);
    }
    if (auditEntityTypeQuestionId.present) {
      map['auditEntityTypeQuestionId'] =
          Variable<int>(auditEntityTypeQuestionId.value);
    }
    if (auditQuestionCorrectiveActionId.present) {
      map['auditQuestionCorrectiveActionId'] =
          Variable<int>(auditQuestionCorrectiveActionId.value);
    }
    if (correctiveActionTitle.present) {
      map['correctiveActionTitle'] =
          Variable<String>(correctiveActionTitle.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditCorrectiveActionsCompanion(')
          ..write('auditCorrectiveActionId: $auditCorrectiveActionId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write(
              'auditQuestionCorrectiveActionId: $auditQuestionCorrectiveActionId, ')
          ..write('correctiveActionTitle: $correctiveActionTitle, ')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }
}

class AuditCorrectiveActions extends Table
    with TableInfo<AuditCorrectiveActions, AuditCorrectiveAction> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditCorrectiveActions(this._db, [this._alias]);
  final VerificationMeta _auditCorrectiveActionIdMeta =
      const VerificationMeta('auditCorrectiveActionId');
  late final GeneratedColumn<int?> auditCorrectiveActionId =
      GeneratedColumn<int?>('auditCorrectiveActionId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityTypeQuestionIdMeta =
      const VerificationMeta('auditEntityTypeQuestionId');
  late final GeneratedColumn<int?> auditEntityTypeQuestionId =
      GeneratedColumn<int?>('auditEntityTypeQuestionId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditQuestionCorrectiveActionIdMeta =
      const VerificationMeta('auditQuestionCorrectiveActionId');
  late final GeneratedColumn<int?> auditQuestionCorrectiveActionId =
      GeneratedColumn<int?>(
          'auditQuestionCorrectiveActionId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _correctiveActionTitleMeta =
      const VerificationMeta('correctiveActionTitle');
  late final GeneratedColumn<String?> correctiveActionTitle =
      GeneratedColumn<String?>('correctiveActionTitle', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        auditCorrectiveActionId,
        auditEntityTypeQuestionId,
        auditQuestionCorrectiveActionId,
        correctiveActionTitle,
        auditId
      ];
  @override
  String get aliasedName => _alias ?? 'auditCorrectiveActions';
  @override
  String get actualTableName => 'auditCorrectiveActions';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditCorrectiveAction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditCorrectiveActionId')) {
      context.handle(
          _auditCorrectiveActionIdMeta,
          auditCorrectiveActionId.isAcceptableOrUnknown(
              data['auditCorrectiveActionId']!, _auditCorrectiveActionIdMeta));
    } else if (isInserting) {
      context.missing(_auditCorrectiveActionIdMeta);
    }
    if (data.containsKey('auditEntityTypeQuestionId')) {
      context.handle(
          _auditEntityTypeQuestionIdMeta,
          auditEntityTypeQuestionId.isAcceptableOrUnknown(
              data['auditEntityTypeQuestionId']!,
              _auditEntityTypeQuestionIdMeta));
    } else if (isInserting) {
      context.missing(_auditEntityTypeQuestionIdMeta);
    }
    if (data.containsKey('auditQuestionCorrectiveActionId')) {
      context.handle(
          _auditQuestionCorrectiveActionIdMeta,
          auditQuestionCorrectiveActionId.isAcceptableOrUnknown(
              data['auditQuestionCorrectiveActionId']!,
              _auditQuestionCorrectiveActionIdMeta));
    } else if (isInserting) {
      context.missing(_auditQuestionCorrectiveActionIdMeta);
    }
    if (data.containsKey('correctiveActionTitle')) {
      context.handle(
          _correctiveActionTitleMeta,
          correctiveActionTitle.isAcceptableOrUnknown(
              data['correctiveActionTitle']!, _correctiveActionTitleMeta));
    } else if (isInserting) {
      context.missing(_correctiveActionTitleMeta);
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  AuditCorrectiveAction map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditCorrectiveAction.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditCorrectiveActions createAlias(String alias) {
    return AuditCorrectiveActions(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditFailureReasonData extends DataClass
    implements Insertable<AuditFailureReasonData> {
  final int auditQuestionFailureReasonId;
  final int auditEntityTypeQuestionId;
  final int auditFailureReasonId;
  final String failureReasonTitle;
  final int auditId;
  AuditFailureReasonData(
      {required this.auditQuestionFailureReasonId,
      required this.auditEntityTypeQuestionId,
      required this.auditFailureReasonId,
      required this.failureReasonTitle,
      required this.auditId});
  factory AuditFailureReasonData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditFailureReasonData(
      auditQuestionFailureReasonId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditQuestionFailureReasonId'])!,
      auditEntityTypeQuestionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditEntityTypeQuestionId'])!,
      auditFailureReasonId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditFailureReasonId'])!,
      failureReasonTitle: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}failureReasonTitle'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditQuestionFailureReasonId'] =
        Variable<int>(auditQuestionFailureReasonId);
    map['auditEntityTypeQuestionId'] = Variable<int>(auditEntityTypeQuestionId);
    map['auditFailureReasonId'] = Variable<int>(auditFailureReasonId);
    map['failureReasonTitle'] = Variable<String>(failureReasonTitle);
    map['auditId'] = Variable<int>(auditId);
    return map;
  }

  AuditFailureReasonCompanion toCompanion(bool nullToAbsent) {
    return AuditFailureReasonCompanion(
      auditQuestionFailureReasonId: Value(auditQuestionFailureReasonId),
      auditEntityTypeQuestionId: Value(auditEntityTypeQuestionId),
      auditFailureReasonId: Value(auditFailureReasonId),
      failureReasonTitle: Value(failureReasonTitle),
      auditId: Value(auditId),
    );
  }

  factory AuditFailureReasonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditFailureReasonData(
      auditQuestionFailureReasonId:
          serializer.fromJson<int>(json['auditQuestionFailureReasonId']),
      auditEntityTypeQuestionId:
          serializer.fromJson<int>(json['auditEntityTypeQuestionId']),
      auditFailureReasonId:
          serializer.fromJson<int>(json['auditFailureReasonId']),
      failureReasonTitle:
          serializer.fromJson<String>(json['failureReasonTitle']),
      auditId: serializer.fromJson<int>(json['auditId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditQuestionFailureReasonId':
          serializer.toJson<int>(auditQuestionFailureReasonId),
      'auditEntityTypeQuestionId':
          serializer.toJson<int>(auditEntityTypeQuestionId),
      'auditFailureReasonId': serializer.toJson<int>(auditFailureReasonId),
      'failureReasonTitle': serializer.toJson<String>(failureReasonTitle),
      'auditId': serializer.toJson<int>(auditId),
    };
  }

  AuditFailureReasonData copyWith(
          {int? auditQuestionFailureReasonId,
          int? auditEntityTypeQuestionId,
          int? auditFailureReasonId,
          String? failureReasonTitle,
          int? auditId}) =>
      AuditFailureReasonData(
        auditQuestionFailureReasonId:
            auditQuestionFailureReasonId ?? this.auditQuestionFailureReasonId,
        auditEntityTypeQuestionId:
            auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
        auditFailureReasonId: auditFailureReasonId ?? this.auditFailureReasonId,
        failureReasonTitle: failureReasonTitle ?? this.failureReasonTitle,
        auditId: auditId ?? this.auditId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditFailureReasonData(')
          ..write(
              'auditQuestionFailureReasonId: $auditQuestionFailureReasonId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write('auditFailureReasonId: $auditFailureReasonId, ')
          ..write('failureReasonTitle: $failureReasonTitle, ')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      auditQuestionFailureReasonId,
      auditEntityTypeQuestionId,
      auditFailureReasonId,
      failureReasonTitle,
      auditId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditFailureReasonData &&
          other.auditQuestionFailureReasonId ==
              this.auditQuestionFailureReasonId &&
          other.auditEntityTypeQuestionId == this.auditEntityTypeQuestionId &&
          other.auditFailureReasonId == this.auditFailureReasonId &&
          other.failureReasonTitle == this.failureReasonTitle &&
          other.auditId == this.auditId);
}

class AuditFailureReasonCompanion
    extends UpdateCompanion<AuditFailureReasonData> {
  final Value<int> auditQuestionFailureReasonId;
  final Value<int> auditEntityTypeQuestionId;
  final Value<int> auditFailureReasonId;
  final Value<String> failureReasonTitle;
  final Value<int> auditId;
  const AuditFailureReasonCompanion({
    this.auditQuestionFailureReasonId = const Value.absent(),
    this.auditEntityTypeQuestionId = const Value.absent(),
    this.auditFailureReasonId = const Value.absent(),
    this.failureReasonTitle = const Value.absent(),
    this.auditId = const Value.absent(),
  });
  AuditFailureReasonCompanion.insert({
    this.auditQuestionFailureReasonId = const Value.absent(),
    required int auditEntityTypeQuestionId,
    required int auditFailureReasonId,
    required String failureReasonTitle,
    required int auditId,
  })  : auditEntityTypeQuestionId = Value(auditEntityTypeQuestionId),
        auditFailureReasonId = Value(auditFailureReasonId),
        failureReasonTitle = Value(failureReasonTitle),
        auditId = Value(auditId);
  static Insertable<AuditFailureReasonData> custom({
    Expression<int>? auditQuestionFailureReasonId,
    Expression<int>? auditEntityTypeQuestionId,
    Expression<int>? auditFailureReasonId,
    Expression<String>? failureReasonTitle,
    Expression<int>? auditId,
  }) {
    return RawValuesInsertable({
      if (auditQuestionFailureReasonId != null)
        'auditQuestionFailureReasonId': auditQuestionFailureReasonId,
      if (auditEntityTypeQuestionId != null)
        'auditEntityTypeQuestionId': auditEntityTypeQuestionId,
      if (auditFailureReasonId != null)
        'auditFailureReasonId': auditFailureReasonId,
      if (failureReasonTitle != null) 'failureReasonTitle': failureReasonTitle,
      if (auditId != null) 'auditId': auditId,
    });
  }

  AuditFailureReasonCompanion copyWith(
      {Value<int>? auditQuestionFailureReasonId,
      Value<int>? auditEntityTypeQuestionId,
      Value<int>? auditFailureReasonId,
      Value<String>? failureReasonTitle,
      Value<int>? auditId}) {
    return AuditFailureReasonCompanion(
      auditQuestionFailureReasonId:
          auditQuestionFailureReasonId ?? this.auditQuestionFailureReasonId,
      auditEntityTypeQuestionId:
          auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
      auditFailureReasonId: auditFailureReasonId ?? this.auditFailureReasonId,
      failureReasonTitle: failureReasonTitle ?? this.failureReasonTitle,
      auditId: auditId ?? this.auditId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditQuestionFailureReasonId.present) {
      map['auditQuestionFailureReasonId'] =
          Variable<int>(auditQuestionFailureReasonId.value);
    }
    if (auditEntityTypeQuestionId.present) {
      map['auditEntityTypeQuestionId'] =
          Variable<int>(auditEntityTypeQuestionId.value);
    }
    if (auditFailureReasonId.present) {
      map['auditFailureReasonId'] = Variable<int>(auditFailureReasonId.value);
    }
    if (failureReasonTitle.present) {
      map['failureReasonTitle'] = Variable<String>(failureReasonTitle.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditFailureReasonCompanion(')
          ..write(
              'auditQuestionFailureReasonId: $auditQuestionFailureReasonId, ')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId, ')
          ..write('auditFailureReasonId: $auditFailureReasonId, ')
          ..write('failureReasonTitle: $failureReasonTitle, ')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }
}

class AuditFailureReason extends Table
    with TableInfo<AuditFailureReason, AuditFailureReasonData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditFailureReason(this._db, [this._alias]);
  final VerificationMeta _auditQuestionFailureReasonIdMeta =
      const VerificationMeta('auditQuestionFailureReasonId');
  late final GeneratedColumn<int?> auditQuestionFailureReasonId =
      GeneratedColumn<int?>('auditQuestionFailureReasonId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditEntityTypeQuestionIdMeta =
      const VerificationMeta('auditEntityTypeQuestionId');
  late final GeneratedColumn<int?> auditEntityTypeQuestionId =
      GeneratedColumn<int?>('auditEntityTypeQuestionId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditFailureReasonIdMeta =
      const VerificationMeta('auditFailureReasonId');
  late final GeneratedColumn<int?> auditFailureReasonId = GeneratedColumn<int?>(
      'auditFailureReasonId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _failureReasonTitleMeta =
      const VerificationMeta('failureReasonTitle');
  late final GeneratedColumn<String?> failureReasonTitle =
      GeneratedColumn<String?>('failureReasonTitle', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        auditQuestionFailureReasonId,
        auditEntityTypeQuestionId,
        auditFailureReasonId,
        failureReasonTitle,
        auditId
      ];
  @override
  String get aliasedName => _alias ?? 'auditFailureReason';
  @override
  String get actualTableName => 'auditFailureReason';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditFailureReasonData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditQuestionFailureReasonId')) {
      context.handle(
          _auditQuestionFailureReasonIdMeta,
          auditQuestionFailureReasonId.isAcceptableOrUnknown(
              data['auditQuestionFailureReasonId']!,
              _auditQuestionFailureReasonIdMeta));
    }
    if (data.containsKey('auditEntityTypeQuestionId')) {
      context.handle(
          _auditEntityTypeQuestionIdMeta,
          auditEntityTypeQuestionId.isAcceptableOrUnknown(
              data['auditEntityTypeQuestionId']!,
              _auditEntityTypeQuestionIdMeta));
    } else if (isInserting) {
      context.missing(_auditEntityTypeQuestionIdMeta);
    }
    if (data.containsKey('auditFailureReasonId')) {
      context.handle(
          _auditFailureReasonIdMeta,
          auditFailureReasonId.isAcceptableOrUnknown(
              data['auditFailureReasonId']!, _auditFailureReasonIdMeta));
    } else if (isInserting) {
      context.missing(_auditFailureReasonIdMeta);
    }
    if (data.containsKey('failureReasonTitle')) {
      context.handle(
          _failureReasonTitleMeta,
          failureReasonTitle.isAcceptableOrUnknown(
              data['failureReasonTitle']!, _failureReasonTitleMeta));
    } else if (isInserting) {
      context.missing(_failureReasonTitleMeta);
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditQuestionFailureReasonId};
  @override
  AuditFailureReasonData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditFailureReasonData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditFailureReason createAlias(String alias) {
    return AuditFailureReason(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditAdditionalField extends DataClass
    implements Insertable<AuditAdditionalField> {
  final int additionalFieldId;
  final int auditId;
  final String fieldName;
  final int fieldTypeId;
  final int? displayPosition;
  final bool isMandatory;
  final bool? isPreDisplay;
  final int levelTypeId;
  final int? auditQuestionId;
  final int sequenceNo;
  final bool isMask;
  final String? maskPattent;
  final String? maskPlaceholder;
  AuditAdditionalField(
      {required this.additionalFieldId,
      required this.auditId,
      required this.fieldName,
      required this.fieldTypeId,
      this.displayPosition,
      required this.isMandatory,
      this.isPreDisplay,
      required this.levelTypeId,
      this.auditQuestionId,
      required this.sequenceNo,
      required this.isMask,
      this.maskPattent,
      this.maskPlaceholder});
  factory AuditAdditionalField.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalField(
      additionalFieldId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      fieldName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fieldName'])!,
      fieldTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fieldTypeId'])!,
      displayPosition: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}displayPosition']),
      isMandatory: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isMandatory'])!,
      isPreDisplay: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isPreDisplay']),
      levelTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}levelTypeId'])!,
      auditQuestionId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditQuestionId']),
      sequenceNo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sequenceNo'])!,
      isMask: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isMask'])!,
      maskPattent: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}maskPattent']),
      maskPlaceholder: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}maskPlaceholder']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additionalFieldId'] = Variable<int>(additionalFieldId);
    map['auditId'] = Variable<int>(auditId);
    map['fieldName'] = Variable<String>(fieldName);
    map['fieldTypeId'] = Variable<int>(fieldTypeId);
    if (!nullToAbsent || displayPosition != null) {
      map['displayPosition'] = Variable<int?>(displayPosition);
    }
    map['isMandatory'] = Variable<bool>(isMandatory);
    if (!nullToAbsent || isPreDisplay != null) {
      map['isPreDisplay'] = Variable<bool?>(isPreDisplay);
    }
    map['levelTypeId'] = Variable<int>(levelTypeId);
    if (!nullToAbsent || auditQuestionId != null) {
      map['auditQuestionId'] = Variable<int?>(auditQuestionId);
    }
    map['sequenceNo'] = Variable<int>(sequenceNo);
    map['isMask'] = Variable<bool>(isMask);
    if (!nullToAbsent || maskPattent != null) {
      map['maskPattent'] = Variable<String?>(maskPattent);
    }
    if (!nullToAbsent || maskPlaceholder != null) {
      map['maskPlaceholder'] = Variable<String?>(maskPlaceholder);
    }
    return map;
  }

  AuditAdditionalFieldsCompanion toCompanion(bool nullToAbsent) {
    return AuditAdditionalFieldsCompanion(
      additionalFieldId: Value(additionalFieldId),
      auditId: Value(auditId),
      fieldName: Value(fieldName),
      fieldTypeId: Value(fieldTypeId),
      displayPosition: displayPosition == null && nullToAbsent
          ? const Value.absent()
          : Value(displayPosition),
      isMandatory: Value(isMandatory),
      isPreDisplay: isPreDisplay == null && nullToAbsent
          ? const Value.absent()
          : Value(isPreDisplay),
      levelTypeId: Value(levelTypeId),
      auditQuestionId: auditQuestionId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditQuestionId),
      sequenceNo: Value(sequenceNo),
      isMask: Value(isMask),
      maskPattent: maskPattent == null && nullToAbsent
          ? const Value.absent()
          : Value(maskPattent),
      maskPlaceholder: maskPlaceholder == null && nullToAbsent
          ? const Value.absent()
          : Value(maskPlaceholder),
    );
  }

  factory AuditAdditionalField.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditAdditionalField(
      additionalFieldId: serializer.fromJson<int>(json['additionalFieldId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      fieldName: serializer.fromJson<String>(json['fieldName']),
      fieldTypeId: serializer.fromJson<int>(json['fieldTypeId']),
      displayPosition: serializer.fromJson<int?>(json['displayPosition']),
      isMandatory: serializer.fromJson<bool>(json['isMandatory']),
      isPreDisplay: serializer.fromJson<bool?>(json['isPreDisplay']),
      levelTypeId: serializer.fromJson<int>(json['levelTypeId']),
      auditQuestionId: serializer.fromJson<int?>(json['auditQuestionId']),
      sequenceNo: serializer.fromJson<int>(json['sequenceNo']),
      isMask: serializer.fromJson<bool>(json['isMask']),
      maskPattent: serializer.fromJson<String?>(json['maskPattent']),
      maskPlaceholder: serializer.fromJson<String?>(json['maskPlaceholder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldId': serializer.toJson<int>(additionalFieldId),
      'auditId': serializer.toJson<int>(auditId),
      'fieldName': serializer.toJson<String>(fieldName),
      'fieldTypeId': serializer.toJson<int>(fieldTypeId),
      'displayPosition': serializer.toJson<int?>(displayPosition),
      'isMandatory': serializer.toJson<bool>(isMandatory),
      'isPreDisplay': serializer.toJson<bool?>(isPreDisplay),
      'levelTypeId': serializer.toJson<int>(levelTypeId),
      'auditQuestionId': serializer.toJson<int?>(auditQuestionId),
      'sequenceNo': serializer.toJson<int>(sequenceNo),
      'isMask': serializer.toJson<bool>(isMask),
      'maskPattent': serializer.toJson<String?>(maskPattent),
      'maskPlaceholder': serializer.toJson<String?>(maskPlaceholder),
    };
  }

  AuditAdditionalField copyWith(
          {int? additionalFieldId,
          int? auditId,
          String? fieldName,
          int? fieldTypeId,
          int? displayPosition,
          bool? isMandatory,
          bool? isPreDisplay,
          int? levelTypeId,
          int? auditQuestionId,
          int? sequenceNo,
          bool? isMask,
          String? maskPattent,
          String? maskPlaceholder}) =>
      AuditAdditionalField(
        additionalFieldId: additionalFieldId ?? this.additionalFieldId,
        auditId: auditId ?? this.auditId,
        fieldName: fieldName ?? this.fieldName,
        fieldTypeId: fieldTypeId ?? this.fieldTypeId,
        displayPosition: displayPosition ?? this.displayPosition,
        isMandatory: isMandatory ?? this.isMandatory,
        isPreDisplay: isPreDisplay ?? this.isPreDisplay,
        levelTypeId: levelTypeId ?? this.levelTypeId,
        auditQuestionId: auditQuestionId ?? this.auditQuestionId,
        sequenceNo: sequenceNo ?? this.sequenceNo,
        isMask: isMask ?? this.isMask,
        maskPattent: maskPattent ?? this.maskPattent,
        maskPlaceholder: maskPlaceholder ?? this.maskPlaceholder,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalField(')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('auditId: $auditId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldTypeId: $fieldTypeId, ')
          ..write('displayPosition: $displayPosition, ')
          ..write('isMandatory: $isMandatory, ')
          ..write('isPreDisplay: $isPreDisplay, ')
          ..write('levelTypeId: $levelTypeId, ')
          ..write('auditQuestionId: $auditQuestionId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('isMask: $isMask, ')
          ..write('maskPattent: $maskPattent, ')
          ..write('maskPlaceholder: $maskPlaceholder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      additionalFieldId,
      auditId,
      fieldName,
      fieldTypeId,
      displayPosition,
      isMandatory,
      isPreDisplay,
      levelTypeId,
      auditQuestionId,
      sequenceNo,
      isMask,
      maskPattent,
      maskPlaceholder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalField &&
          other.additionalFieldId == this.additionalFieldId &&
          other.auditId == this.auditId &&
          other.fieldName == this.fieldName &&
          other.fieldTypeId == this.fieldTypeId &&
          other.displayPosition == this.displayPosition &&
          other.isMandatory == this.isMandatory &&
          other.isPreDisplay == this.isPreDisplay &&
          other.levelTypeId == this.levelTypeId &&
          other.auditQuestionId == this.auditQuestionId &&
          other.sequenceNo == this.sequenceNo &&
          other.isMask == this.isMask &&
          other.maskPattent == this.maskPattent &&
          other.maskPlaceholder == this.maskPlaceholder);
}

class AuditAdditionalFieldsCompanion
    extends UpdateCompanion<AuditAdditionalField> {
  final Value<int> additionalFieldId;
  final Value<int> auditId;
  final Value<String> fieldName;
  final Value<int> fieldTypeId;
  final Value<int?> displayPosition;
  final Value<bool> isMandatory;
  final Value<bool?> isPreDisplay;
  final Value<int> levelTypeId;
  final Value<int?> auditQuestionId;
  final Value<int> sequenceNo;
  final Value<bool> isMask;
  final Value<String?> maskPattent;
  final Value<String?> maskPlaceholder;
  const AuditAdditionalFieldsCompanion({
    this.additionalFieldId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.fieldTypeId = const Value.absent(),
    this.displayPosition = const Value.absent(),
    this.isMandatory = const Value.absent(),
    this.isPreDisplay = const Value.absent(),
    this.levelTypeId = const Value.absent(),
    this.auditQuestionId = const Value.absent(),
    this.sequenceNo = const Value.absent(),
    this.isMask = const Value.absent(),
    this.maskPattent = const Value.absent(),
    this.maskPlaceholder = const Value.absent(),
  });
  AuditAdditionalFieldsCompanion.insert({
    this.additionalFieldId = const Value.absent(),
    required int auditId,
    required String fieldName,
    required int fieldTypeId,
    this.displayPosition = const Value.absent(),
    required bool isMandatory,
    this.isPreDisplay = const Value.absent(),
    required int levelTypeId,
    this.auditQuestionId = const Value.absent(),
    required int sequenceNo,
    required bool isMask,
    this.maskPattent = const Value.absent(),
    this.maskPlaceholder = const Value.absent(),
  })  : auditId = Value(auditId),
        fieldName = Value(fieldName),
        fieldTypeId = Value(fieldTypeId),
        isMandatory = Value(isMandatory),
        levelTypeId = Value(levelTypeId),
        sequenceNo = Value(sequenceNo),
        isMask = Value(isMask);
  static Insertable<AuditAdditionalField> custom({
    Expression<int>? additionalFieldId,
    Expression<int>? auditId,
    Expression<String>? fieldName,
    Expression<int>? fieldTypeId,
    Expression<int?>? displayPosition,
    Expression<bool>? isMandatory,
    Expression<bool?>? isPreDisplay,
    Expression<int>? levelTypeId,
    Expression<int?>? auditQuestionId,
    Expression<int>? sequenceNo,
    Expression<bool>? isMask,
    Expression<String?>? maskPattent,
    Expression<String?>? maskPlaceholder,
  }) {
    return RawValuesInsertable({
      if (additionalFieldId != null) 'additionalFieldId': additionalFieldId,
      if (auditId != null) 'auditId': auditId,
      if (fieldName != null) 'fieldName': fieldName,
      if (fieldTypeId != null) 'fieldTypeId': fieldTypeId,
      if (displayPosition != null) 'displayPosition': displayPosition,
      if (isMandatory != null) 'isMandatory': isMandatory,
      if (isPreDisplay != null) 'isPreDisplay': isPreDisplay,
      if (levelTypeId != null) 'levelTypeId': levelTypeId,
      if (auditQuestionId != null) 'auditQuestionId': auditQuestionId,
      if (sequenceNo != null) 'sequenceNo': sequenceNo,
      if (isMask != null) 'isMask': isMask,
      if (maskPattent != null) 'maskPattent': maskPattent,
      if (maskPlaceholder != null) 'maskPlaceholder': maskPlaceholder,
    });
  }

  AuditAdditionalFieldsCompanion copyWith(
      {Value<int>? additionalFieldId,
      Value<int>? auditId,
      Value<String>? fieldName,
      Value<int>? fieldTypeId,
      Value<int?>? displayPosition,
      Value<bool>? isMandatory,
      Value<bool?>? isPreDisplay,
      Value<int>? levelTypeId,
      Value<int?>? auditQuestionId,
      Value<int>? sequenceNo,
      Value<bool>? isMask,
      Value<String?>? maskPattent,
      Value<String?>? maskPlaceholder}) {
    return AuditAdditionalFieldsCompanion(
      additionalFieldId: additionalFieldId ?? this.additionalFieldId,
      auditId: auditId ?? this.auditId,
      fieldName: fieldName ?? this.fieldName,
      fieldTypeId: fieldTypeId ?? this.fieldTypeId,
      displayPosition: displayPosition ?? this.displayPosition,
      isMandatory: isMandatory ?? this.isMandatory,
      isPreDisplay: isPreDisplay ?? this.isPreDisplay,
      levelTypeId: levelTypeId ?? this.levelTypeId,
      auditQuestionId: auditQuestionId ?? this.auditQuestionId,
      sequenceNo: sequenceNo ?? this.sequenceNo,
      isMask: isMask ?? this.isMask,
      maskPattent: maskPattent ?? this.maskPattent,
      maskPlaceholder: maskPlaceholder ?? this.maskPlaceholder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldId.present) {
      map['additionalFieldId'] = Variable<int>(additionalFieldId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (fieldName.present) {
      map['fieldName'] = Variable<String>(fieldName.value);
    }
    if (fieldTypeId.present) {
      map['fieldTypeId'] = Variable<int>(fieldTypeId.value);
    }
    if (displayPosition.present) {
      map['displayPosition'] = Variable<int?>(displayPosition.value);
    }
    if (isMandatory.present) {
      map['isMandatory'] = Variable<bool>(isMandatory.value);
    }
    if (isPreDisplay.present) {
      map['isPreDisplay'] = Variable<bool?>(isPreDisplay.value);
    }
    if (levelTypeId.present) {
      map['levelTypeId'] = Variable<int>(levelTypeId.value);
    }
    if (auditQuestionId.present) {
      map['auditQuestionId'] = Variable<int?>(auditQuestionId.value);
    }
    if (sequenceNo.present) {
      map['sequenceNo'] = Variable<int>(sequenceNo.value);
    }
    if (isMask.present) {
      map['isMask'] = Variable<bool>(isMask.value);
    }
    if (maskPattent.present) {
      map['maskPattent'] = Variable<String?>(maskPattent.value);
    }
    if (maskPlaceholder.present) {
      map['maskPlaceholder'] = Variable<String?>(maskPlaceholder.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldsCompanion(')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('auditId: $auditId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldTypeId: $fieldTypeId, ')
          ..write('displayPosition: $displayPosition, ')
          ..write('isMandatory: $isMandatory, ')
          ..write('isPreDisplay: $isPreDisplay, ')
          ..write('levelTypeId: $levelTypeId, ')
          ..write('auditQuestionId: $auditQuestionId, ')
          ..write('sequenceNo: $sequenceNo, ')
          ..write('isMask: $isMask, ')
          ..write('maskPattent: $maskPattent, ')
          ..write('maskPlaceholder: $maskPlaceholder')
          ..write(')'))
        .toString();
  }
}

class AuditAdditionalFields extends Table
    with TableInfo<AuditAdditionalFields, AuditAdditionalField> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditAdditionalFields(this._db, [this._alias]);
  final VerificationMeta _additionalFieldIdMeta =
      const VerificationMeta('additionalFieldId');
  late final GeneratedColumn<int?> additionalFieldId = GeneratedColumn<int?>(
      'additionalFieldId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fieldNameMeta = const VerificationMeta('fieldName');
  late final GeneratedColumn<String?> fieldName = GeneratedColumn<String?>(
      'fieldName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fieldTypeIdMeta =
      const VerificationMeta('fieldTypeId');
  late final GeneratedColumn<int?> fieldTypeId = GeneratedColumn<int?>(
      'fieldTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _displayPositionMeta =
      const VerificationMeta('displayPosition');
  late final GeneratedColumn<int?> displayPosition = GeneratedColumn<int?>(
      'displayPosition', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _isMandatoryMeta =
      const VerificationMeta('isMandatory');
  late final GeneratedColumn<bool?> isMandatory = GeneratedColumn<bool?>(
      'isMandatory', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isPreDisplayMeta =
      const VerificationMeta('isPreDisplay');
  late final GeneratedColumn<bool?> isPreDisplay = GeneratedColumn<bool?>(
      'isPreDisplay', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _levelTypeIdMeta =
      const VerificationMeta('levelTypeId');
  late final GeneratedColumn<int?> levelTypeId = GeneratedColumn<int?>(
      'levelTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditQuestionIdMeta =
      const VerificationMeta('auditQuestionId');
  late final GeneratedColumn<int?> auditQuestionId = GeneratedColumn<int?>(
      'auditQuestionId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _sequenceNoMeta = const VerificationMeta('sequenceNo');
  late final GeneratedColumn<int?> sequenceNo = GeneratedColumn<int?>(
      'sequenceNo', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isMaskMeta = const VerificationMeta('isMask');
  late final GeneratedColumn<bool?> isMask = GeneratedColumn<bool?>(
      'isMask', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _maskPattentMeta =
      const VerificationMeta('maskPattent');
  late final GeneratedColumn<String?> maskPattent = GeneratedColumn<String?>(
      'maskPattent', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _maskPlaceholderMeta =
      const VerificationMeta('maskPlaceholder');
  late final GeneratedColumn<String?> maskPlaceholder =
      GeneratedColumn<String?>('maskPlaceholder', aliasedName, true,
          typeName: 'TEXT',
          requiredDuringInsert: false,
          $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        additionalFieldId,
        auditId,
        fieldName,
        fieldTypeId,
        displayPosition,
        isMandatory,
        isPreDisplay,
        levelTypeId,
        auditQuestionId,
        sequenceNo,
        isMask,
        maskPattent,
        maskPlaceholder
      ];
  @override
  String get aliasedName => _alias ?? 'auditAdditionalFields';
  @override
  String get actualTableName => 'auditAdditionalFields';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalField> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additionalFieldId')) {
      context.handle(
          _additionalFieldIdMeta,
          additionalFieldId.isAcceptableOrUnknown(
              data['additionalFieldId']!, _additionalFieldIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('fieldName')) {
      context.handle(_fieldNameMeta,
          fieldName.isAcceptableOrUnknown(data['fieldName']!, _fieldNameMeta));
    } else if (isInserting) {
      context.missing(_fieldNameMeta);
    }
    if (data.containsKey('fieldTypeId')) {
      context.handle(
          _fieldTypeIdMeta,
          fieldTypeId.isAcceptableOrUnknown(
              data['fieldTypeId']!, _fieldTypeIdMeta));
    } else if (isInserting) {
      context.missing(_fieldTypeIdMeta);
    }
    if (data.containsKey('displayPosition')) {
      context.handle(
          _displayPositionMeta,
          displayPosition.isAcceptableOrUnknown(
              data['displayPosition']!, _displayPositionMeta));
    }
    if (data.containsKey('isMandatory')) {
      context.handle(
          _isMandatoryMeta,
          isMandatory.isAcceptableOrUnknown(
              data['isMandatory']!, _isMandatoryMeta));
    } else if (isInserting) {
      context.missing(_isMandatoryMeta);
    }
    if (data.containsKey('isPreDisplay')) {
      context.handle(
          _isPreDisplayMeta,
          isPreDisplay.isAcceptableOrUnknown(
              data['isPreDisplay']!, _isPreDisplayMeta));
    }
    if (data.containsKey('levelTypeId')) {
      context.handle(
          _levelTypeIdMeta,
          levelTypeId.isAcceptableOrUnknown(
              data['levelTypeId']!, _levelTypeIdMeta));
    } else if (isInserting) {
      context.missing(_levelTypeIdMeta);
    }
    if (data.containsKey('auditQuestionId')) {
      context.handle(
          _auditQuestionIdMeta,
          auditQuestionId.isAcceptableOrUnknown(
              data['auditQuestionId']!, _auditQuestionIdMeta));
    }
    if (data.containsKey('sequenceNo')) {
      context.handle(
          _sequenceNoMeta,
          sequenceNo.isAcceptableOrUnknown(
              data['sequenceNo']!, _sequenceNoMeta));
    } else if (isInserting) {
      context.missing(_sequenceNoMeta);
    }
    if (data.containsKey('isMask')) {
      context.handle(_isMaskMeta,
          isMask.isAcceptableOrUnknown(data['isMask']!, _isMaskMeta));
    } else if (isInserting) {
      context.missing(_isMaskMeta);
    }
    if (data.containsKey('maskPattent')) {
      context.handle(
          _maskPattentMeta,
          maskPattent.isAcceptableOrUnknown(
              data['maskPattent']!, _maskPattentMeta));
    }
    if (data.containsKey('maskPlaceholder')) {
      context.handle(
          _maskPlaceholderMeta,
          maskPlaceholder.isAcceptableOrUnknown(
              data['maskPlaceholder']!, _maskPlaceholderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldId};
  @override
  AuditAdditionalField map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditAdditionalField.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditAdditionalFields createAlias(String alias) {
    return AuditAdditionalFields(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditAdditionalFieldTypeValue extends DataClass
    implements Insertable<AuditAdditionalFieldTypeValue> {
  final int additionalFieldTypeValueId;
  final int additionalFieldId;
  final String additionalFieldValue;
  AuditAdditionalFieldTypeValue(
      {required this.additionalFieldTypeValueId,
      required this.additionalFieldId,
      required this.additionalFieldValue});
  factory AuditAdditionalFieldTypeValue.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalFieldTypeValue(
      additionalFieldTypeValueId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldTypeValueId'])!,
      additionalFieldId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldId'])!,
      additionalFieldValue: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldValue'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additionalFieldTypeValueId'] =
        Variable<int>(additionalFieldTypeValueId);
    map['additionalFieldId'] = Variable<int>(additionalFieldId);
    map['additionalFieldValue'] = Variable<String>(additionalFieldValue);
    return map;
  }

  AuditAdditionalFieldTypeValuesCompanion toCompanion(bool nullToAbsent) {
    return AuditAdditionalFieldTypeValuesCompanion(
      additionalFieldTypeValueId: Value(additionalFieldTypeValueId),
      additionalFieldId: Value(additionalFieldId),
      additionalFieldValue: Value(additionalFieldValue),
    );
  }

  factory AuditAdditionalFieldTypeValue.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditAdditionalFieldTypeValue(
      additionalFieldTypeValueId:
          serializer.fromJson<int>(json['additionalFieldTypeValueId']),
      additionalFieldId: serializer.fromJson<int>(json['additionalFieldId']),
      additionalFieldValue:
          serializer.fromJson<String>(json['additionalFieldValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldTypeValueId':
          serializer.toJson<int>(additionalFieldTypeValueId),
      'additionalFieldId': serializer.toJson<int>(additionalFieldId),
      'additionalFieldValue': serializer.toJson<String>(additionalFieldValue),
    };
  }

  AuditAdditionalFieldTypeValue copyWith(
          {int? additionalFieldTypeValueId,
          int? additionalFieldId,
          String? additionalFieldValue}) =>
      AuditAdditionalFieldTypeValue(
        additionalFieldTypeValueId:
            additionalFieldTypeValueId ?? this.additionalFieldTypeValueId,
        additionalFieldId: additionalFieldId ?? this.additionalFieldId,
        additionalFieldValue: additionalFieldValue ?? this.additionalFieldValue,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldTypeValue(')
          ..write('additionalFieldTypeValueId: $additionalFieldTypeValueId, ')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('additionalFieldValue: $additionalFieldValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      additionalFieldTypeValueId, additionalFieldId, additionalFieldValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalFieldTypeValue &&
          other.additionalFieldTypeValueId == this.additionalFieldTypeValueId &&
          other.additionalFieldId == this.additionalFieldId &&
          other.additionalFieldValue == this.additionalFieldValue);
}

class AuditAdditionalFieldTypeValuesCompanion
    extends UpdateCompanion<AuditAdditionalFieldTypeValue> {
  final Value<int> additionalFieldTypeValueId;
  final Value<int> additionalFieldId;
  final Value<String> additionalFieldValue;
  const AuditAdditionalFieldTypeValuesCompanion({
    this.additionalFieldTypeValueId = const Value.absent(),
    this.additionalFieldId = const Value.absent(),
    this.additionalFieldValue = const Value.absent(),
  });
  AuditAdditionalFieldTypeValuesCompanion.insert({
    this.additionalFieldTypeValueId = const Value.absent(),
    required int additionalFieldId,
    required String additionalFieldValue,
  })  : additionalFieldId = Value(additionalFieldId),
        additionalFieldValue = Value(additionalFieldValue);
  static Insertable<AuditAdditionalFieldTypeValue> custom({
    Expression<int>? additionalFieldTypeValueId,
    Expression<int>? additionalFieldId,
    Expression<String>? additionalFieldValue,
  }) {
    return RawValuesInsertable({
      if (additionalFieldTypeValueId != null)
        'additionalFieldTypeValueId': additionalFieldTypeValueId,
      if (additionalFieldId != null) 'additionalFieldId': additionalFieldId,
      if (additionalFieldValue != null)
        'additionalFieldValue': additionalFieldValue,
    });
  }

  AuditAdditionalFieldTypeValuesCompanion copyWith(
      {Value<int>? additionalFieldTypeValueId,
      Value<int>? additionalFieldId,
      Value<String>? additionalFieldValue}) {
    return AuditAdditionalFieldTypeValuesCompanion(
      additionalFieldTypeValueId:
          additionalFieldTypeValueId ?? this.additionalFieldTypeValueId,
      additionalFieldId: additionalFieldId ?? this.additionalFieldId,
      additionalFieldValue: additionalFieldValue ?? this.additionalFieldValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldTypeValueId.present) {
      map['additionalFieldTypeValueId'] =
          Variable<int>(additionalFieldTypeValueId.value);
    }
    if (additionalFieldId.present) {
      map['additionalFieldId'] = Variable<int>(additionalFieldId.value);
    }
    if (additionalFieldValue.present) {
      map['additionalFieldValue'] =
          Variable<String>(additionalFieldValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldTypeValuesCompanion(')
          ..write('additionalFieldTypeValueId: $additionalFieldTypeValueId, ')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('additionalFieldValue: $additionalFieldValue')
          ..write(')'))
        .toString();
  }
}

class AuditAdditionalFieldTypeValues extends Table
    with
        TableInfo<AuditAdditionalFieldTypeValues,
            AuditAdditionalFieldTypeValue> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditAdditionalFieldTypeValues(this._db, [this._alias]);
  final VerificationMeta _additionalFieldTypeValueIdMeta =
      const VerificationMeta('additionalFieldTypeValueId');
  late final GeneratedColumn<int?> additionalFieldTypeValueId =
      GeneratedColumn<int?>('additionalFieldTypeValueId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _additionalFieldIdMeta =
      const VerificationMeta('additionalFieldId');
  late final GeneratedColumn<int?> additionalFieldId = GeneratedColumn<int?>(
      'additionalFieldId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _additionalFieldValueMeta =
      const VerificationMeta('additionalFieldValue');
  late final GeneratedColumn<String?> additionalFieldValue =
      GeneratedColumn<String?>('additionalFieldValue', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [additionalFieldTypeValueId, additionalFieldId, additionalFieldValue];
  @override
  String get aliasedName => _alias ?? 'auditAdditionalFieldTypeValues';
  @override
  String get actualTableName => 'auditAdditionalFieldTypeValues';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalFieldTypeValue> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additionalFieldTypeValueId')) {
      context.handle(
          _additionalFieldTypeValueIdMeta,
          additionalFieldTypeValueId.isAcceptableOrUnknown(
              data['additionalFieldTypeValueId']!,
              _additionalFieldTypeValueIdMeta));
    }
    if (data.containsKey('additionalFieldId')) {
      context.handle(
          _additionalFieldIdMeta,
          additionalFieldId.isAcceptableOrUnknown(
              data['additionalFieldId']!, _additionalFieldIdMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldIdMeta);
    }
    if (data.containsKey('additionalFieldValue')) {
      context.handle(
          _additionalFieldValueMeta,
          additionalFieldValue.isAcceptableOrUnknown(
              data['additionalFieldValue']!, _additionalFieldValueMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldTypeValueId};
  @override
  AuditAdditionalFieldTypeValue map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditAdditionalFieldTypeValue.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditAdditionalFieldTypeValues createAlias(String alias) {
    return AuditAdditionalFieldTypeValues(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditAdditionalFieldEntityType extends DataClass
    implements Insertable<AuditAdditionalFieldEntityType> {
  final int additionalFieldEntityTypeId;
  final int additionalFieldId;
  final int entityTypeId;
  final int entityLevel;
  AuditAdditionalFieldEntityType(
      {required this.additionalFieldEntityTypeId,
      required this.additionalFieldId,
      required this.entityTypeId,
      required this.entityLevel});
  factory AuditAdditionalFieldEntityType.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalFieldEntityType(
      additionalFieldEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldEntityTypeId'])!,
      additionalFieldId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldId'])!,
      entityTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityTypeId'])!,
      entityLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityLevel'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additionalFieldEntityTypeId'] =
        Variable<int>(additionalFieldEntityTypeId);
    map['additionalFieldId'] = Variable<int>(additionalFieldId);
    map['entityTypeId'] = Variable<int>(entityTypeId);
    map['entityLevel'] = Variable<int>(entityLevel);
    return map;
  }

  AuditAdditionalFieldEntityTypesCompanion toCompanion(bool nullToAbsent) {
    return AuditAdditionalFieldEntityTypesCompanion(
      additionalFieldEntityTypeId: Value(additionalFieldEntityTypeId),
      additionalFieldId: Value(additionalFieldId),
      entityTypeId: Value(entityTypeId),
      entityLevel: Value(entityLevel),
    );
  }

  factory AuditAdditionalFieldEntityType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditAdditionalFieldEntityType(
      additionalFieldEntityTypeId:
          serializer.fromJson<int>(json['additionalFieldEntityTypeId']),
      additionalFieldId: serializer.fromJson<int>(json['additionalFieldId']),
      entityTypeId: serializer.fromJson<int>(json['entityTypeId']),
      entityLevel: serializer.fromJson<int>(json['entityLevel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldEntityTypeId':
          serializer.toJson<int>(additionalFieldEntityTypeId),
      'additionalFieldId': serializer.toJson<int>(additionalFieldId),
      'entityTypeId': serializer.toJson<int>(entityTypeId),
      'entityLevel': serializer.toJson<int>(entityLevel),
    };
  }

  AuditAdditionalFieldEntityType copyWith(
          {int? additionalFieldEntityTypeId,
          int? additionalFieldId,
          int? entityTypeId,
          int? entityLevel}) =>
      AuditAdditionalFieldEntityType(
        additionalFieldEntityTypeId:
            additionalFieldEntityTypeId ?? this.additionalFieldEntityTypeId,
        additionalFieldId: additionalFieldId ?? this.additionalFieldId,
        entityTypeId: entityTypeId ?? this.entityTypeId,
        entityLevel: entityLevel ?? this.entityLevel,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldEntityType(')
          ..write('additionalFieldEntityTypeId: $additionalFieldEntityTypeId, ')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('entityTypeId: $entityTypeId, ')
          ..write('entityLevel: $entityLevel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(additionalFieldEntityTypeId,
      additionalFieldId, entityTypeId, entityLevel);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalFieldEntityType &&
          other.additionalFieldEntityTypeId ==
              this.additionalFieldEntityTypeId &&
          other.additionalFieldId == this.additionalFieldId &&
          other.entityTypeId == this.entityTypeId &&
          other.entityLevel == this.entityLevel);
}

class AuditAdditionalFieldEntityTypesCompanion
    extends UpdateCompanion<AuditAdditionalFieldEntityType> {
  final Value<int> additionalFieldEntityTypeId;
  final Value<int> additionalFieldId;
  final Value<int> entityTypeId;
  final Value<int> entityLevel;
  const AuditAdditionalFieldEntityTypesCompanion({
    this.additionalFieldEntityTypeId = const Value.absent(),
    this.additionalFieldId = const Value.absent(),
    this.entityTypeId = const Value.absent(),
    this.entityLevel = const Value.absent(),
  });
  AuditAdditionalFieldEntityTypesCompanion.insert({
    this.additionalFieldEntityTypeId = const Value.absent(),
    required int additionalFieldId,
    required int entityTypeId,
    required int entityLevel,
  })  : additionalFieldId = Value(additionalFieldId),
        entityTypeId = Value(entityTypeId),
        entityLevel = Value(entityLevel);
  static Insertable<AuditAdditionalFieldEntityType> custom({
    Expression<int>? additionalFieldEntityTypeId,
    Expression<int>? additionalFieldId,
    Expression<int>? entityTypeId,
    Expression<int>? entityLevel,
  }) {
    return RawValuesInsertable({
      if (additionalFieldEntityTypeId != null)
        'additionalFieldEntityTypeId': additionalFieldEntityTypeId,
      if (additionalFieldId != null) 'additionalFieldId': additionalFieldId,
      if (entityTypeId != null) 'entityTypeId': entityTypeId,
      if (entityLevel != null) 'entityLevel': entityLevel,
    });
  }

  AuditAdditionalFieldEntityTypesCompanion copyWith(
      {Value<int>? additionalFieldEntityTypeId,
      Value<int>? additionalFieldId,
      Value<int>? entityTypeId,
      Value<int>? entityLevel}) {
    return AuditAdditionalFieldEntityTypesCompanion(
      additionalFieldEntityTypeId:
          additionalFieldEntityTypeId ?? this.additionalFieldEntityTypeId,
      additionalFieldId: additionalFieldId ?? this.additionalFieldId,
      entityTypeId: entityTypeId ?? this.entityTypeId,
      entityLevel: entityLevel ?? this.entityLevel,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldEntityTypeId.present) {
      map['additionalFieldEntityTypeId'] =
          Variable<int>(additionalFieldEntityTypeId.value);
    }
    if (additionalFieldId.present) {
      map['additionalFieldId'] = Variable<int>(additionalFieldId.value);
    }
    if (entityTypeId.present) {
      map['entityTypeId'] = Variable<int>(entityTypeId.value);
    }
    if (entityLevel.present) {
      map['entityLevel'] = Variable<int>(entityLevel.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldEntityTypesCompanion(')
          ..write('additionalFieldEntityTypeId: $additionalFieldEntityTypeId, ')
          ..write('additionalFieldId: $additionalFieldId, ')
          ..write('entityTypeId: $entityTypeId, ')
          ..write('entityLevel: $entityLevel')
          ..write(')'))
        .toString();
  }
}

class AuditAdditionalFieldEntityTypes extends Table
    with
        TableInfo<AuditAdditionalFieldEntityTypes,
            AuditAdditionalFieldEntityType> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditAdditionalFieldEntityTypes(this._db, [this._alias]);
  final VerificationMeta _additionalFieldEntityTypeIdMeta =
      const VerificationMeta('additionalFieldEntityTypeId');
  late final GeneratedColumn<int?> additionalFieldEntityTypeId =
      GeneratedColumn<int?>('additionalFieldEntityTypeId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _additionalFieldIdMeta =
      const VerificationMeta('additionalFieldId');
  late final GeneratedColumn<int?> additionalFieldId = GeneratedColumn<int?>(
      'additionalFieldId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _entityTypeIdMeta =
      const VerificationMeta('entityTypeId');
  late final GeneratedColumn<int?> entityTypeId = GeneratedColumn<int?>(
      'entityTypeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _entityLevelMeta =
      const VerificationMeta('entityLevel');
  late final GeneratedColumn<int?> entityLevel = GeneratedColumn<int?>(
      'entityLevel', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        additionalFieldEntityTypeId,
        additionalFieldId,
        entityTypeId,
        entityLevel
      ];
  @override
  String get aliasedName => _alias ?? 'auditAdditionalFieldEntityTypes';
  @override
  String get actualTableName => 'auditAdditionalFieldEntityTypes';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalFieldEntityType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additionalFieldEntityTypeId')) {
      context.handle(
          _additionalFieldEntityTypeIdMeta,
          additionalFieldEntityTypeId.isAcceptableOrUnknown(
              data['additionalFieldEntityTypeId']!,
              _additionalFieldEntityTypeIdMeta));
    }
    if (data.containsKey('additionalFieldId')) {
      context.handle(
          _additionalFieldIdMeta,
          additionalFieldId.isAcceptableOrUnknown(
              data['additionalFieldId']!, _additionalFieldIdMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldIdMeta);
    }
    if (data.containsKey('entityTypeId')) {
      context.handle(
          _entityTypeIdMeta,
          entityTypeId.isAcceptableOrUnknown(
              data['entityTypeId']!, _entityTypeIdMeta));
    } else if (isInserting) {
      context.missing(_entityTypeIdMeta);
    }
    if (data.containsKey('entityLevel')) {
      context.handle(
          _entityLevelMeta,
          entityLevel.isAcceptableOrUnknown(
              data['entityLevel']!, _entityLevelMeta));
    } else if (isInserting) {
      context.missing(_entityLevelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldEntityTypeId};
  @override
  AuditAdditionalFieldEntityType map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditAdditionalFieldEntityType.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditAdditionalFieldEntityTypes createAlias(String alias) {
    return AuditAdditionalFieldEntityTypes(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class SizeData extends DataClass implements Insertable<SizeData> {
  final int androidMaxUploadFileSize;
  final int iosMaxUploadFileSize;
  final int htmL5MaxUploadFileSize;
  final int additionalFieldEmail;
  final int additionalFieldTextArea;
  final int additionalFieldTextBox;
  final int additionalFieldLocation;
  final int comment;
  final int failureNote;
  final int correctiveNote;
  final int barcode;
  final int taskComment;
  final int sessionTimeOut;
  final int signDeclarationTextSize;
  final int nfcComment;
  final int captureImageNote;
  final int nonAuditableComment;
  final int flipScoreTime;
  final int eventNumber;
  final int eventTitle;
  final int eventDescription;
  final int eventRiskAssociated;
  final int eventImmediateActionTaken;
  final int eventCorrectiveActions;
  final int eventSituationTitle;
  final int eventSituationDetails;
  final int eventKeyIssueTitle;
  final int eventKeyIssueActionTitle;
  final int injuryPersonName;
  final int injurySupervisiorName;
  final int eventInjuryComment;
  final int eventScheduleTitle;
  final int keyIssueActionComment;
  final int situationTitle;
  final int situationDetail;
  final int lostHours;
  final int initialRootCauses;
  final int finalClosureNotes;
  final int maxEventAttachment;
  final int maxEventInvestigationAttachment;
  final int defaultTaskDueDateDays;
  SizeData(
      {required this.androidMaxUploadFileSize,
      required this.iosMaxUploadFileSize,
      required this.htmL5MaxUploadFileSize,
      required this.additionalFieldEmail,
      required this.additionalFieldTextArea,
      required this.additionalFieldTextBox,
      required this.additionalFieldLocation,
      required this.comment,
      required this.failureNote,
      required this.correctiveNote,
      required this.barcode,
      required this.taskComment,
      required this.sessionTimeOut,
      required this.signDeclarationTextSize,
      required this.nfcComment,
      required this.captureImageNote,
      required this.nonAuditableComment,
      required this.flipScoreTime,
      required this.eventNumber,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventRiskAssociated,
      required this.eventImmediateActionTaken,
      required this.eventCorrectiveActions,
      required this.eventSituationTitle,
      required this.eventSituationDetails,
      required this.eventKeyIssueTitle,
      required this.eventKeyIssueActionTitle,
      required this.injuryPersonName,
      required this.injurySupervisiorName,
      required this.eventInjuryComment,
      required this.eventScheduleTitle,
      required this.keyIssueActionComment,
      required this.situationTitle,
      required this.situationDetail,
      required this.lostHours,
      required this.initialRootCauses,
      required this.finalClosureNotes,
      required this.maxEventAttachment,
      required this.maxEventInvestigationAttachment,
      required this.defaultTaskDueDateDays});
  factory SizeData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SizeData(
      androidMaxUploadFileSize: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}androidMaxUploadFileSize'])!,
      iosMaxUploadFileSize: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}iosMaxUploadFileSize'])!,
      htmL5MaxUploadFileSize: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}htmL5MaxUploadFileSize'])!,
      additionalFieldEmail: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldEmail'])!,
      additionalFieldTextArea: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldTextArea'])!,
      additionalFieldTextBox: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldTextBox'])!,
      additionalFieldLocation: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additionalFieldLocation'])!,
      comment: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}comment'])!,
      failureNote: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}failureNote'])!,
      correctiveNote: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}correctiveNote'])!,
      barcode: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}barcode'])!,
      taskComment: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}taskComment'])!,
      sessionTimeOut: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sessionTimeOut'])!,
      signDeclarationTextSize: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}signDeclarationTextSize'])!,
      nfcComment: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nfcComment'])!,
      captureImageNote: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}captureImageNote'])!,
      nonAuditableComment: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}nonAuditableComment'])!,
      flipScoreTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}flipScoreTime'])!,
      eventNumber: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eventNumber'])!,
      eventTitle: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eventTitle'])!,
      eventDescription: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}eventDescription'])!,
      eventRiskAssociated: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventRiskAssociated'])!,
      eventImmediateActionTaken: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventImmediateActionTaken'])!,
      eventCorrectiveActions: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventCorrectiveActions'])!,
      eventSituationTitle: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventSituationTitle'])!,
      eventSituationDetails: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventSituationDetails'])!,
      eventKeyIssueTitle: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventKeyIssueTitle'])!,
      eventKeyIssueActionTitle: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventKeyIssueActionTitle'])!,
      injuryPersonName: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}injuryPersonName'])!,
      injurySupervisiorName: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}injurySupervisiorName'])!,
      eventInjuryComment: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventInjuryComment'])!,
      eventScheduleTitle: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}eventScheduleTitle'])!,
      keyIssueActionComment: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}keyIssueActionComment'])!,
      situationTitle: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}situationTitle'])!,
      situationDetail: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}situationDetail'])!,
      lostHours: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lostHours'])!,
      initialRootCauses: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}initialRootCauses'])!,
      finalClosureNotes: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}finalClosureNotes'])!,
      maxEventAttachment: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}maxEventAttachment'])!,
      maxEventInvestigationAttachment: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}maxEventInvestigationAttachment'])!,
      defaultTaskDueDateDays: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}defaultTaskDueDateDays'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['androidMaxUploadFileSize'] = Variable<int>(androidMaxUploadFileSize);
    map['iosMaxUploadFileSize'] = Variable<int>(iosMaxUploadFileSize);
    map['htmL5MaxUploadFileSize'] = Variable<int>(htmL5MaxUploadFileSize);
    map['additionalFieldEmail'] = Variable<int>(additionalFieldEmail);
    map['additionalFieldTextArea'] = Variable<int>(additionalFieldTextArea);
    map['additionalFieldTextBox'] = Variable<int>(additionalFieldTextBox);
    map['additionalFieldLocation'] = Variable<int>(additionalFieldLocation);
    map['comment'] = Variable<int>(comment);
    map['failureNote'] = Variable<int>(failureNote);
    map['correctiveNote'] = Variable<int>(correctiveNote);
    map['barcode'] = Variable<int>(barcode);
    map['taskComment'] = Variable<int>(taskComment);
    map['sessionTimeOut'] = Variable<int>(sessionTimeOut);
    map['signDeclarationTextSize'] = Variable<int>(signDeclarationTextSize);
    map['nfcComment'] = Variable<int>(nfcComment);
    map['captureImageNote'] = Variable<int>(captureImageNote);
    map['nonAuditableComment'] = Variable<int>(nonAuditableComment);
    map['flipScoreTime'] = Variable<int>(flipScoreTime);
    map['eventNumber'] = Variable<int>(eventNumber);
    map['eventTitle'] = Variable<int>(eventTitle);
    map['eventDescription'] = Variable<int>(eventDescription);
    map['eventRiskAssociated'] = Variable<int>(eventRiskAssociated);
    map['eventImmediateActionTaken'] = Variable<int>(eventImmediateActionTaken);
    map['eventCorrectiveActions'] = Variable<int>(eventCorrectiveActions);
    map['eventSituationTitle'] = Variable<int>(eventSituationTitle);
    map['eventSituationDetails'] = Variable<int>(eventSituationDetails);
    map['eventKeyIssueTitle'] = Variable<int>(eventKeyIssueTitle);
    map['eventKeyIssueActionTitle'] = Variable<int>(eventKeyIssueActionTitle);
    map['injuryPersonName'] = Variable<int>(injuryPersonName);
    map['injurySupervisiorName'] = Variable<int>(injurySupervisiorName);
    map['eventInjuryComment'] = Variable<int>(eventInjuryComment);
    map['eventScheduleTitle'] = Variable<int>(eventScheduleTitle);
    map['keyIssueActionComment'] = Variable<int>(keyIssueActionComment);
    map['situationTitle'] = Variable<int>(situationTitle);
    map['situationDetail'] = Variable<int>(situationDetail);
    map['lostHours'] = Variable<int>(lostHours);
    map['initialRootCauses'] = Variable<int>(initialRootCauses);
    map['finalClosureNotes'] = Variable<int>(finalClosureNotes);
    map['maxEventAttachment'] = Variable<int>(maxEventAttachment);
    map['maxEventInvestigationAttachment'] =
        Variable<int>(maxEventInvestigationAttachment);
    map['defaultTaskDueDateDays'] = Variable<int>(defaultTaskDueDateDays);
    return map;
  }

  SizeCompanion toCompanion(bool nullToAbsent) {
    return SizeCompanion(
      androidMaxUploadFileSize: Value(androidMaxUploadFileSize),
      iosMaxUploadFileSize: Value(iosMaxUploadFileSize),
      htmL5MaxUploadFileSize: Value(htmL5MaxUploadFileSize),
      additionalFieldEmail: Value(additionalFieldEmail),
      additionalFieldTextArea: Value(additionalFieldTextArea),
      additionalFieldTextBox: Value(additionalFieldTextBox),
      additionalFieldLocation: Value(additionalFieldLocation),
      comment: Value(comment),
      failureNote: Value(failureNote),
      correctiveNote: Value(correctiveNote),
      barcode: Value(barcode),
      taskComment: Value(taskComment),
      sessionTimeOut: Value(sessionTimeOut),
      signDeclarationTextSize: Value(signDeclarationTextSize),
      nfcComment: Value(nfcComment),
      captureImageNote: Value(captureImageNote),
      nonAuditableComment: Value(nonAuditableComment),
      flipScoreTime: Value(flipScoreTime),
      eventNumber: Value(eventNumber),
      eventTitle: Value(eventTitle),
      eventDescription: Value(eventDescription),
      eventRiskAssociated: Value(eventRiskAssociated),
      eventImmediateActionTaken: Value(eventImmediateActionTaken),
      eventCorrectiveActions: Value(eventCorrectiveActions),
      eventSituationTitle: Value(eventSituationTitle),
      eventSituationDetails: Value(eventSituationDetails),
      eventKeyIssueTitle: Value(eventKeyIssueTitle),
      eventKeyIssueActionTitle: Value(eventKeyIssueActionTitle),
      injuryPersonName: Value(injuryPersonName),
      injurySupervisiorName: Value(injurySupervisiorName),
      eventInjuryComment: Value(eventInjuryComment),
      eventScheduleTitle: Value(eventScheduleTitle),
      keyIssueActionComment: Value(keyIssueActionComment),
      situationTitle: Value(situationTitle),
      situationDetail: Value(situationDetail),
      lostHours: Value(lostHours),
      initialRootCauses: Value(initialRootCauses),
      finalClosureNotes: Value(finalClosureNotes),
      maxEventAttachment: Value(maxEventAttachment),
      maxEventInvestigationAttachment: Value(maxEventInvestigationAttachment),
      defaultTaskDueDateDays: Value(defaultTaskDueDateDays),
    );
  }

  factory SizeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SizeData(
      androidMaxUploadFileSize:
          serializer.fromJson<int>(json['androidMaxUploadFileSize']),
      iosMaxUploadFileSize:
          serializer.fromJson<int>(json['iosMaxUploadFileSize']),
      htmL5MaxUploadFileSize:
          serializer.fromJson<int>(json['htmL5MaxUploadFileSize']),
      additionalFieldEmail:
          serializer.fromJson<int>(json['additionalFieldEmail']),
      additionalFieldTextArea:
          serializer.fromJson<int>(json['additionalFieldTextArea']),
      additionalFieldTextBox:
          serializer.fromJson<int>(json['additionalFieldTextBox']),
      additionalFieldLocation:
          serializer.fromJson<int>(json['additionalFieldLocation']),
      comment: serializer.fromJson<int>(json['comment']),
      failureNote: serializer.fromJson<int>(json['failureNote']),
      correctiveNote: serializer.fromJson<int>(json['correctiveNote']),
      barcode: serializer.fromJson<int>(json['barcode']),
      taskComment: serializer.fromJson<int>(json['taskComment']),
      sessionTimeOut: serializer.fromJson<int>(json['sessionTimeOut']),
      signDeclarationTextSize:
          serializer.fromJson<int>(json['signDeclarationTextSize']),
      nfcComment: serializer.fromJson<int>(json['nfcComment']),
      captureImageNote: serializer.fromJson<int>(json['captureImageNote']),
      nonAuditableComment:
          serializer.fromJson<int>(json['nonAuditableComment']),
      flipScoreTime: serializer.fromJson<int>(json['flipScoreTime']),
      eventNumber: serializer.fromJson<int>(json['eventNumber']),
      eventTitle: serializer.fromJson<int>(json['eventTitle']),
      eventDescription: serializer.fromJson<int>(json['eventDescription']),
      eventRiskAssociated:
          serializer.fromJson<int>(json['eventRiskAssociated']),
      eventImmediateActionTaken:
          serializer.fromJson<int>(json['eventImmediateActionTaken']),
      eventCorrectiveActions:
          serializer.fromJson<int>(json['eventCorrectiveActions']),
      eventSituationTitle:
          serializer.fromJson<int>(json['eventSituationTitle']),
      eventSituationDetails:
          serializer.fromJson<int>(json['eventSituationDetails']),
      eventKeyIssueTitle: serializer.fromJson<int>(json['eventKeyIssueTitle']),
      eventKeyIssueActionTitle:
          serializer.fromJson<int>(json['eventKeyIssueActionTitle']),
      injuryPersonName: serializer.fromJson<int>(json['injuryPersonName']),
      injurySupervisiorName:
          serializer.fromJson<int>(json['injurySupervisiorName']),
      eventInjuryComment: serializer.fromJson<int>(json['eventInjuryComment']),
      eventScheduleTitle: serializer.fromJson<int>(json['eventScheduleTitle']),
      keyIssueActionComment:
          serializer.fromJson<int>(json['keyIssueActionComment']),
      situationTitle: serializer.fromJson<int>(json['situationTitle']),
      situationDetail: serializer.fromJson<int>(json['situationDetail']),
      lostHours: serializer.fromJson<int>(json['lostHours']),
      initialRootCauses: serializer.fromJson<int>(json['initialRootCauses']),
      finalClosureNotes: serializer.fromJson<int>(json['finalClosureNotes']),
      maxEventAttachment: serializer.fromJson<int>(json['maxEventAttachment']),
      maxEventInvestigationAttachment:
          serializer.fromJson<int>(json['maxEventInvestigationAttachment']),
      defaultTaskDueDateDays:
          serializer.fromJson<int>(json['defaultTaskDueDateDays']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'androidMaxUploadFileSize':
          serializer.toJson<int>(androidMaxUploadFileSize),
      'iosMaxUploadFileSize': serializer.toJson<int>(iosMaxUploadFileSize),
      'htmL5MaxUploadFileSize': serializer.toJson<int>(htmL5MaxUploadFileSize),
      'additionalFieldEmail': serializer.toJson<int>(additionalFieldEmail),
      'additionalFieldTextArea':
          serializer.toJson<int>(additionalFieldTextArea),
      'additionalFieldTextBox': serializer.toJson<int>(additionalFieldTextBox),
      'additionalFieldLocation':
          serializer.toJson<int>(additionalFieldLocation),
      'comment': serializer.toJson<int>(comment),
      'failureNote': serializer.toJson<int>(failureNote),
      'correctiveNote': serializer.toJson<int>(correctiveNote),
      'barcode': serializer.toJson<int>(barcode),
      'taskComment': serializer.toJson<int>(taskComment),
      'sessionTimeOut': serializer.toJson<int>(sessionTimeOut),
      'signDeclarationTextSize':
          serializer.toJson<int>(signDeclarationTextSize),
      'nfcComment': serializer.toJson<int>(nfcComment),
      'captureImageNote': serializer.toJson<int>(captureImageNote),
      'nonAuditableComment': serializer.toJson<int>(nonAuditableComment),
      'flipScoreTime': serializer.toJson<int>(flipScoreTime),
      'eventNumber': serializer.toJson<int>(eventNumber),
      'eventTitle': serializer.toJson<int>(eventTitle),
      'eventDescription': serializer.toJson<int>(eventDescription),
      'eventRiskAssociated': serializer.toJson<int>(eventRiskAssociated),
      'eventImmediateActionTaken':
          serializer.toJson<int>(eventImmediateActionTaken),
      'eventCorrectiveActions': serializer.toJson<int>(eventCorrectiveActions),
      'eventSituationTitle': serializer.toJson<int>(eventSituationTitle),
      'eventSituationDetails': serializer.toJson<int>(eventSituationDetails),
      'eventKeyIssueTitle': serializer.toJson<int>(eventKeyIssueTitle),
      'eventKeyIssueActionTitle':
          serializer.toJson<int>(eventKeyIssueActionTitle),
      'injuryPersonName': serializer.toJson<int>(injuryPersonName),
      'injurySupervisiorName': serializer.toJson<int>(injurySupervisiorName),
      'eventInjuryComment': serializer.toJson<int>(eventInjuryComment),
      'eventScheduleTitle': serializer.toJson<int>(eventScheduleTitle),
      'keyIssueActionComment': serializer.toJson<int>(keyIssueActionComment),
      'situationTitle': serializer.toJson<int>(situationTitle),
      'situationDetail': serializer.toJson<int>(situationDetail),
      'lostHours': serializer.toJson<int>(lostHours),
      'initialRootCauses': serializer.toJson<int>(initialRootCauses),
      'finalClosureNotes': serializer.toJson<int>(finalClosureNotes),
      'maxEventAttachment': serializer.toJson<int>(maxEventAttachment),
      'maxEventInvestigationAttachment':
          serializer.toJson<int>(maxEventInvestigationAttachment),
      'defaultTaskDueDateDays': serializer.toJson<int>(defaultTaskDueDateDays),
    };
  }

  SizeData copyWith(
          {int? androidMaxUploadFileSize,
          int? iosMaxUploadFileSize,
          int? htmL5MaxUploadFileSize,
          int? additionalFieldEmail,
          int? additionalFieldTextArea,
          int? additionalFieldTextBox,
          int? additionalFieldLocation,
          int? comment,
          int? failureNote,
          int? correctiveNote,
          int? barcode,
          int? taskComment,
          int? sessionTimeOut,
          int? signDeclarationTextSize,
          int? nfcComment,
          int? captureImageNote,
          int? nonAuditableComment,
          int? flipScoreTime,
          int? eventNumber,
          int? eventTitle,
          int? eventDescription,
          int? eventRiskAssociated,
          int? eventImmediateActionTaken,
          int? eventCorrectiveActions,
          int? eventSituationTitle,
          int? eventSituationDetails,
          int? eventKeyIssueTitle,
          int? eventKeyIssueActionTitle,
          int? injuryPersonName,
          int? injurySupervisiorName,
          int? eventInjuryComment,
          int? eventScheduleTitle,
          int? keyIssueActionComment,
          int? situationTitle,
          int? situationDetail,
          int? lostHours,
          int? initialRootCauses,
          int? finalClosureNotes,
          int? maxEventAttachment,
          int? maxEventInvestigationAttachment,
          int? defaultTaskDueDateDays}) =>
      SizeData(
        androidMaxUploadFileSize:
            androidMaxUploadFileSize ?? this.androidMaxUploadFileSize,
        iosMaxUploadFileSize: iosMaxUploadFileSize ?? this.iosMaxUploadFileSize,
        htmL5MaxUploadFileSize:
            htmL5MaxUploadFileSize ?? this.htmL5MaxUploadFileSize,
        additionalFieldEmail: additionalFieldEmail ?? this.additionalFieldEmail,
        additionalFieldTextArea:
            additionalFieldTextArea ?? this.additionalFieldTextArea,
        additionalFieldTextBox:
            additionalFieldTextBox ?? this.additionalFieldTextBox,
        additionalFieldLocation:
            additionalFieldLocation ?? this.additionalFieldLocation,
        comment: comment ?? this.comment,
        failureNote: failureNote ?? this.failureNote,
        correctiveNote: correctiveNote ?? this.correctiveNote,
        barcode: barcode ?? this.barcode,
        taskComment: taskComment ?? this.taskComment,
        sessionTimeOut: sessionTimeOut ?? this.sessionTimeOut,
        signDeclarationTextSize:
            signDeclarationTextSize ?? this.signDeclarationTextSize,
        nfcComment: nfcComment ?? this.nfcComment,
        captureImageNote: captureImageNote ?? this.captureImageNote,
        nonAuditableComment: nonAuditableComment ?? this.nonAuditableComment,
        flipScoreTime: flipScoreTime ?? this.flipScoreTime,
        eventNumber: eventNumber ?? this.eventNumber,
        eventTitle: eventTitle ?? this.eventTitle,
        eventDescription: eventDescription ?? this.eventDescription,
        eventRiskAssociated: eventRiskAssociated ?? this.eventRiskAssociated,
        eventImmediateActionTaken:
            eventImmediateActionTaken ?? this.eventImmediateActionTaken,
        eventCorrectiveActions:
            eventCorrectiveActions ?? this.eventCorrectiveActions,
        eventSituationTitle: eventSituationTitle ?? this.eventSituationTitle,
        eventSituationDetails:
            eventSituationDetails ?? this.eventSituationDetails,
        eventKeyIssueTitle: eventKeyIssueTitle ?? this.eventKeyIssueTitle,
        eventKeyIssueActionTitle:
            eventKeyIssueActionTitle ?? this.eventKeyIssueActionTitle,
        injuryPersonName: injuryPersonName ?? this.injuryPersonName,
        injurySupervisiorName:
            injurySupervisiorName ?? this.injurySupervisiorName,
        eventInjuryComment: eventInjuryComment ?? this.eventInjuryComment,
        eventScheduleTitle: eventScheduleTitle ?? this.eventScheduleTitle,
        keyIssueActionComment:
            keyIssueActionComment ?? this.keyIssueActionComment,
        situationTitle: situationTitle ?? this.situationTitle,
        situationDetail: situationDetail ?? this.situationDetail,
        lostHours: lostHours ?? this.lostHours,
        initialRootCauses: initialRootCauses ?? this.initialRootCauses,
        finalClosureNotes: finalClosureNotes ?? this.finalClosureNotes,
        maxEventAttachment: maxEventAttachment ?? this.maxEventAttachment,
        maxEventInvestigationAttachment: maxEventInvestigationAttachment ??
            this.maxEventInvestigationAttachment,
        defaultTaskDueDateDays:
            defaultTaskDueDateDays ?? this.defaultTaskDueDateDays,
      );
  @override
  String toString() {
    return (StringBuffer('SizeData(')
          ..write('androidMaxUploadFileSize: $androidMaxUploadFileSize, ')
          ..write('iosMaxUploadFileSize: $iosMaxUploadFileSize, ')
          ..write('htmL5MaxUploadFileSize: $htmL5MaxUploadFileSize, ')
          ..write('additionalFieldEmail: $additionalFieldEmail, ')
          ..write('additionalFieldTextArea: $additionalFieldTextArea, ')
          ..write('additionalFieldTextBox: $additionalFieldTextBox, ')
          ..write('additionalFieldLocation: $additionalFieldLocation, ')
          ..write('comment: $comment, ')
          ..write('failureNote: $failureNote, ')
          ..write('correctiveNote: $correctiveNote, ')
          ..write('barcode: $barcode, ')
          ..write('taskComment: $taskComment, ')
          ..write('sessionTimeOut: $sessionTimeOut, ')
          ..write('signDeclarationTextSize: $signDeclarationTextSize, ')
          ..write('nfcComment: $nfcComment, ')
          ..write('captureImageNote: $captureImageNote, ')
          ..write('nonAuditableComment: $nonAuditableComment, ')
          ..write('flipScoreTime: $flipScoreTime, ')
          ..write('eventNumber: $eventNumber, ')
          ..write('eventTitle: $eventTitle, ')
          ..write('eventDescription: $eventDescription, ')
          ..write('eventRiskAssociated: $eventRiskAssociated, ')
          ..write('eventImmediateActionTaken: $eventImmediateActionTaken, ')
          ..write('eventCorrectiveActions: $eventCorrectiveActions, ')
          ..write('eventSituationTitle: $eventSituationTitle, ')
          ..write('eventSituationDetails: $eventSituationDetails, ')
          ..write('eventKeyIssueTitle: $eventKeyIssueTitle, ')
          ..write('eventKeyIssueActionTitle: $eventKeyIssueActionTitle, ')
          ..write('injuryPersonName: $injuryPersonName, ')
          ..write('injurySupervisiorName: $injurySupervisiorName, ')
          ..write('eventInjuryComment: $eventInjuryComment, ')
          ..write('eventScheduleTitle: $eventScheduleTitle, ')
          ..write('keyIssueActionComment: $keyIssueActionComment, ')
          ..write('situationTitle: $situationTitle, ')
          ..write('situationDetail: $situationDetail, ')
          ..write('lostHours: $lostHours, ')
          ..write('initialRootCauses: $initialRootCauses, ')
          ..write('finalClosureNotes: $finalClosureNotes, ')
          ..write('maxEventAttachment: $maxEventAttachment, ')
          ..write(
              'maxEventInvestigationAttachment: $maxEventInvestigationAttachment, ')
          ..write('defaultTaskDueDateDays: $defaultTaskDueDateDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        androidMaxUploadFileSize,
        iosMaxUploadFileSize,
        htmL5MaxUploadFileSize,
        additionalFieldEmail,
        additionalFieldTextArea,
        additionalFieldTextBox,
        additionalFieldLocation,
        comment,
        failureNote,
        correctiveNote,
        barcode,
        taskComment,
        sessionTimeOut,
        signDeclarationTextSize,
        nfcComment,
        captureImageNote,
        nonAuditableComment,
        flipScoreTime,
        eventNumber,
        eventTitle,
        eventDescription,
        eventRiskAssociated,
        eventImmediateActionTaken,
        eventCorrectiveActions,
        eventSituationTitle,
        eventSituationDetails,
        eventKeyIssueTitle,
        eventKeyIssueActionTitle,
        injuryPersonName,
        injurySupervisiorName,
        eventInjuryComment,
        eventScheduleTitle,
        keyIssueActionComment,
        situationTitle,
        situationDetail,
        lostHours,
        initialRootCauses,
        finalClosureNotes,
        maxEventAttachment,
        maxEventInvestigationAttachment,
        defaultTaskDueDateDays
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SizeData &&
          other.androidMaxUploadFileSize == this.androidMaxUploadFileSize &&
          other.iosMaxUploadFileSize == this.iosMaxUploadFileSize &&
          other.htmL5MaxUploadFileSize == this.htmL5MaxUploadFileSize &&
          other.additionalFieldEmail == this.additionalFieldEmail &&
          other.additionalFieldTextArea == this.additionalFieldTextArea &&
          other.additionalFieldTextBox == this.additionalFieldTextBox &&
          other.additionalFieldLocation == this.additionalFieldLocation &&
          other.comment == this.comment &&
          other.failureNote == this.failureNote &&
          other.correctiveNote == this.correctiveNote &&
          other.barcode == this.barcode &&
          other.taskComment == this.taskComment &&
          other.sessionTimeOut == this.sessionTimeOut &&
          other.signDeclarationTextSize == this.signDeclarationTextSize &&
          other.nfcComment == this.nfcComment &&
          other.captureImageNote == this.captureImageNote &&
          other.nonAuditableComment == this.nonAuditableComment &&
          other.flipScoreTime == this.flipScoreTime &&
          other.eventNumber == this.eventNumber &&
          other.eventTitle == this.eventTitle &&
          other.eventDescription == this.eventDescription &&
          other.eventRiskAssociated == this.eventRiskAssociated &&
          other.eventImmediateActionTaken == this.eventImmediateActionTaken &&
          other.eventCorrectiveActions == this.eventCorrectiveActions &&
          other.eventSituationTitle == this.eventSituationTitle &&
          other.eventSituationDetails == this.eventSituationDetails &&
          other.eventKeyIssueTitle == this.eventKeyIssueTitle &&
          other.eventKeyIssueActionTitle == this.eventKeyIssueActionTitle &&
          other.injuryPersonName == this.injuryPersonName &&
          other.injurySupervisiorName == this.injurySupervisiorName &&
          other.eventInjuryComment == this.eventInjuryComment &&
          other.eventScheduleTitle == this.eventScheduleTitle &&
          other.keyIssueActionComment == this.keyIssueActionComment &&
          other.situationTitle == this.situationTitle &&
          other.situationDetail == this.situationDetail &&
          other.lostHours == this.lostHours &&
          other.initialRootCauses == this.initialRootCauses &&
          other.finalClosureNotes == this.finalClosureNotes &&
          other.maxEventAttachment == this.maxEventAttachment &&
          other.maxEventInvestigationAttachment ==
              this.maxEventInvestigationAttachment &&
          other.defaultTaskDueDateDays == this.defaultTaskDueDateDays);
}

class SizeCompanion extends UpdateCompanion<SizeData> {
  final Value<int> androidMaxUploadFileSize;
  final Value<int> iosMaxUploadFileSize;
  final Value<int> htmL5MaxUploadFileSize;
  final Value<int> additionalFieldEmail;
  final Value<int> additionalFieldTextArea;
  final Value<int> additionalFieldTextBox;
  final Value<int> additionalFieldLocation;
  final Value<int> comment;
  final Value<int> failureNote;
  final Value<int> correctiveNote;
  final Value<int> barcode;
  final Value<int> taskComment;
  final Value<int> sessionTimeOut;
  final Value<int> signDeclarationTextSize;
  final Value<int> nfcComment;
  final Value<int> captureImageNote;
  final Value<int> nonAuditableComment;
  final Value<int> flipScoreTime;
  final Value<int> eventNumber;
  final Value<int> eventTitle;
  final Value<int> eventDescription;
  final Value<int> eventRiskAssociated;
  final Value<int> eventImmediateActionTaken;
  final Value<int> eventCorrectiveActions;
  final Value<int> eventSituationTitle;
  final Value<int> eventSituationDetails;
  final Value<int> eventKeyIssueTitle;
  final Value<int> eventKeyIssueActionTitle;
  final Value<int> injuryPersonName;
  final Value<int> injurySupervisiorName;
  final Value<int> eventInjuryComment;
  final Value<int> eventScheduleTitle;
  final Value<int> keyIssueActionComment;
  final Value<int> situationTitle;
  final Value<int> situationDetail;
  final Value<int> lostHours;
  final Value<int> initialRootCauses;
  final Value<int> finalClosureNotes;
  final Value<int> maxEventAttachment;
  final Value<int> maxEventInvestigationAttachment;
  final Value<int> defaultTaskDueDateDays;
  const SizeCompanion({
    this.androidMaxUploadFileSize = const Value.absent(),
    this.iosMaxUploadFileSize = const Value.absent(),
    this.htmL5MaxUploadFileSize = const Value.absent(),
    this.additionalFieldEmail = const Value.absent(),
    this.additionalFieldTextArea = const Value.absent(),
    this.additionalFieldTextBox = const Value.absent(),
    this.additionalFieldLocation = const Value.absent(),
    this.comment = const Value.absent(),
    this.failureNote = const Value.absent(),
    this.correctiveNote = const Value.absent(),
    this.barcode = const Value.absent(),
    this.taskComment = const Value.absent(),
    this.sessionTimeOut = const Value.absent(),
    this.signDeclarationTextSize = const Value.absent(),
    this.nfcComment = const Value.absent(),
    this.captureImageNote = const Value.absent(),
    this.nonAuditableComment = const Value.absent(),
    this.flipScoreTime = const Value.absent(),
    this.eventNumber = const Value.absent(),
    this.eventTitle = const Value.absent(),
    this.eventDescription = const Value.absent(),
    this.eventRiskAssociated = const Value.absent(),
    this.eventImmediateActionTaken = const Value.absent(),
    this.eventCorrectiveActions = const Value.absent(),
    this.eventSituationTitle = const Value.absent(),
    this.eventSituationDetails = const Value.absent(),
    this.eventKeyIssueTitle = const Value.absent(),
    this.eventKeyIssueActionTitle = const Value.absent(),
    this.injuryPersonName = const Value.absent(),
    this.injurySupervisiorName = const Value.absent(),
    this.eventInjuryComment = const Value.absent(),
    this.eventScheduleTitle = const Value.absent(),
    this.keyIssueActionComment = const Value.absent(),
    this.situationTitle = const Value.absent(),
    this.situationDetail = const Value.absent(),
    this.lostHours = const Value.absent(),
    this.initialRootCauses = const Value.absent(),
    this.finalClosureNotes = const Value.absent(),
    this.maxEventAttachment = const Value.absent(),
    this.maxEventInvestigationAttachment = const Value.absent(),
    this.defaultTaskDueDateDays = const Value.absent(),
  });
  SizeCompanion.insert({
    required int androidMaxUploadFileSize,
    required int iosMaxUploadFileSize,
    required int htmL5MaxUploadFileSize,
    required int additionalFieldEmail,
    required int additionalFieldTextArea,
    required int additionalFieldTextBox,
    required int additionalFieldLocation,
    required int comment,
    required int failureNote,
    required int correctiveNote,
    required int barcode,
    required int taskComment,
    required int sessionTimeOut,
    required int signDeclarationTextSize,
    required int nfcComment,
    required int captureImageNote,
    required int nonAuditableComment,
    required int flipScoreTime,
    required int eventNumber,
    required int eventTitle,
    required int eventDescription,
    required int eventRiskAssociated,
    required int eventImmediateActionTaken,
    required int eventCorrectiveActions,
    required int eventSituationTitle,
    required int eventSituationDetails,
    required int eventKeyIssueTitle,
    required int eventKeyIssueActionTitle,
    required int injuryPersonName,
    required int injurySupervisiorName,
    required int eventInjuryComment,
    required int eventScheduleTitle,
    required int keyIssueActionComment,
    required int situationTitle,
    required int situationDetail,
    required int lostHours,
    required int initialRootCauses,
    required int finalClosureNotes,
    required int maxEventAttachment,
    required int maxEventInvestigationAttachment,
    required int defaultTaskDueDateDays,
  })  : androidMaxUploadFileSize = Value(androidMaxUploadFileSize),
        iosMaxUploadFileSize = Value(iosMaxUploadFileSize),
        htmL5MaxUploadFileSize = Value(htmL5MaxUploadFileSize),
        additionalFieldEmail = Value(additionalFieldEmail),
        additionalFieldTextArea = Value(additionalFieldTextArea),
        additionalFieldTextBox = Value(additionalFieldTextBox),
        additionalFieldLocation = Value(additionalFieldLocation),
        comment = Value(comment),
        failureNote = Value(failureNote),
        correctiveNote = Value(correctiveNote),
        barcode = Value(barcode),
        taskComment = Value(taskComment),
        sessionTimeOut = Value(sessionTimeOut),
        signDeclarationTextSize = Value(signDeclarationTextSize),
        nfcComment = Value(nfcComment),
        captureImageNote = Value(captureImageNote),
        nonAuditableComment = Value(nonAuditableComment),
        flipScoreTime = Value(flipScoreTime),
        eventNumber = Value(eventNumber),
        eventTitle = Value(eventTitle),
        eventDescription = Value(eventDescription),
        eventRiskAssociated = Value(eventRiskAssociated),
        eventImmediateActionTaken = Value(eventImmediateActionTaken),
        eventCorrectiveActions = Value(eventCorrectiveActions),
        eventSituationTitle = Value(eventSituationTitle),
        eventSituationDetails = Value(eventSituationDetails),
        eventKeyIssueTitle = Value(eventKeyIssueTitle),
        eventKeyIssueActionTitle = Value(eventKeyIssueActionTitle),
        injuryPersonName = Value(injuryPersonName),
        injurySupervisiorName = Value(injurySupervisiorName),
        eventInjuryComment = Value(eventInjuryComment),
        eventScheduleTitle = Value(eventScheduleTitle),
        keyIssueActionComment = Value(keyIssueActionComment),
        situationTitle = Value(situationTitle),
        situationDetail = Value(situationDetail),
        lostHours = Value(lostHours),
        initialRootCauses = Value(initialRootCauses),
        finalClosureNotes = Value(finalClosureNotes),
        maxEventAttachment = Value(maxEventAttachment),
        maxEventInvestigationAttachment =
            Value(maxEventInvestigationAttachment),
        defaultTaskDueDateDays = Value(defaultTaskDueDateDays);
  static Insertable<SizeData> custom({
    Expression<int>? androidMaxUploadFileSize,
    Expression<int>? iosMaxUploadFileSize,
    Expression<int>? htmL5MaxUploadFileSize,
    Expression<int>? additionalFieldEmail,
    Expression<int>? additionalFieldTextArea,
    Expression<int>? additionalFieldTextBox,
    Expression<int>? additionalFieldLocation,
    Expression<int>? comment,
    Expression<int>? failureNote,
    Expression<int>? correctiveNote,
    Expression<int>? barcode,
    Expression<int>? taskComment,
    Expression<int>? sessionTimeOut,
    Expression<int>? signDeclarationTextSize,
    Expression<int>? nfcComment,
    Expression<int>? captureImageNote,
    Expression<int>? nonAuditableComment,
    Expression<int>? flipScoreTime,
    Expression<int>? eventNumber,
    Expression<int>? eventTitle,
    Expression<int>? eventDescription,
    Expression<int>? eventRiskAssociated,
    Expression<int>? eventImmediateActionTaken,
    Expression<int>? eventCorrectiveActions,
    Expression<int>? eventSituationTitle,
    Expression<int>? eventSituationDetails,
    Expression<int>? eventKeyIssueTitle,
    Expression<int>? eventKeyIssueActionTitle,
    Expression<int>? injuryPersonName,
    Expression<int>? injurySupervisiorName,
    Expression<int>? eventInjuryComment,
    Expression<int>? eventScheduleTitle,
    Expression<int>? keyIssueActionComment,
    Expression<int>? situationTitle,
    Expression<int>? situationDetail,
    Expression<int>? lostHours,
    Expression<int>? initialRootCauses,
    Expression<int>? finalClosureNotes,
    Expression<int>? maxEventAttachment,
    Expression<int>? maxEventInvestigationAttachment,
    Expression<int>? defaultTaskDueDateDays,
  }) {
    return RawValuesInsertable({
      if (androidMaxUploadFileSize != null)
        'androidMaxUploadFileSize': androidMaxUploadFileSize,
      if (iosMaxUploadFileSize != null)
        'iosMaxUploadFileSize': iosMaxUploadFileSize,
      if (htmL5MaxUploadFileSize != null)
        'htmL5MaxUploadFileSize': htmL5MaxUploadFileSize,
      if (additionalFieldEmail != null)
        'additionalFieldEmail': additionalFieldEmail,
      if (additionalFieldTextArea != null)
        'additionalFieldTextArea': additionalFieldTextArea,
      if (additionalFieldTextBox != null)
        'additionalFieldTextBox': additionalFieldTextBox,
      if (additionalFieldLocation != null)
        'additionalFieldLocation': additionalFieldLocation,
      if (comment != null) 'comment': comment,
      if (failureNote != null) 'failureNote': failureNote,
      if (correctiveNote != null) 'correctiveNote': correctiveNote,
      if (barcode != null) 'barcode': barcode,
      if (taskComment != null) 'taskComment': taskComment,
      if (sessionTimeOut != null) 'sessionTimeOut': sessionTimeOut,
      if (signDeclarationTextSize != null)
        'signDeclarationTextSize': signDeclarationTextSize,
      if (nfcComment != null) 'nfcComment': nfcComment,
      if (captureImageNote != null) 'captureImageNote': captureImageNote,
      if (nonAuditableComment != null)
        'nonAuditableComment': nonAuditableComment,
      if (flipScoreTime != null) 'flipScoreTime': flipScoreTime,
      if (eventNumber != null) 'eventNumber': eventNumber,
      if (eventTitle != null) 'eventTitle': eventTitle,
      if (eventDescription != null) 'eventDescription': eventDescription,
      if (eventRiskAssociated != null)
        'eventRiskAssociated': eventRiskAssociated,
      if (eventImmediateActionTaken != null)
        'eventImmediateActionTaken': eventImmediateActionTaken,
      if (eventCorrectiveActions != null)
        'eventCorrectiveActions': eventCorrectiveActions,
      if (eventSituationTitle != null)
        'eventSituationTitle': eventSituationTitle,
      if (eventSituationDetails != null)
        'eventSituationDetails': eventSituationDetails,
      if (eventKeyIssueTitle != null) 'eventKeyIssueTitle': eventKeyIssueTitle,
      if (eventKeyIssueActionTitle != null)
        'eventKeyIssueActionTitle': eventKeyIssueActionTitle,
      if (injuryPersonName != null) 'injuryPersonName': injuryPersonName,
      if (injurySupervisiorName != null)
        'injurySupervisiorName': injurySupervisiorName,
      if (eventInjuryComment != null) 'eventInjuryComment': eventInjuryComment,
      if (eventScheduleTitle != null) 'eventScheduleTitle': eventScheduleTitle,
      if (keyIssueActionComment != null)
        'keyIssueActionComment': keyIssueActionComment,
      if (situationTitle != null) 'situationTitle': situationTitle,
      if (situationDetail != null) 'situationDetail': situationDetail,
      if (lostHours != null) 'lostHours': lostHours,
      if (initialRootCauses != null) 'initialRootCauses': initialRootCauses,
      if (finalClosureNotes != null) 'finalClosureNotes': finalClosureNotes,
      if (maxEventAttachment != null) 'maxEventAttachment': maxEventAttachment,
      if (maxEventInvestigationAttachment != null)
        'maxEventInvestigationAttachment': maxEventInvestigationAttachment,
      if (defaultTaskDueDateDays != null)
        'defaultTaskDueDateDays': defaultTaskDueDateDays,
    });
  }

  SizeCompanion copyWith(
      {Value<int>? androidMaxUploadFileSize,
      Value<int>? iosMaxUploadFileSize,
      Value<int>? htmL5MaxUploadFileSize,
      Value<int>? additionalFieldEmail,
      Value<int>? additionalFieldTextArea,
      Value<int>? additionalFieldTextBox,
      Value<int>? additionalFieldLocation,
      Value<int>? comment,
      Value<int>? failureNote,
      Value<int>? correctiveNote,
      Value<int>? barcode,
      Value<int>? taskComment,
      Value<int>? sessionTimeOut,
      Value<int>? signDeclarationTextSize,
      Value<int>? nfcComment,
      Value<int>? captureImageNote,
      Value<int>? nonAuditableComment,
      Value<int>? flipScoreTime,
      Value<int>? eventNumber,
      Value<int>? eventTitle,
      Value<int>? eventDescription,
      Value<int>? eventRiskAssociated,
      Value<int>? eventImmediateActionTaken,
      Value<int>? eventCorrectiveActions,
      Value<int>? eventSituationTitle,
      Value<int>? eventSituationDetails,
      Value<int>? eventKeyIssueTitle,
      Value<int>? eventKeyIssueActionTitle,
      Value<int>? injuryPersonName,
      Value<int>? injurySupervisiorName,
      Value<int>? eventInjuryComment,
      Value<int>? eventScheduleTitle,
      Value<int>? keyIssueActionComment,
      Value<int>? situationTitle,
      Value<int>? situationDetail,
      Value<int>? lostHours,
      Value<int>? initialRootCauses,
      Value<int>? finalClosureNotes,
      Value<int>? maxEventAttachment,
      Value<int>? maxEventInvestigationAttachment,
      Value<int>? defaultTaskDueDateDays}) {
    return SizeCompanion(
      androidMaxUploadFileSize:
          androidMaxUploadFileSize ?? this.androidMaxUploadFileSize,
      iosMaxUploadFileSize: iosMaxUploadFileSize ?? this.iosMaxUploadFileSize,
      htmL5MaxUploadFileSize:
          htmL5MaxUploadFileSize ?? this.htmL5MaxUploadFileSize,
      additionalFieldEmail: additionalFieldEmail ?? this.additionalFieldEmail,
      additionalFieldTextArea:
          additionalFieldTextArea ?? this.additionalFieldTextArea,
      additionalFieldTextBox:
          additionalFieldTextBox ?? this.additionalFieldTextBox,
      additionalFieldLocation:
          additionalFieldLocation ?? this.additionalFieldLocation,
      comment: comment ?? this.comment,
      failureNote: failureNote ?? this.failureNote,
      correctiveNote: correctiveNote ?? this.correctiveNote,
      barcode: barcode ?? this.barcode,
      taskComment: taskComment ?? this.taskComment,
      sessionTimeOut: sessionTimeOut ?? this.sessionTimeOut,
      signDeclarationTextSize:
          signDeclarationTextSize ?? this.signDeclarationTextSize,
      nfcComment: nfcComment ?? this.nfcComment,
      captureImageNote: captureImageNote ?? this.captureImageNote,
      nonAuditableComment: nonAuditableComment ?? this.nonAuditableComment,
      flipScoreTime: flipScoreTime ?? this.flipScoreTime,
      eventNumber: eventNumber ?? this.eventNumber,
      eventTitle: eventTitle ?? this.eventTitle,
      eventDescription: eventDescription ?? this.eventDescription,
      eventRiskAssociated: eventRiskAssociated ?? this.eventRiskAssociated,
      eventImmediateActionTaken:
          eventImmediateActionTaken ?? this.eventImmediateActionTaken,
      eventCorrectiveActions:
          eventCorrectiveActions ?? this.eventCorrectiveActions,
      eventSituationTitle: eventSituationTitle ?? this.eventSituationTitle,
      eventSituationDetails:
          eventSituationDetails ?? this.eventSituationDetails,
      eventKeyIssueTitle: eventKeyIssueTitle ?? this.eventKeyIssueTitle,
      eventKeyIssueActionTitle:
          eventKeyIssueActionTitle ?? this.eventKeyIssueActionTitle,
      injuryPersonName: injuryPersonName ?? this.injuryPersonName,
      injurySupervisiorName:
          injurySupervisiorName ?? this.injurySupervisiorName,
      eventInjuryComment: eventInjuryComment ?? this.eventInjuryComment,
      eventScheduleTitle: eventScheduleTitle ?? this.eventScheduleTitle,
      keyIssueActionComment:
          keyIssueActionComment ?? this.keyIssueActionComment,
      situationTitle: situationTitle ?? this.situationTitle,
      situationDetail: situationDetail ?? this.situationDetail,
      lostHours: lostHours ?? this.lostHours,
      initialRootCauses: initialRootCauses ?? this.initialRootCauses,
      finalClosureNotes: finalClosureNotes ?? this.finalClosureNotes,
      maxEventAttachment: maxEventAttachment ?? this.maxEventAttachment,
      maxEventInvestigationAttachment: maxEventInvestigationAttachment ??
          this.maxEventInvestigationAttachment,
      defaultTaskDueDateDays:
          defaultTaskDueDateDays ?? this.defaultTaskDueDateDays,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (androidMaxUploadFileSize.present) {
      map['androidMaxUploadFileSize'] =
          Variable<int>(androidMaxUploadFileSize.value);
    }
    if (iosMaxUploadFileSize.present) {
      map['iosMaxUploadFileSize'] = Variable<int>(iosMaxUploadFileSize.value);
    }
    if (htmL5MaxUploadFileSize.present) {
      map['htmL5MaxUploadFileSize'] =
          Variable<int>(htmL5MaxUploadFileSize.value);
    }
    if (additionalFieldEmail.present) {
      map['additionalFieldEmail'] = Variable<int>(additionalFieldEmail.value);
    }
    if (additionalFieldTextArea.present) {
      map['additionalFieldTextArea'] =
          Variable<int>(additionalFieldTextArea.value);
    }
    if (additionalFieldTextBox.present) {
      map['additionalFieldTextBox'] =
          Variable<int>(additionalFieldTextBox.value);
    }
    if (additionalFieldLocation.present) {
      map['additionalFieldLocation'] =
          Variable<int>(additionalFieldLocation.value);
    }
    if (comment.present) {
      map['comment'] = Variable<int>(comment.value);
    }
    if (failureNote.present) {
      map['failureNote'] = Variable<int>(failureNote.value);
    }
    if (correctiveNote.present) {
      map['correctiveNote'] = Variable<int>(correctiveNote.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<int>(barcode.value);
    }
    if (taskComment.present) {
      map['taskComment'] = Variable<int>(taskComment.value);
    }
    if (sessionTimeOut.present) {
      map['sessionTimeOut'] = Variable<int>(sessionTimeOut.value);
    }
    if (signDeclarationTextSize.present) {
      map['signDeclarationTextSize'] =
          Variable<int>(signDeclarationTextSize.value);
    }
    if (nfcComment.present) {
      map['nfcComment'] = Variable<int>(nfcComment.value);
    }
    if (captureImageNote.present) {
      map['captureImageNote'] = Variable<int>(captureImageNote.value);
    }
    if (nonAuditableComment.present) {
      map['nonAuditableComment'] = Variable<int>(nonAuditableComment.value);
    }
    if (flipScoreTime.present) {
      map['flipScoreTime'] = Variable<int>(flipScoreTime.value);
    }
    if (eventNumber.present) {
      map['eventNumber'] = Variable<int>(eventNumber.value);
    }
    if (eventTitle.present) {
      map['eventTitle'] = Variable<int>(eventTitle.value);
    }
    if (eventDescription.present) {
      map['eventDescription'] = Variable<int>(eventDescription.value);
    }
    if (eventRiskAssociated.present) {
      map['eventRiskAssociated'] = Variable<int>(eventRiskAssociated.value);
    }
    if (eventImmediateActionTaken.present) {
      map['eventImmediateActionTaken'] =
          Variable<int>(eventImmediateActionTaken.value);
    }
    if (eventCorrectiveActions.present) {
      map['eventCorrectiveActions'] =
          Variable<int>(eventCorrectiveActions.value);
    }
    if (eventSituationTitle.present) {
      map['eventSituationTitle'] = Variable<int>(eventSituationTitle.value);
    }
    if (eventSituationDetails.present) {
      map['eventSituationDetails'] = Variable<int>(eventSituationDetails.value);
    }
    if (eventKeyIssueTitle.present) {
      map['eventKeyIssueTitle'] = Variable<int>(eventKeyIssueTitle.value);
    }
    if (eventKeyIssueActionTitle.present) {
      map['eventKeyIssueActionTitle'] =
          Variable<int>(eventKeyIssueActionTitle.value);
    }
    if (injuryPersonName.present) {
      map['injuryPersonName'] = Variable<int>(injuryPersonName.value);
    }
    if (injurySupervisiorName.present) {
      map['injurySupervisiorName'] = Variable<int>(injurySupervisiorName.value);
    }
    if (eventInjuryComment.present) {
      map['eventInjuryComment'] = Variable<int>(eventInjuryComment.value);
    }
    if (eventScheduleTitle.present) {
      map['eventScheduleTitle'] = Variable<int>(eventScheduleTitle.value);
    }
    if (keyIssueActionComment.present) {
      map['keyIssueActionComment'] = Variable<int>(keyIssueActionComment.value);
    }
    if (situationTitle.present) {
      map['situationTitle'] = Variable<int>(situationTitle.value);
    }
    if (situationDetail.present) {
      map['situationDetail'] = Variable<int>(situationDetail.value);
    }
    if (lostHours.present) {
      map['lostHours'] = Variable<int>(lostHours.value);
    }
    if (initialRootCauses.present) {
      map['initialRootCauses'] = Variable<int>(initialRootCauses.value);
    }
    if (finalClosureNotes.present) {
      map['finalClosureNotes'] = Variable<int>(finalClosureNotes.value);
    }
    if (maxEventAttachment.present) {
      map['maxEventAttachment'] = Variable<int>(maxEventAttachment.value);
    }
    if (maxEventInvestigationAttachment.present) {
      map['maxEventInvestigationAttachment'] =
          Variable<int>(maxEventInvestigationAttachment.value);
    }
    if (defaultTaskDueDateDays.present) {
      map['defaultTaskDueDateDays'] =
          Variable<int>(defaultTaskDueDateDays.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SizeCompanion(')
          ..write('androidMaxUploadFileSize: $androidMaxUploadFileSize, ')
          ..write('iosMaxUploadFileSize: $iosMaxUploadFileSize, ')
          ..write('htmL5MaxUploadFileSize: $htmL5MaxUploadFileSize, ')
          ..write('additionalFieldEmail: $additionalFieldEmail, ')
          ..write('additionalFieldTextArea: $additionalFieldTextArea, ')
          ..write('additionalFieldTextBox: $additionalFieldTextBox, ')
          ..write('additionalFieldLocation: $additionalFieldLocation, ')
          ..write('comment: $comment, ')
          ..write('failureNote: $failureNote, ')
          ..write('correctiveNote: $correctiveNote, ')
          ..write('barcode: $barcode, ')
          ..write('taskComment: $taskComment, ')
          ..write('sessionTimeOut: $sessionTimeOut, ')
          ..write('signDeclarationTextSize: $signDeclarationTextSize, ')
          ..write('nfcComment: $nfcComment, ')
          ..write('captureImageNote: $captureImageNote, ')
          ..write('nonAuditableComment: $nonAuditableComment, ')
          ..write('flipScoreTime: $flipScoreTime, ')
          ..write('eventNumber: $eventNumber, ')
          ..write('eventTitle: $eventTitle, ')
          ..write('eventDescription: $eventDescription, ')
          ..write('eventRiskAssociated: $eventRiskAssociated, ')
          ..write('eventImmediateActionTaken: $eventImmediateActionTaken, ')
          ..write('eventCorrectiveActions: $eventCorrectiveActions, ')
          ..write('eventSituationTitle: $eventSituationTitle, ')
          ..write('eventSituationDetails: $eventSituationDetails, ')
          ..write('eventKeyIssueTitle: $eventKeyIssueTitle, ')
          ..write('eventKeyIssueActionTitle: $eventKeyIssueActionTitle, ')
          ..write('injuryPersonName: $injuryPersonName, ')
          ..write('injurySupervisiorName: $injurySupervisiorName, ')
          ..write('eventInjuryComment: $eventInjuryComment, ')
          ..write('eventScheduleTitle: $eventScheduleTitle, ')
          ..write('keyIssueActionComment: $keyIssueActionComment, ')
          ..write('situationTitle: $situationTitle, ')
          ..write('situationDetail: $situationDetail, ')
          ..write('lostHours: $lostHours, ')
          ..write('initialRootCauses: $initialRootCauses, ')
          ..write('finalClosureNotes: $finalClosureNotes, ')
          ..write('maxEventAttachment: $maxEventAttachment, ')
          ..write(
              'maxEventInvestigationAttachment: $maxEventInvestigationAttachment, ')
          ..write('defaultTaskDueDateDays: $defaultTaskDueDateDays')
          ..write(')'))
        .toString();
  }
}

class Size extends Table with TableInfo<Size, SizeData> {
  final GeneratedDatabase _db;
  final String? _alias;
  Size(this._db, [this._alias]);
  final VerificationMeta _androidMaxUploadFileSizeMeta =
      const VerificationMeta('androidMaxUploadFileSize');
  late final GeneratedColumn<int?> androidMaxUploadFileSize =
      GeneratedColumn<int?>('androidMaxUploadFileSize', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _iosMaxUploadFileSizeMeta =
      const VerificationMeta('iosMaxUploadFileSize');
  late final GeneratedColumn<int?> iosMaxUploadFileSize = GeneratedColumn<int?>(
      'iosMaxUploadFileSize', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _htmL5MaxUploadFileSizeMeta =
      const VerificationMeta('htmL5MaxUploadFileSize');
  late final GeneratedColumn<int?> htmL5MaxUploadFileSize =
      GeneratedColumn<int?>('htmL5MaxUploadFileSize', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _additionalFieldEmailMeta =
      const VerificationMeta('additionalFieldEmail');
  late final GeneratedColumn<int?> additionalFieldEmail = GeneratedColumn<int?>(
      'additionalFieldEmail', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _additionalFieldTextAreaMeta =
      const VerificationMeta('additionalFieldTextArea');
  late final GeneratedColumn<int?> additionalFieldTextArea =
      GeneratedColumn<int?>('additionalFieldTextArea', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _additionalFieldTextBoxMeta =
      const VerificationMeta('additionalFieldTextBox');
  late final GeneratedColumn<int?> additionalFieldTextBox =
      GeneratedColumn<int?>('additionalFieldTextBox', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _additionalFieldLocationMeta =
      const VerificationMeta('additionalFieldLocation');
  late final GeneratedColumn<int?> additionalFieldLocation =
      GeneratedColumn<int?>('additionalFieldLocation', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _commentMeta = const VerificationMeta('comment');
  late final GeneratedColumn<int?> comment = GeneratedColumn<int?>(
      'comment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _failureNoteMeta =
      const VerificationMeta('failureNote');
  late final GeneratedColumn<int?> failureNote = GeneratedColumn<int?>(
      'failureNote', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _correctiveNoteMeta =
      const VerificationMeta('correctiveNote');
  late final GeneratedColumn<int?> correctiveNote = GeneratedColumn<int?>(
      'correctiveNote', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _barcodeMeta = const VerificationMeta('barcode');
  late final GeneratedColumn<int?> barcode = GeneratedColumn<int?>(
      'barcode', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _taskCommentMeta =
      const VerificationMeta('taskComment');
  late final GeneratedColumn<int?> taskComment = GeneratedColumn<int?>(
      'taskComment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sessionTimeOutMeta =
      const VerificationMeta('sessionTimeOut');
  late final GeneratedColumn<int?> sessionTimeOut = GeneratedColumn<int?>(
      'sessionTimeOut', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _signDeclarationTextSizeMeta =
      const VerificationMeta('signDeclarationTextSize');
  late final GeneratedColumn<int?> signDeclarationTextSize =
      GeneratedColumn<int?>('signDeclarationTextSize', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _nfcCommentMeta = const VerificationMeta('nfcComment');
  late final GeneratedColumn<int?> nfcComment = GeneratedColumn<int?>(
      'nfcComment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _captureImageNoteMeta =
      const VerificationMeta('captureImageNote');
  late final GeneratedColumn<int?> captureImageNote = GeneratedColumn<int?>(
      'captureImageNote', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _nonAuditableCommentMeta =
      const VerificationMeta('nonAuditableComment');
  late final GeneratedColumn<int?> nonAuditableComment = GeneratedColumn<int?>(
      'nonAuditableComment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _flipScoreTimeMeta =
      const VerificationMeta('flipScoreTime');
  late final GeneratedColumn<int?> flipScoreTime = GeneratedColumn<int?>(
      'flipScoreTime', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventNumberMeta =
      const VerificationMeta('eventNumber');
  late final GeneratedColumn<int?> eventNumber = GeneratedColumn<int?>(
      'eventNumber', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventTitleMeta = const VerificationMeta('eventTitle');
  late final GeneratedColumn<int?> eventTitle = GeneratedColumn<int?>(
      'eventTitle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventDescriptionMeta =
      const VerificationMeta('eventDescription');
  late final GeneratedColumn<int?> eventDescription = GeneratedColumn<int?>(
      'eventDescription', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventRiskAssociatedMeta =
      const VerificationMeta('eventRiskAssociated');
  late final GeneratedColumn<int?> eventRiskAssociated = GeneratedColumn<int?>(
      'eventRiskAssociated', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventImmediateActionTakenMeta =
      const VerificationMeta('eventImmediateActionTaken');
  late final GeneratedColumn<int?> eventImmediateActionTaken =
      GeneratedColumn<int?>('eventImmediateActionTaken', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _eventCorrectiveActionsMeta =
      const VerificationMeta('eventCorrectiveActions');
  late final GeneratedColumn<int?> eventCorrectiveActions =
      GeneratedColumn<int?>('eventCorrectiveActions', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _eventSituationTitleMeta =
      const VerificationMeta('eventSituationTitle');
  late final GeneratedColumn<int?> eventSituationTitle = GeneratedColumn<int?>(
      'eventSituationTitle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventSituationDetailsMeta =
      const VerificationMeta('eventSituationDetails');
  late final GeneratedColumn<int?> eventSituationDetails =
      GeneratedColumn<int?>('eventSituationDetails', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _eventKeyIssueTitleMeta =
      const VerificationMeta('eventKeyIssueTitle');
  late final GeneratedColumn<int?> eventKeyIssueTitle = GeneratedColumn<int?>(
      'eventKeyIssueTitle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventKeyIssueActionTitleMeta =
      const VerificationMeta('eventKeyIssueActionTitle');
  late final GeneratedColumn<int?> eventKeyIssueActionTitle =
      GeneratedColumn<int?>('eventKeyIssueActionTitle', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _injuryPersonNameMeta =
      const VerificationMeta('injuryPersonName');
  late final GeneratedColumn<int?> injuryPersonName = GeneratedColumn<int?>(
      'injuryPersonName', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _injurySupervisiorNameMeta =
      const VerificationMeta('injurySupervisiorName');
  late final GeneratedColumn<int?> injurySupervisiorName =
      GeneratedColumn<int?>('injurySupervisiorName', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _eventInjuryCommentMeta =
      const VerificationMeta('eventInjuryComment');
  late final GeneratedColumn<int?> eventInjuryComment = GeneratedColumn<int?>(
      'eventInjuryComment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _eventScheduleTitleMeta =
      const VerificationMeta('eventScheduleTitle');
  late final GeneratedColumn<int?> eventScheduleTitle = GeneratedColumn<int?>(
      'eventScheduleTitle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _keyIssueActionCommentMeta =
      const VerificationMeta('keyIssueActionComment');
  late final GeneratedColumn<int?> keyIssueActionComment =
      GeneratedColumn<int?>('keyIssueActionComment', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _situationTitleMeta =
      const VerificationMeta('situationTitle');
  late final GeneratedColumn<int?> situationTitle = GeneratedColumn<int?>(
      'situationTitle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _situationDetailMeta =
      const VerificationMeta('situationDetail');
  late final GeneratedColumn<int?> situationDetail = GeneratedColumn<int?>(
      'situationDetail', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _lostHoursMeta = const VerificationMeta('lostHours');
  late final GeneratedColumn<int?> lostHours = GeneratedColumn<int?>(
      'lostHours', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _initialRootCausesMeta =
      const VerificationMeta('initialRootCauses');
  late final GeneratedColumn<int?> initialRootCauses = GeneratedColumn<int?>(
      'initialRootCauses', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _finalClosureNotesMeta =
      const VerificationMeta('finalClosureNotes');
  late final GeneratedColumn<int?> finalClosureNotes = GeneratedColumn<int?>(
      'finalClosureNotes', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _maxEventAttachmentMeta =
      const VerificationMeta('maxEventAttachment');
  late final GeneratedColumn<int?> maxEventAttachment = GeneratedColumn<int?>(
      'maxEventAttachment', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _maxEventInvestigationAttachmentMeta =
      const VerificationMeta('maxEventInvestigationAttachment');
  late final GeneratedColumn<int?> maxEventInvestigationAttachment =
      GeneratedColumn<int?>(
          'maxEventInvestigationAttachment', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _defaultTaskDueDateDaysMeta =
      const VerificationMeta('defaultTaskDueDateDays');
  late final GeneratedColumn<int?> defaultTaskDueDateDays =
      GeneratedColumn<int?>('defaultTaskDueDateDays', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        androidMaxUploadFileSize,
        iosMaxUploadFileSize,
        htmL5MaxUploadFileSize,
        additionalFieldEmail,
        additionalFieldTextArea,
        additionalFieldTextBox,
        additionalFieldLocation,
        comment,
        failureNote,
        correctiveNote,
        barcode,
        taskComment,
        sessionTimeOut,
        signDeclarationTextSize,
        nfcComment,
        captureImageNote,
        nonAuditableComment,
        flipScoreTime,
        eventNumber,
        eventTitle,
        eventDescription,
        eventRiskAssociated,
        eventImmediateActionTaken,
        eventCorrectiveActions,
        eventSituationTitle,
        eventSituationDetails,
        eventKeyIssueTitle,
        eventKeyIssueActionTitle,
        injuryPersonName,
        injurySupervisiorName,
        eventInjuryComment,
        eventScheduleTitle,
        keyIssueActionComment,
        situationTitle,
        situationDetail,
        lostHours,
        initialRootCauses,
        finalClosureNotes,
        maxEventAttachment,
        maxEventInvestigationAttachment,
        defaultTaskDueDateDays
      ];
  @override
  String get aliasedName => _alias ?? 'size';
  @override
  String get actualTableName => 'size';
  @override
  VerificationContext validateIntegrity(Insertable<SizeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('androidMaxUploadFileSize')) {
      context.handle(
          _androidMaxUploadFileSizeMeta,
          androidMaxUploadFileSize.isAcceptableOrUnknown(
              data['androidMaxUploadFileSize']!,
              _androidMaxUploadFileSizeMeta));
    } else if (isInserting) {
      context.missing(_androidMaxUploadFileSizeMeta);
    }
    if (data.containsKey('iosMaxUploadFileSize')) {
      context.handle(
          _iosMaxUploadFileSizeMeta,
          iosMaxUploadFileSize.isAcceptableOrUnknown(
              data['iosMaxUploadFileSize']!, _iosMaxUploadFileSizeMeta));
    } else if (isInserting) {
      context.missing(_iosMaxUploadFileSizeMeta);
    }
    if (data.containsKey('htmL5MaxUploadFileSize')) {
      context.handle(
          _htmL5MaxUploadFileSizeMeta,
          htmL5MaxUploadFileSize.isAcceptableOrUnknown(
              data['htmL5MaxUploadFileSize']!, _htmL5MaxUploadFileSizeMeta));
    } else if (isInserting) {
      context.missing(_htmL5MaxUploadFileSizeMeta);
    }
    if (data.containsKey('additionalFieldEmail')) {
      context.handle(
          _additionalFieldEmailMeta,
          additionalFieldEmail.isAcceptableOrUnknown(
              data['additionalFieldEmail']!, _additionalFieldEmailMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldEmailMeta);
    }
    if (data.containsKey('additionalFieldTextArea')) {
      context.handle(
          _additionalFieldTextAreaMeta,
          additionalFieldTextArea.isAcceptableOrUnknown(
              data['additionalFieldTextArea']!, _additionalFieldTextAreaMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldTextAreaMeta);
    }
    if (data.containsKey('additionalFieldTextBox')) {
      context.handle(
          _additionalFieldTextBoxMeta,
          additionalFieldTextBox.isAcceptableOrUnknown(
              data['additionalFieldTextBox']!, _additionalFieldTextBoxMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldTextBoxMeta);
    }
    if (data.containsKey('additionalFieldLocation')) {
      context.handle(
          _additionalFieldLocationMeta,
          additionalFieldLocation.isAcceptableOrUnknown(
              data['additionalFieldLocation']!, _additionalFieldLocationMeta));
    } else if (isInserting) {
      context.missing(_additionalFieldLocationMeta);
    }
    if (data.containsKey('comment')) {
      context.handle(_commentMeta,
          comment.isAcceptableOrUnknown(data['comment']!, _commentMeta));
    } else if (isInserting) {
      context.missing(_commentMeta);
    }
    if (data.containsKey('failureNote')) {
      context.handle(
          _failureNoteMeta,
          failureNote.isAcceptableOrUnknown(
              data['failureNote']!, _failureNoteMeta));
    } else if (isInserting) {
      context.missing(_failureNoteMeta);
    }
    if (data.containsKey('correctiveNote')) {
      context.handle(
          _correctiveNoteMeta,
          correctiveNote.isAcceptableOrUnknown(
              data['correctiveNote']!, _correctiveNoteMeta));
    } else if (isInserting) {
      context.missing(_correctiveNoteMeta);
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    } else if (isInserting) {
      context.missing(_barcodeMeta);
    }
    if (data.containsKey('taskComment')) {
      context.handle(
          _taskCommentMeta,
          taskComment.isAcceptableOrUnknown(
              data['taskComment']!, _taskCommentMeta));
    } else if (isInserting) {
      context.missing(_taskCommentMeta);
    }
    if (data.containsKey('sessionTimeOut')) {
      context.handle(
          _sessionTimeOutMeta,
          sessionTimeOut.isAcceptableOrUnknown(
              data['sessionTimeOut']!, _sessionTimeOutMeta));
    } else if (isInserting) {
      context.missing(_sessionTimeOutMeta);
    }
    if (data.containsKey('signDeclarationTextSize')) {
      context.handle(
          _signDeclarationTextSizeMeta,
          signDeclarationTextSize.isAcceptableOrUnknown(
              data['signDeclarationTextSize']!, _signDeclarationTextSizeMeta));
    } else if (isInserting) {
      context.missing(_signDeclarationTextSizeMeta);
    }
    if (data.containsKey('nfcComment')) {
      context.handle(
          _nfcCommentMeta,
          nfcComment.isAcceptableOrUnknown(
              data['nfcComment']!, _nfcCommentMeta));
    } else if (isInserting) {
      context.missing(_nfcCommentMeta);
    }
    if (data.containsKey('captureImageNote')) {
      context.handle(
          _captureImageNoteMeta,
          captureImageNote.isAcceptableOrUnknown(
              data['captureImageNote']!, _captureImageNoteMeta));
    } else if (isInserting) {
      context.missing(_captureImageNoteMeta);
    }
    if (data.containsKey('nonAuditableComment')) {
      context.handle(
          _nonAuditableCommentMeta,
          nonAuditableComment.isAcceptableOrUnknown(
              data['nonAuditableComment']!, _nonAuditableCommentMeta));
    } else if (isInserting) {
      context.missing(_nonAuditableCommentMeta);
    }
    if (data.containsKey('flipScoreTime')) {
      context.handle(
          _flipScoreTimeMeta,
          flipScoreTime.isAcceptableOrUnknown(
              data['flipScoreTime']!, _flipScoreTimeMeta));
    } else if (isInserting) {
      context.missing(_flipScoreTimeMeta);
    }
    if (data.containsKey('eventNumber')) {
      context.handle(
          _eventNumberMeta,
          eventNumber.isAcceptableOrUnknown(
              data['eventNumber']!, _eventNumberMeta));
    } else if (isInserting) {
      context.missing(_eventNumberMeta);
    }
    if (data.containsKey('eventTitle')) {
      context.handle(
          _eventTitleMeta,
          eventTitle.isAcceptableOrUnknown(
              data['eventTitle']!, _eventTitleMeta));
    } else if (isInserting) {
      context.missing(_eventTitleMeta);
    }
    if (data.containsKey('eventDescription')) {
      context.handle(
          _eventDescriptionMeta,
          eventDescription.isAcceptableOrUnknown(
              data['eventDescription']!, _eventDescriptionMeta));
    } else if (isInserting) {
      context.missing(_eventDescriptionMeta);
    }
    if (data.containsKey('eventRiskAssociated')) {
      context.handle(
          _eventRiskAssociatedMeta,
          eventRiskAssociated.isAcceptableOrUnknown(
              data['eventRiskAssociated']!, _eventRiskAssociatedMeta));
    } else if (isInserting) {
      context.missing(_eventRiskAssociatedMeta);
    }
    if (data.containsKey('eventImmediateActionTaken')) {
      context.handle(
          _eventImmediateActionTakenMeta,
          eventImmediateActionTaken.isAcceptableOrUnknown(
              data['eventImmediateActionTaken']!,
              _eventImmediateActionTakenMeta));
    } else if (isInserting) {
      context.missing(_eventImmediateActionTakenMeta);
    }
    if (data.containsKey('eventCorrectiveActions')) {
      context.handle(
          _eventCorrectiveActionsMeta,
          eventCorrectiveActions.isAcceptableOrUnknown(
              data['eventCorrectiveActions']!, _eventCorrectiveActionsMeta));
    } else if (isInserting) {
      context.missing(_eventCorrectiveActionsMeta);
    }
    if (data.containsKey('eventSituationTitle')) {
      context.handle(
          _eventSituationTitleMeta,
          eventSituationTitle.isAcceptableOrUnknown(
              data['eventSituationTitle']!, _eventSituationTitleMeta));
    } else if (isInserting) {
      context.missing(_eventSituationTitleMeta);
    }
    if (data.containsKey('eventSituationDetails')) {
      context.handle(
          _eventSituationDetailsMeta,
          eventSituationDetails.isAcceptableOrUnknown(
              data['eventSituationDetails']!, _eventSituationDetailsMeta));
    } else if (isInserting) {
      context.missing(_eventSituationDetailsMeta);
    }
    if (data.containsKey('eventKeyIssueTitle')) {
      context.handle(
          _eventKeyIssueTitleMeta,
          eventKeyIssueTitle.isAcceptableOrUnknown(
              data['eventKeyIssueTitle']!, _eventKeyIssueTitleMeta));
    } else if (isInserting) {
      context.missing(_eventKeyIssueTitleMeta);
    }
    if (data.containsKey('eventKeyIssueActionTitle')) {
      context.handle(
          _eventKeyIssueActionTitleMeta,
          eventKeyIssueActionTitle.isAcceptableOrUnknown(
              data['eventKeyIssueActionTitle']!,
              _eventKeyIssueActionTitleMeta));
    } else if (isInserting) {
      context.missing(_eventKeyIssueActionTitleMeta);
    }
    if (data.containsKey('injuryPersonName')) {
      context.handle(
          _injuryPersonNameMeta,
          injuryPersonName.isAcceptableOrUnknown(
              data['injuryPersonName']!, _injuryPersonNameMeta));
    } else if (isInserting) {
      context.missing(_injuryPersonNameMeta);
    }
    if (data.containsKey('injurySupervisiorName')) {
      context.handle(
          _injurySupervisiorNameMeta,
          injurySupervisiorName.isAcceptableOrUnknown(
              data['injurySupervisiorName']!, _injurySupervisiorNameMeta));
    } else if (isInserting) {
      context.missing(_injurySupervisiorNameMeta);
    }
    if (data.containsKey('eventInjuryComment')) {
      context.handle(
          _eventInjuryCommentMeta,
          eventInjuryComment.isAcceptableOrUnknown(
              data['eventInjuryComment']!, _eventInjuryCommentMeta));
    } else if (isInserting) {
      context.missing(_eventInjuryCommentMeta);
    }
    if (data.containsKey('eventScheduleTitle')) {
      context.handle(
          _eventScheduleTitleMeta,
          eventScheduleTitle.isAcceptableOrUnknown(
              data['eventScheduleTitle']!, _eventScheduleTitleMeta));
    } else if (isInserting) {
      context.missing(_eventScheduleTitleMeta);
    }
    if (data.containsKey('keyIssueActionComment')) {
      context.handle(
          _keyIssueActionCommentMeta,
          keyIssueActionComment.isAcceptableOrUnknown(
              data['keyIssueActionComment']!, _keyIssueActionCommentMeta));
    } else if (isInserting) {
      context.missing(_keyIssueActionCommentMeta);
    }
    if (data.containsKey('situationTitle')) {
      context.handle(
          _situationTitleMeta,
          situationTitle.isAcceptableOrUnknown(
              data['situationTitle']!, _situationTitleMeta));
    } else if (isInserting) {
      context.missing(_situationTitleMeta);
    }
    if (data.containsKey('situationDetail')) {
      context.handle(
          _situationDetailMeta,
          situationDetail.isAcceptableOrUnknown(
              data['situationDetail']!, _situationDetailMeta));
    } else if (isInserting) {
      context.missing(_situationDetailMeta);
    }
    if (data.containsKey('lostHours')) {
      context.handle(_lostHoursMeta,
          lostHours.isAcceptableOrUnknown(data['lostHours']!, _lostHoursMeta));
    } else if (isInserting) {
      context.missing(_lostHoursMeta);
    }
    if (data.containsKey('initialRootCauses')) {
      context.handle(
          _initialRootCausesMeta,
          initialRootCauses.isAcceptableOrUnknown(
              data['initialRootCauses']!, _initialRootCausesMeta));
    } else if (isInserting) {
      context.missing(_initialRootCausesMeta);
    }
    if (data.containsKey('finalClosureNotes')) {
      context.handle(
          _finalClosureNotesMeta,
          finalClosureNotes.isAcceptableOrUnknown(
              data['finalClosureNotes']!, _finalClosureNotesMeta));
    } else if (isInserting) {
      context.missing(_finalClosureNotesMeta);
    }
    if (data.containsKey('maxEventAttachment')) {
      context.handle(
          _maxEventAttachmentMeta,
          maxEventAttachment.isAcceptableOrUnknown(
              data['maxEventAttachment']!, _maxEventAttachmentMeta));
    } else if (isInserting) {
      context.missing(_maxEventAttachmentMeta);
    }
    if (data.containsKey('maxEventInvestigationAttachment')) {
      context.handle(
          _maxEventInvestigationAttachmentMeta,
          maxEventInvestigationAttachment.isAcceptableOrUnknown(
              data['maxEventInvestigationAttachment']!,
              _maxEventInvestigationAttachmentMeta));
    } else if (isInserting) {
      context.missing(_maxEventInvestigationAttachmentMeta);
    }
    if (data.containsKey('defaultTaskDueDateDays')) {
      context.handle(
          _defaultTaskDueDateDaysMeta,
          defaultTaskDueDateDays.isAcceptableOrUnknown(
              data['defaultTaskDueDateDays']!, _defaultTaskDueDateDaysMeta));
    } else if (isInserting) {
      context.missing(_defaultTaskDueDateDaysMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SizeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SizeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Size createAlias(String alias) {
    return Size(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditTeamTaskData extends DataClass
    implements Insertable<AuditTeamTaskData> {
  final int auditTeamMappingId;
  final int auditId;
  final int auditEntityId;
  final int teamId;
  final int memberId;
  AuditTeamTaskData(
      {required this.auditTeamMappingId,
      required this.auditId,
      required this.auditEntityId,
      required this.teamId,
      required this.memberId});
  factory AuditTeamTaskData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditTeamTaskData(
      auditTeamMappingId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditTeamMappingId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      auditEntityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditEntityId'])!,
      teamId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}teamId'])!,
      memberId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}memberId'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditTeamMappingId'] = Variable<int>(auditTeamMappingId);
    map['auditId'] = Variable<int>(auditId);
    map['auditEntityId'] = Variable<int>(auditEntityId);
    map['teamId'] = Variable<int>(teamId);
    map['memberId'] = Variable<int>(memberId);
    return map;
  }

  AuditTeamTaskCompanion toCompanion(bool nullToAbsent) {
    return AuditTeamTaskCompanion(
      auditTeamMappingId: Value(auditTeamMappingId),
      auditId: Value(auditId),
      auditEntityId: Value(auditEntityId),
      teamId: Value(teamId),
      memberId: Value(memberId),
    );
  }

  factory AuditTeamTaskData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditTeamTaskData(
      auditTeamMappingId: serializer.fromJson<int>(json['auditTeamMappingId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      auditEntityId: serializer.fromJson<int>(json['auditEntityId']),
      teamId: serializer.fromJson<int>(json['teamId']),
      memberId: serializer.fromJson<int>(json['memberId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditTeamMappingId': serializer.toJson<int>(auditTeamMappingId),
      'auditId': serializer.toJson<int>(auditId),
      'auditEntityId': serializer.toJson<int>(auditEntityId),
      'teamId': serializer.toJson<int>(teamId),
      'memberId': serializer.toJson<int>(memberId),
    };
  }

  AuditTeamTaskData copyWith(
          {int? auditTeamMappingId,
          int? auditId,
          int? auditEntityId,
          int? teamId,
          int? memberId}) =>
      AuditTeamTaskData(
        auditTeamMappingId: auditTeamMappingId ?? this.auditTeamMappingId,
        auditId: auditId ?? this.auditId,
        auditEntityId: auditEntityId ?? this.auditEntityId,
        teamId: teamId ?? this.teamId,
        memberId: memberId ?? this.memberId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditTeamTaskData(')
          ..write('auditTeamMappingId: $auditTeamMappingId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('teamId: $teamId, ')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(auditTeamMappingId, auditId, auditEntityId, teamId, memberId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditTeamTaskData &&
          other.auditTeamMappingId == this.auditTeamMappingId &&
          other.auditId == this.auditId &&
          other.auditEntityId == this.auditEntityId &&
          other.teamId == this.teamId &&
          other.memberId == this.memberId);
}

class AuditTeamTaskCompanion extends UpdateCompanion<AuditTeamTaskData> {
  final Value<int> auditTeamMappingId;
  final Value<int> auditId;
  final Value<int> auditEntityId;
  final Value<int> teamId;
  final Value<int> memberId;
  const AuditTeamTaskCompanion({
    this.auditTeamMappingId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditEntityId = const Value.absent(),
    this.teamId = const Value.absent(),
    this.memberId = const Value.absent(),
  });
  AuditTeamTaskCompanion.insert({
    this.auditTeamMappingId = const Value.absent(),
    required int auditId,
    required int auditEntityId,
    required int teamId,
    required int memberId,
  })  : auditId = Value(auditId),
        auditEntityId = Value(auditEntityId),
        teamId = Value(teamId),
        memberId = Value(memberId);
  static Insertable<AuditTeamTaskData> custom({
    Expression<int>? auditTeamMappingId,
    Expression<int>? auditId,
    Expression<int>? auditEntityId,
    Expression<int>? teamId,
    Expression<int>? memberId,
  }) {
    return RawValuesInsertable({
      if (auditTeamMappingId != null) 'auditTeamMappingId': auditTeamMappingId,
      if (auditId != null) 'auditId': auditId,
      if (auditEntityId != null) 'auditEntityId': auditEntityId,
      if (teamId != null) 'teamId': teamId,
      if (memberId != null) 'memberId': memberId,
    });
  }

  AuditTeamTaskCompanion copyWith(
      {Value<int>? auditTeamMappingId,
      Value<int>? auditId,
      Value<int>? auditEntityId,
      Value<int>? teamId,
      Value<int>? memberId}) {
    return AuditTeamTaskCompanion(
      auditTeamMappingId: auditTeamMappingId ?? this.auditTeamMappingId,
      auditId: auditId ?? this.auditId,
      auditEntityId: auditEntityId ?? this.auditEntityId,
      teamId: teamId ?? this.teamId,
      memberId: memberId ?? this.memberId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditTeamMappingId.present) {
      map['auditTeamMappingId'] = Variable<int>(auditTeamMappingId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (auditEntityId.present) {
      map['auditEntityId'] = Variable<int>(auditEntityId.value);
    }
    if (teamId.present) {
      map['teamId'] = Variable<int>(teamId.value);
    }
    if (memberId.present) {
      map['memberId'] = Variable<int>(memberId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditTeamTaskCompanion(')
          ..write('auditTeamMappingId: $auditTeamMappingId, ')
          ..write('auditId: $auditId, ')
          ..write('auditEntityId: $auditEntityId, ')
          ..write('teamId: $teamId, ')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }
}

class AuditTeamTask extends Table
    with TableInfo<AuditTeamTask, AuditTeamTaskData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditTeamTask(this._db, [this._alias]);
  final VerificationMeta _auditTeamMappingIdMeta =
      const VerificationMeta('auditTeamMappingId');
  late final GeneratedColumn<int?> auditTeamMappingId = GeneratedColumn<int?>(
      'auditTeamMappingId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditEntityIdMeta =
      const VerificationMeta('auditEntityId');
  late final GeneratedColumn<int?> auditEntityId = GeneratedColumn<int?>(
      'auditEntityId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _teamIdMeta = const VerificationMeta('teamId');
  late final GeneratedColumn<int?> teamId = GeneratedColumn<int?>(
      'teamId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _memberIdMeta = const VerificationMeta('memberId');
  late final GeneratedColumn<int?> memberId = GeneratedColumn<int?>(
      'memberId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [auditTeamMappingId, auditId, auditEntityId, teamId, memberId];
  @override
  String get aliasedName => _alias ?? 'auditTeamTask';
  @override
  String get actualTableName => 'auditTeamTask';
  @override
  VerificationContext validateIntegrity(Insertable<AuditTeamTaskData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditTeamMappingId')) {
      context.handle(
          _auditTeamMappingIdMeta,
          auditTeamMappingId.isAcceptableOrUnknown(
              data['auditTeamMappingId']!, _auditTeamMappingIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('auditEntityId')) {
      context.handle(
          _auditEntityIdMeta,
          auditEntityId.isAcceptableOrUnknown(
              data['auditEntityId']!, _auditEntityIdMeta));
    } else if (isInserting) {
      context.missing(_auditEntityIdMeta);
    }
    if (data.containsKey('teamId')) {
      context.handle(_teamIdMeta,
          teamId.isAcceptableOrUnknown(data['teamId']!, _teamIdMeta));
    } else if (isInserting) {
      context.missing(_teamIdMeta);
    }
    if (data.containsKey('memberId')) {
      context.handle(_memberIdMeta,
          memberId.isAcceptableOrUnknown(data['memberId']!, _memberIdMeta));
    } else if (isInserting) {
      context.missing(_memberIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditTeamMappingId};
  @override
  AuditTeamTaskData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditTeamTaskData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditTeamTask createAlias(String alias) {
    return AuditTeamTask(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TeamDetail extends DataClass implements Insertable<TeamDetail> {
  final int teamId;
  final String teamName;
  TeamDetail({required this.teamId, required this.teamName});
  factory TeamDetail.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TeamDetail(
      teamId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}teamId'])!,
      teamName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}teamName'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['teamId'] = Variable<int>(teamId);
    map['teamName'] = Variable<String>(teamName);
    return map;
  }

  TeamDetailsCompanion toCompanion(bool nullToAbsent) {
    return TeamDetailsCompanion(
      teamId: Value(teamId),
      teamName: Value(teamName),
    );
  }

  factory TeamDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeamDetail(
      teamId: serializer.fromJson<int>(json['teamId']),
      teamName: serializer.fromJson<String>(json['teamName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'teamId': serializer.toJson<int>(teamId),
      'teamName': serializer.toJson<String>(teamName),
    };
  }

  TeamDetail copyWith({int? teamId, String? teamName}) => TeamDetail(
        teamId: teamId ?? this.teamId,
        teamName: teamName ?? this.teamName,
      );
  @override
  String toString() {
    return (StringBuffer('TeamDetail(')
          ..write('teamId: $teamId, ')
          ..write('teamName: $teamName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(teamId, teamName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeamDetail &&
          other.teamId == this.teamId &&
          other.teamName == this.teamName);
}

class TeamDetailsCompanion extends UpdateCompanion<TeamDetail> {
  final Value<int> teamId;
  final Value<String> teamName;
  const TeamDetailsCompanion({
    this.teamId = const Value.absent(),
    this.teamName = const Value.absent(),
  });
  TeamDetailsCompanion.insert({
    this.teamId = const Value.absent(),
    required String teamName,
  }) : teamName = Value(teamName);
  static Insertable<TeamDetail> custom({
    Expression<int>? teamId,
    Expression<String>? teamName,
  }) {
    return RawValuesInsertable({
      if (teamId != null) 'teamId': teamId,
      if (teamName != null) 'teamName': teamName,
    });
  }

  TeamDetailsCompanion copyWith({Value<int>? teamId, Value<String>? teamName}) {
    return TeamDetailsCompanion(
      teamId: teamId ?? this.teamId,
      teamName: teamName ?? this.teamName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (teamId.present) {
      map['teamId'] = Variable<int>(teamId.value);
    }
    if (teamName.present) {
      map['teamName'] = Variable<String>(teamName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeamDetailsCompanion(')
          ..write('teamId: $teamId, ')
          ..write('teamName: $teamName')
          ..write(')'))
        .toString();
  }
}

class TeamDetails extends Table with TableInfo<TeamDetails, TeamDetail> {
  final GeneratedDatabase _db;
  final String? _alias;
  TeamDetails(this._db, [this._alias]);
  final VerificationMeta _teamIdMeta = const VerificationMeta('teamId');
  late final GeneratedColumn<int?> teamId = GeneratedColumn<int?>(
      'teamId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _teamNameMeta = const VerificationMeta('teamName');
  late final GeneratedColumn<String?> teamName = GeneratedColumn<String?>(
      'teamName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [teamId, teamName];
  @override
  String get aliasedName => _alias ?? 'teamDetails';
  @override
  String get actualTableName => 'teamDetails';
  @override
  VerificationContext validateIntegrity(Insertable<TeamDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('teamId')) {
      context.handle(_teamIdMeta,
          teamId.isAcceptableOrUnknown(data['teamId']!, _teamIdMeta));
    }
    if (data.containsKey('teamName')) {
      context.handle(_teamNameMeta,
          teamName.isAcceptableOrUnknown(data['teamName']!, _teamNameMeta));
    } else if (isInserting) {
      context.missing(_teamNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {teamId};
  @override
  TeamDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TeamDetail.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  TeamDetails createAlias(String alias) {
    return TeamDetails(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class UserDetail extends DataClass implements Insertable<UserDetail> {
  final String firstName;
  final String lastName;
  final int memberId;
  UserDetail(
      {required this.firstName,
      required this.lastName,
      required this.memberId});
  factory UserDetail.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserDetail(
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}firstName'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lastName'])!,
      memberId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}memberId'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['firstName'] = Variable<String>(firstName);
    map['lastName'] = Variable<String>(lastName);
    map['memberId'] = Variable<int>(memberId);
    return map;
  }

  UserDetailsCompanion toCompanion(bool nullToAbsent) {
    return UserDetailsCompanion(
      firstName: Value(firstName),
      lastName: Value(lastName),
      memberId: Value(memberId),
    );
  }

  factory UserDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserDetail(
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      memberId: serializer.fromJson<int>(json['memberId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'memberId': serializer.toJson<int>(memberId),
    };
  }

  UserDetail copyWith({String? firstName, String? lastName, int? memberId}) =>
      UserDetail(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        memberId: memberId ?? this.memberId,
      );
  @override
  String toString() {
    return (StringBuffer('UserDetail(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(firstName, lastName, memberId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDetail &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.memberId == this.memberId);
}

class UserDetailsCompanion extends UpdateCompanion<UserDetail> {
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<int> memberId;
  const UserDetailsCompanion({
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.memberId = const Value.absent(),
  });
  UserDetailsCompanion.insert({
    required String firstName,
    required String lastName,
    this.memberId = const Value.absent(),
  })  : firstName = Value(firstName),
        lastName = Value(lastName);
  static Insertable<UserDetail> custom({
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<int>? memberId,
  }) {
    return RawValuesInsertable({
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      if (memberId != null) 'memberId': memberId,
    });
  }

  UserDetailsCompanion copyWith(
      {Value<String>? firstName,
      Value<String>? lastName,
      Value<int>? memberId}) {
    return UserDetailsCompanion(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      memberId: memberId ?? this.memberId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (firstName.present) {
      map['firstName'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['lastName'] = Variable<String>(lastName.value);
    }
    if (memberId.present) {
      map['memberId'] = Variable<int>(memberId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDetailsCompanion(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }
}

class UserDetails extends Table with TableInfo<UserDetails, UserDetail> {
  final GeneratedDatabase _db;
  final String? _alias;
  UserDetails(this._db, [this._alias]);
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  late final GeneratedColumn<String?> firstName = GeneratedColumn<String?>(
      'firstName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'lastName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _memberIdMeta = const VerificationMeta('memberId');
  late final GeneratedColumn<int?> memberId = GeneratedColumn<int?>(
      'memberId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  @override
  List<GeneratedColumn> get $columns => [firstName, lastName, memberId];
  @override
  String get aliasedName => _alias ?? 'userDetails';
  @override
  String get actualTableName => 'userDetails';
  @override
  VerificationContext validateIntegrity(Insertable<UserDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('firstName')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['firstName']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('lastName')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['lastName']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('memberId')) {
      context.handle(_memberIdMeta,
          memberId.isAcceptableOrUnknown(data['memberId']!, _memberIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {memberId};
  @override
  UserDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserDetail.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  UserDetails createAlias(String alias) {
    return UserDetails(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class UserPermissionData extends DataClass
    implements Insertable<UserPermissionData> {
  final bool userTaskPermission;
  UserPermissionData({required this.userTaskPermission});
  factory UserPermissionData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserPermissionData(
      userTaskPermission: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}userTaskPermission'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['userTaskPermission'] = Variable<bool>(userTaskPermission);
    return map;
  }

  UserPermissionCompanion toCompanion(bool nullToAbsent) {
    return UserPermissionCompanion(
      userTaskPermission: Value(userTaskPermission),
    );
  }

  factory UserPermissionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserPermissionData(
      userTaskPermission: serializer.fromJson<bool>(json['userTaskPermission']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userTaskPermission': serializer.toJson<bool>(userTaskPermission),
    };
  }

  UserPermissionData copyWith({bool? userTaskPermission}) => UserPermissionData(
        userTaskPermission: userTaskPermission ?? this.userTaskPermission,
      );
  @override
  String toString() {
    return (StringBuffer('UserPermissionData(')
          ..write('userTaskPermission: $userTaskPermission')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => userTaskPermission.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPermissionData &&
          other.userTaskPermission == this.userTaskPermission);
}

class UserPermissionCompanion extends UpdateCompanion<UserPermissionData> {
  final Value<bool> userTaskPermission;
  const UserPermissionCompanion({
    this.userTaskPermission = const Value.absent(),
  });
  UserPermissionCompanion.insert({
    required bool userTaskPermission,
  }) : userTaskPermission = Value(userTaskPermission);
  static Insertable<UserPermissionData> custom({
    Expression<bool>? userTaskPermission,
  }) {
    return RawValuesInsertable({
      if (userTaskPermission != null) 'userTaskPermission': userTaskPermission,
    });
  }

  UserPermissionCompanion copyWith({Value<bool>? userTaskPermission}) {
    return UserPermissionCompanion(
      userTaskPermission: userTaskPermission ?? this.userTaskPermission,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userTaskPermission.present) {
      map['userTaskPermission'] = Variable<bool>(userTaskPermission.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPermissionCompanion(')
          ..write('userTaskPermission: $userTaskPermission')
          ..write(')'))
        .toString();
  }
}

class UserPermission extends Table
    with TableInfo<UserPermission, UserPermissionData> {
  final GeneratedDatabase _db;
  final String? _alias;
  UserPermission(this._db, [this._alias]);
  final VerificationMeta _userTaskPermissionMeta =
      const VerificationMeta('userTaskPermission');
  late final GeneratedColumn<bool?> userTaskPermission = GeneratedColumn<bool?>(
      'userTaskPermission', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [userTaskPermission];
  @override
  String get aliasedName => _alias ?? 'userPermission';
  @override
  String get actualTableName => 'userPermission';
  @override
  VerificationContext validateIntegrity(Insertable<UserPermissionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('userTaskPermission')) {
      context.handle(
          _userTaskPermissionMeta,
          userTaskPermission.isAcceptableOrUnknown(
              data['userTaskPermission']!, _userTaskPermissionMeta));
    } else if (isInserting) {
      context.missing(_userTaskPermissionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  UserPermissionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserPermissionData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  UserPermission createAlias(String alias) {
    return UserPermission(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class OccurrenceScheduleDate extends DataClass
    implements Insertable<OccurrenceScheduleDate> {
  final int occurrenceScheduleDateId;
  final int auditId;
  final int auditScheduleRuleId;
  final int scheduleOccurrenceId;
  final String scheduleRuleTitle;
  final String occurrenceTitle;
  final int occurrenceCycle;
  final DateTime? startDate;
  final DateTime? endDate;
  final int auditStatusId;
  final int userId;
  final bool isEntityRule;
  OccurrenceScheduleDate(
      {required this.occurrenceScheduleDateId,
      required this.auditId,
      required this.auditScheduleRuleId,
      required this.scheduleOccurrenceId,
      required this.scheduleRuleTitle,
      required this.occurrenceTitle,
      required this.occurrenceCycle,
      this.startDate,
      this.endDate,
      required this.auditStatusId,
      required this.userId,
      required this.isEntityRule});
  factory OccurrenceScheduleDate.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OccurrenceScheduleDate(
      occurrenceScheduleDateId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}occurrenceScheduleDateId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      auditScheduleRuleId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditScheduleRuleId'])!,
      scheduleOccurrenceId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}scheduleOccurrenceId'])!,
      scheduleRuleTitle: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}scheduleRuleTitle'])!,
      occurrenceTitle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}occurrenceTitle'])!,
      occurrenceCycle: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}occurrenceCycle'])!,
      startDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}startDate']),
      endDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}endDate']),
      auditStatusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditStatusId'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}userId'])!,
      isEntityRule: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}isEntityRule'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['occurrenceScheduleDateId'] = Variable<int>(occurrenceScheduleDateId);
    map['auditId'] = Variable<int>(auditId);
    map['auditScheduleRuleId'] = Variable<int>(auditScheduleRuleId);
    map['scheduleOccurrenceId'] = Variable<int>(scheduleOccurrenceId);
    map['scheduleRuleTitle'] = Variable<String>(scheduleRuleTitle);
    map['occurrenceTitle'] = Variable<String>(occurrenceTitle);
    map['occurrenceCycle'] = Variable<int>(occurrenceCycle);
    if (!nullToAbsent || startDate != null) {
      map['startDate'] = Variable<DateTime?>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['endDate'] = Variable<DateTime?>(endDate);
    }
    map['auditStatusId'] = Variable<int>(auditStatusId);
    map['userId'] = Variable<int>(userId);
    map['isEntityRule'] = Variable<bool>(isEntityRule);
    return map;
  }

  OccurrenceScheduleDatesCompanion toCompanion(bool nullToAbsent) {
    return OccurrenceScheduleDatesCompanion(
      occurrenceScheduleDateId: Value(occurrenceScheduleDateId),
      auditId: Value(auditId),
      auditScheduleRuleId: Value(auditScheduleRuleId),
      scheduleOccurrenceId: Value(scheduleOccurrenceId),
      scheduleRuleTitle: Value(scheduleRuleTitle),
      occurrenceTitle: Value(occurrenceTitle),
      occurrenceCycle: Value(occurrenceCycle),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      auditStatusId: Value(auditStatusId),
      userId: Value(userId),
      isEntityRule: Value(isEntityRule),
    );
  }

  factory OccurrenceScheduleDate.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OccurrenceScheduleDate(
      occurrenceScheduleDateId:
          serializer.fromJson<int>(json['occurrenceScheduleDateId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      auditScheduleRuleId:
          serializer.fromJson<int>(json['auditScheduleRuleId']),
      scheduleOccurrenceId:
          serializer.fromJson<int>(json['scheduleOccurrenceId']),
      scheduleRuleTitle: serializer.fromJson<String>(json['scheduleRuleTitle']),
      occurrenceTitle: serializer.fromJson<String>(json['occurrenceTitle']),
      occurrenceCycle: serializer.fromJson<int>(json['occurrenceCycle']),
      startDate: serializer.fromJson<DateTime?>(json['startDate']),
      endDate: serializer.fromJson<DateTime?>(json['endDate']),
      auditStatusId: serializer.fromJson<int>(json['auditStatusId']),
      userId: serializer.fromJson<int>(json['userId']),
      isEntityRule: serializer.fromJson<bool>(json['isEntityRule']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'occurrenceScheduleDateId':
          serializer.toJson<int>(occurrenceScheduleDateId),
      'auditId': serializer.toJson<int>(auditId),
      'auditScheduleRuleId': serializer.toJson<int>(auditScheduleRuleId),
      'scheduleOccurrenceId': serializer.toJson<int>(scheduleOccurrenceId),
      'scheduleRuleTitle': serializer.toJson<String>(scheduleRuleTitle),
      'occurrenceTitle': serializer.toJson<String>(occurrenceTitle),
      'occurrenceCycle': serializer.toJson<int>(occurrenceCycle),
      'startDate': serializer.toJson<DateTime?>(startDate),
      'endDate': serializer.toJson<DateTime?>(endDate),
      'auditStatusId': serializer.toJson<int>(auditStatusId),
      'userId': serializer.toJson<int>(userId),
      'isEntityRule': serializer.toJson<bool>(isEntityRule),
    };
  }

  OccurrenceScheduleDate copyWith(
          {int? occurrenceScheduleDateId,
          int? auditId,
          int? auditScheduleRuleId,
          int? scheduleOccurrenceId,
          String? scheduleRuleTitle,
          String? occurrenceTitle,
          int? occurrenceCycle,
          DateTime? startDate,
          DateTime? endDate,
          int? auditStatusId,
          int? userId,
          bool? isEntityRule}) =>
      OccurrenceScheduleDate(
        occurrenceScheduleDateId:
            occurrenceScheduleDateId ?? this.occurrenceScheduleDateId,
        auditId: auditId ?? this.auditId,
        auditScheduleRuleId: auditScheduleRuleId ?? this.auditScheduleRuleId,
        scheduleOccurrenceId: scheduleOccurrenceId ?? this.scheduleOccurrenceId,
        scheduleRuleTitle: scheduleRuleTitle ?? this.scheduleRuleTitle,
        occurrenceTitle: occurrenceTitle ?? this.occurrenceTitle,
        occurrenceCycle: occurrenceCycle ?? this.occurrenceCycle,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        auditStatusId: auditStatusId ?? this.auditStatusId,
        userId: userId ?? this.userId,
        isEntityRule: isEntityRule ?? this.isEntityRule,
      );
  @override
  String toString() {
    return (StringBuffer('OccurrenceScheduleDate(')
          ..write('occurrenceScheduleDateId: $occurrenceScheduleDateId, ')
          ..write('auditId: $auditId, ')
          ..write('auditScheduleRuleId: $auditScheduleRuleId, ')
          ..write('scheduleOccurrenceId: $scheduleOccurrenceId, ')
          ..write('scheduleRuleTitle: $scheduleRuleTitle, ')
          ..write('occurrenceTitle: $occurrenceTitle, ')
          ..write('occurrenceCycle: $occurrenceCycle, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('auditStatusId: $auditStatusId, ')
          ..write('userId: $userId, ')
          ..write('isEntityRule: $isEntityRule')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      occurrenceScheduleDateId,
      auditId,
      auditScheduleRuleId,
      scheduleOccurrenceId,
      scheduleRuleTitle,
      occurrenceTitle,
      occurrenceCycle,
      startDate,
      endDate,
      auditStatusId,
      userId,
      isEntityRule);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OccurrenceScheduleDate &&
          other.occurrenceScheduleDateId == this.occurrenceScheduleDateId &&
          other.auditId == this.auditId &&
          other.auditScheduleRuleId == this.auditScheduleRuleId &&
          other.scheduleOccurrenceId == this.scheduleOccurrenceId &&
          other.scheduleRuleTitle == this.scheduleRuleTitle &&
          other.occurrenceTitle == this.occurrenceTitle &&
          other.occurrenceCycle == this.occurrenceCycle &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.auditStatusId == this.auditStatusId &&
          other.userId == this.userId &&
          other.isEntityRule == this.isEntityRule);
}

class OccurrenceScheduleDatesCompanion
    extends UpdateCompanion<OccurrenceScheduleDate> {
  final Value<int> occurrenceScheduleDateId;
  final Value<int> auditId;
  final Value<int> auditScheduleRuleId;
  final Value<int> scheduleOccurrenceId;
  final Value<String> scheduleRuleTitle;
  final Value<String> occurrenceTitle;
  final Value<int> occurrenceCycle;
  final Value<DateTime?> startDate;
  final Value<DateTime?> endDate;
  final Value<int> auditStatusId;
  final Value<int> userId;
  final Value<bool> isEntityRule;
  const OccurrenceScheduleDatesCompanion({
    this.occurrenceScheduleDateId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.auditScheduleRuleId = const Value.absent(),
    this.scheduleOccurrenceId = const Value.absent(),
    this.scheduleRuleTitle = const Value.absent(),
    this.occurrenceTitle = const Value.absent(),
    this.occurrenceCycle = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.auditStatusId = const Value.absent(),
    this.userId = const Value.absent(),
    this.isEntityRule = const Value.absent(),
  });
  OccurrenceScheduleDatesCompanion.insert({
    this.occurrenceScheduleDateId = const Value.absent(),
    required int auditId,
    required int auditScheduleRuleId,
    required int scheduleOccurrenceId,
    required String scheduleRuleTitle,
    required String occurrenceTitle,
    required int occurrenceCycle,
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    required int auditStatusId,
    required int userId,
    required bool isEntityRule,
  })  : auditId = Value(auditId),
        auditScheduleRuleId = Value(auditScheduleRuleId),
        scheduleOccurrenceId = Value(scheduleOccurrenceId),
        scheduleRuleTitle = Value(scheduleRuleTitle),
        occurrenceTitle = Value(occurrenceTitle),
        occurrenceCycle = Value(occurrenceCycle),
        auditStatusId = Value(auditStatusId),
        userId = Value(userId),
        isEntityRule = Value(isEntityRule);
  static Insertable<OccurrenceScheduleDate> custom({
    Expression<int>? occurrenceScheduleDateId,
    Expression<int>? auditId,
    Expression<int>? auditScheduleRuleId,
    Expression<int>? scheduleOccurrenceId,
    Expression<String>? scheduleRuleTitle,
    Expression<String>? occurrenceTitle,
    Expression<int>? occurrenceCycle,
    Expression<DateTime?>? startDate,
    Expression<DateTime?>? endDate,
    Expression<int>? auditStatusId,
    Expression<int>? userId,
    Expression<bool>? isEntityRule,
  }) {
    return RawValuesInsertable({
      if (occurrenceScheduleDateId != null)
        'occurrenceScheduleDateId': occurrenceScheduleDateId,
      if (auditId != null) 'auditId': auditId,
      if (auditScheduleRuleId != null)
        'auditScheduleRuleId': auditScheduleRuleId,
      if (scheduleOccurrenceId != null)
        'scheduleOccurrenceId': scheduleOccurrenceId,
      if (scheduleRuleTitle != null) 'scheduleRuleTitle': scheduleRuleTitle,
      if (occurrenceTitle != null) 'occurrenceTitle': occurrenceTitle,
      if (occurrenceCycle != null) 'occurrenceCycle': occurrenceCycle,
      if (startDate != null) 'startDate': startDate,
      if (endDate != null) 'endDate': endDate,
      if (auditStatusId != null) 'auditStatusId': auditStatusId,
      if (userId != null) 'userId': userId,
      if (isEntityRule != null) 'isEntityRule': isEntityRule,
    });
  }

  OccurrenceScheduleDatesCompanion copyWith(
      {Value<int>? occurrenceScheduleDateId,
      Value<int>? auditId,
      Value<int>? auditScheduleRuleId,
      Value<int>? scheduleOccurrenceId,
      Value<String>? scheduleRuleTitle,
      Value<String>? occurrenceTitle,
      Value<int>? occurrenceCycle,
      Value<DateTime?>? startDate,
      Value<DateTime?>? endDate,
      Value<int>? auditStatusId,
      Value<int>? userId,
      Value<bool>? isEntityRule}) {
    return OccurrenceScheduleDatesCompanion(
      occurrenceScheduleDateId:
          occurrenceScheduleDateId ?? this.occurrenceScheduleDateId,
      auditId: auditId ?? this.auditId,
      auditScheduleRuleId: auditScheduleRuleId ?? this.auditScheduleRuleId,
      scheduleOccurrenceId: scheduleOccurrenceId ?? this.scheduleOccurrenceId,
      scheduleRuleTitle: scheduleRuleTitle ?? this.scheduleRuleTitle,
      occurrenceTitle: occurrenceTitle ?? this.occurrenceTitle,
      occurrenceCycle: occurrenceCycle ?? this.occurrenceCycle,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      auditStatusId: auditStatusId ?? this.auditStatusId,
      userId: userId ?? this.userId,
      isEntityRule: isEntityRule ?? this.isEntityRule,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (occurrenceScheduleDateId.present) {
      map['occurrenceScheduleDateId'] =
          Variable<int>(occurrenceScheduleDateId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (auditScheduleRuleId.present) {
      map['auditScheduleRuleId'] = Variable<int>(auditScheduleRuleId.value);
    }
    if (scheduleOccurrenceId.present) {
      map['scheduleOccurrenceId'] = Variable<int>(scheduleOccurrenceId.value);
    }
    if (scheduleRuleTitle.present) {
      map['scheduleRuleTitle'] = Variable<String>(scheduleRuleTitle.value);
    }
    if (occurrenceTitle.present) {
      map['occurrenceTitle'] = Variable<String>(occurrenceTitle.value);
    }
    if (occurrenceCycle.present) {
      map['occurrenceCycle'] = Variable<int>(occurrenceCycle.value);
    }
    if (startDate.present) {
      map['startDate'] = Variable<DateTime?>(startDate.value);
    }
    if (endDate.present) {
      map['endDate'] = Variable<DateTime?>(endDate.value);
    }
    if (auditStatusId.present) {
      map['auditStatusId'] = Variable<int>(auditStatusId.value);
    }
    if (userId.present) {
      map['userId'] = Variable<int>(userId.value);
    }
    if (isEntityRule.present) {
      map['isEntityRule'] = Variable<bool>(isEntityRule.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OccurrenceScheduleDatesCompanion(')
          ..write('occurrenceScheduleDateId: $occurrenceScheduleDateId, ')
          ..write('auditId: $auditId, ')
          ..write('auditScheduleRuleId: $auditScheduleRuleId, ')
          ..write('scheduleOccurrenceId: $scheduleOccurrenceId, ')
          ..write('scheduleRuleTitle: $scheduleRuleTitle, ')
          ..write('occurrenceTitle: $occurrenceTitle, ')
          ..write('occurrenceCycle: $occurrenceCycle, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('auditStatusId: $auditStatusId, ')
          ..write('userId: $userId, ')
          ..write('isEntityRule: $isEntityRule')
          ..write(')'))
        .toString();
  }
}

class OccurrenceScheduleDates extends Table
    with TableInfo<OccurrenceScheduleDates, OccurrenceScheduleDate> {
  final GeneratedDatabase _db;
  final String? _alias;
  OccurrenceScheduleDates(this._db, [this._alias]);
  final VerificationMeta _occurrenceScheduleDateIdMeta =
      const VerificationMeta('occurrenceScheduleDateId');
  late final GeneratedColumn<int?> occurrenceScheduleDateId =
      GeneratedColumn<int?>('occurrenceScheduleDateId', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditScheduleRuleIdMeta =
      const VerificationMeta('auditScheduleRuleId');
  late final GeneratedColumn<int?> auditScheduleRuleId = GeneratedColumn<int?>(
      'auditScheduleRuleId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _scheduleOccurrenceIdMeta =
      const VerificationMeta('scheduleOccurrenceId');
  late final GeneratedColumn<int?> scheduleOccurrenceId = GeneratedColumn<int?>(
      'scheduleOccurrenceId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _scheduleRuleTitleMeta =
      const VerificationMeta('scheduleRuleTitle');
  late final GeneratedColumn<String?> scheduleRuleTitle =
      GeneratedColumn<String?>('scheduleRuleTitle', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _occurrenceTitleMeta =
      const VerificationMeta('occurrenceTitle');
  late final GeneratedColumn<String?> occurrenceTitle =
      GeneratedColumn<String?>('occurrenceTitle', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _occurrenceCycleMeta =
      const VerificationMeta('occurrenceCycle');
  late final GeneratedColumn<int?> occurrenceCycle = GeneratedColumn<int?>(
      'occurrenceCycle', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  late final GeneratedColumn<DateTime?> startDate = GeneratedColumn<DateTime?>(
      'startDate', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  late final GeneratedColumn<DateTime?> endDate = GeneratedColumn<DateTime?>(
      'endDate', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _auditStatusIdMeta =
      const VerificationMeta('auditStatusId');
  late final GeneratedColumn<int?> auditStatusId = GeneratedColumn<int?>(
      'auditStatusId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'userId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isEntityRuleMeta =
      const VerificationMeta('isEntityRule');
  late final GeneratedColumn<bool?> isEntityRule = GeneratedColumn<bool?>(
      'isEntityRule', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        occurrenceScheduleDateId,
        auditId,
        auditScheduleRuleId,
        scheduleOccurrenceId,
        scheduleRuleTitle,
        occurrenceTitle,
        occurrenceCycle,
        startDate,
        endDate,
        auditStatusId,
        userId,
        isEntityRule
      ];
  @override
  String get aliasedName => _alias ?? 'occurrenceScheduleDates';
  @override
  String get actualTableName => 'occurrenceScheduleDates';
  @override
  VerificationContext validateIntegrity(
      Insertable<OccurrenceScheduleDate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('occurrenceScheduleDateId')) {
      context.handle(
          _occurrenceScheduleDateIdMeta,
          occurrenceScheduleDateId.isAcceptableOrUnknown(
              data['occurrenceScheduleDateId']!,
              _occurrenceScheduleDateIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('auditScheduleRuleId')) {
      context.handle(
          _auditScheduleRuleIdMeta,
          auditScheduleRuleId.isAcceptableOrUnknown(
              data['auditScheduleRuleId']!, _auditScheduleRuleIdMeta));
    } else if (isInserting) {
      context.missing(_auditScheduleRuleIdMeta);
    }
    if (data.containsKey('scheduleOccurrenceId')) {
      context.handle(
          _scheduleOccurrenceIdMeta,
          scheduleOccurrenceId.isAcceptableOrUnknown(
              data['scheduleOccurrenceId']!, _scheduleOccurrenceIdMeta));
    } else if (isInserting) {
      context.missing(_scheduleOccurrenceIdMeta);
    }
    if (data.containsKey('scheduleRuleTitle')) {
      context.handle(
          _scheduleRuleTitleMeta,
          scheduleRuleTitle.isAcceptableOrUnknown(
              data['scheduleRuleTitle']!, _scheduleRuleTitleMeta));
    } else if (isInserting) {
      context.missing(_scheduleRuleTitleMeta);
    }
    if (data.containsKey('occurrenceTitle')) {
      context.handle(
          _occurrenceTitleMeta,
          occurrenceTitle.isAcceptableOrUnknown(
              data['occurrenceTitle']!, _occurrenceTitleMeta));
    } else if (isInserting) {
      context.missing(_occurrenceTitleMeta);
    }
    if (data.containsKey('occurrenceCycle')) {
      context.handle(
          _occurrenceCycleMeta,
          occurrenceCycle.isAcceptableOrUnknown(
              data['occurrenceCycle']!, _occurrenceCycleMeta));
    } else if (isInserting) {
      context.missing(_occurrenceCycleMeta);
    }
    if (data.containsKey('startDate')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['startDate']!, _startDateMeta));
    }
    if (data.containsKey('endDate')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['endDate']!, _endDateMeta));
    }
    if (data.containsKey('auditStatusId')) {
      context.handle(
          _auditStatusIdMeta,
          auditStatusId.isAcceptableOrUnknown(
              data['auditStatusId']!, _auditStatusIdMeta));
    } else if (isInserting) {
      context.missing(_auditStatusIdMeta);
    }
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('isEntityRule')) {
      context.handle(
          _isEntityRuleMeta,
          isEntityRule.isAcceptableOrUnknown(
              data['isEntityRule']!, _isEntityRuleMeta));
    } else if (isInserting) {
      context.missing(_isEntityRuleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {occurrenceScheduleDateId};
  @override
  OccurrenceScheduleDate map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OccurrenceScheduleDate.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  OccurrenceScheduleDates createAlias(String alias) {
    return OccurrenceScheduleDates(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditEnforceTimeDataData extends DataClass
    implements Insertable<AuditEnforceTimeDataData> {
  final int enforceTimeId;
  final int auditId;
  final String fromTime;
  final String toTime;
  AuditEnforceTimeDataData(
      {required this.enforceTimeId,
      required this.auditId,
      required this.fromTime,
      required this.toTime});
  factory AuditEnforceTimeDataData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEnforceTimeDataData(
      enforceTimeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enforceTimeId'])!,
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditId'])!,
      fromTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fromTime'])!,
      toTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}toTime'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['enforceTimeId'] = Variable<int>(enforceTimeId);
    map['auditId'] = Variable<int>(auditId);
    map['fromTime'] = Variable<String>(fromTime);
    map['toTime'] = Variable<String>(toTime);
    return map;
  }

  AuditEnforceTimeDataCompanion toCompanion(bool nullToAbsent) {
    return AuditEnforceTimeDataCompanion(
      enforceTimeId: Value(enforceTimeId),
      auditId: Value(auditId),
      fromTime: Value(fromTime),
      toTime: Value(toTime),
    );
  }

  factory AuditEnforceTimeDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditEnforceTimeDataData(
      enforceTimeId: serializer.fromJson<int>(json['enforceTimeId']),
      auditId: serializer.fromJson<int>(json['auditId']),
      fromTime: serializer.fromJson<String>(json['fromTime']),
      toTime: serializer.fromJson<String>(json['toTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'enforceTimeId': serializer.toJson<int>(enforceTimeId),
      'auditId': serializer.toJson<int>(auditId),
      'fromTime': serializer.toJson<String>(fromTime),
      'toTime': serializer.toJson<String>(toTime),
    };
  }

  AuditEnforceTimeDataData copyWith(
          {int? enforceTimeId,
          int? auditId,
          String? fromTime,
          String? toTime}) =>
      AuditEnforceTimeDataData(
        enforceTimeId: enforceTimeId ?? this.enforceTimeId,
        auditId: auditId ?? this.auditId,
        fromTime: fromTime ?? this.fromTime,
        toTime: toTime ?? this.toTime,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEnforceTimeDataData(')
          ..write('enforceTimeId: $enforceTimeId, ')
          ..write('auditId: $auditId, ')
          ..write('fromTime: $fromTime, ')
          ..write('toTime: $toTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(enforceTimeId, auditId, fromTime, toTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEnforceTimeDataData &&
          other.enforceTimeId == this.enforceTimeId &&
          other.auditId == this.auditId &&
          other.fromTime == this.fromTime &&
          other.toTime == this.toTime);
}

class AuditEnforceTimeDataCompanion
    extends UpdateCompanion<AuditEnforceTimeDataData> {
  final Value<int> enforceTimeId;
  final Value<int> auditId;
  final Value<String> fromTime;
  final Value<String> toTime;
  const AuditEnforceTimeDataCompanion({
    this.enforceTimeId = const Value.absent(),
    this.auditId = const Value.absent(),
    this.fromTime = const Value.absent(),
    this.toTime = const Value.absent(),
  });
  AuditEnforceTimeDataCompanion.insert({
    this.enforceTimeId = const Value.absent(),
    required int auditId,
    required String fromTime,
    required String toTime,
  })  : auditId = Value(auditId),
        fromTime = Value(fromTime),
        toTime = Value(toTime);
  static Insertable<AuditEnforceTimeDataData> custom({
    Expression<int>? enforceTimeId,
    Expression<int>? auditId,
    Expression<String>? fromTime,
    Expression<String>? toTime,
  }) {
    return RawValuesInsertable({
      if (enforceTimeId != null) 'enforceTimeId': enforceTimeId,
      if (auditId != null) 'auditId': auditId,
      if (fromTime != null) 'fromTime': fromTime,
      if (toTime != null) 'toTime': toTime,
    });
  }

  AuditEnforceTimeDataCompanion copyWith(
      {Value<int>? enforceTimeId,
      Value<int>? auditId,
      Value<String>? fromTime,
      Value<String>? toTime}) {
    return AuditEnforceTimeDataCompanion(
      enforceTimeId: enforceTimeId ?? this.enforceTimeId,
      auditId: auditId ?? this.auditId,
      fromTime: fromTime ?? this.fromTime,
      toTime: toTime ?? this.toTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (enforceTimeId.present) {
      map['enforceTimeId'] = Variable<int>(enforceTimeId.value);
    }
    if (auditId.present) {
      map['auditId'] = Variable<int>(auditId.value);
    }
    if (fromTime.present) {
      map['fromTime'] = Variable<String>(fromTime.value);
    }
    if (toTime.present) {
      map['toTime'] = Variable<String>(toTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEnforceTimeDataCompanion(')
          ..write('enforceTimeId: $enforceTimeId, ')
          ..write('auditId: $auditId, ')
          ..write('fromTime: $fromTime, ')
          ..write('toTime: $toTime')
          ..write(')'))
        .toString();
  }
}

class AuditEnforceTimeData extends Table
    with TableInfo<AuditEnforceTimeData, AuditEnforceTimeDataData> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditEnforceTimeData(this._db, [this._alias]);
  final VerificationMeta _enforceTimeIdMeta =
      const VerificationMeta('enforceTimeId');
  late final GeneratedColumn<int?> enforceTimeId = GeneratedColumn<int?>(
      'enforceTimeId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'auditId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fromTimeMeta = const VerificationMeta('fromTime');
  late final GeneratedColumn<String?> fromTime = GeneratedColumn<String?>(
      'fromTime', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _toTimeMeta = const VerificationMeta('toTime');
  late final GeneratedColumn<String?> toTime = GeneratedColumn<String?>(
      'toTime', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [enforceTimeId, auditId, fromTime, toTime];
  @override
  String get aliasedName => _alias ?? 'auditEnforceTimeData';
  @override
  String get actualTableName => 'auditEnforceTimeData';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEnforceTimeDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('enforceTimeId')) {
      context.handle(
          _enforceTimeIdMeta,
          enforceTimeId.isAcceptableOrUnknown(
              data['enforceTimeId']!, _enforceTimeIdMeta));
    }
    if (data.containsKey('auditId')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['auditId']!, _auditIdMeta));
    } else if (isInserting) {
      context.missing(_auditIdMeta);
    }
    if (data.containsKey('fromTime')) {
      context.handle(_fromTimeMeta,
          fromTime.isAcceptableOrUnknown(data['fromTime']!, _fromTimeMeta));
    } else if (isInserting) {
      context.missing(_fromTimeMeta);
    }
    if (data.containsKey('toTime')) {
      context.handle(_toTimeMeta,
          toTime.isAcceptableOrUnknown(data['toTime']!, _toTimeMeta));
    } else if (isInserting) {
      context.missing(_toTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {enforceTimeId};
  @override
  AuditEnforceTimeDataData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditEnforceTimeDataData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditEnforceTimeData createAlias(String alias) {
    return AuditEnforceTimeData(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class AuditGroup extends DataClass implements Insertable<AuditGroup> {
  final int auditGroupId;
  final int? auditGroupParentId;
  final String auditGroupName;
  final int auditGroupLevel;
  final int auditCount;
  AuditGroup(
      {required this.auditGroupId,
      this.auditGroupParentId,
      required this.auditGroupName,
      required this.auditGroupLevel,
      required this.auditCount});
  factory AuditGroup.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditGroup(
      auditGroupId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditGroupId'])!,
      auditGroupParentId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}auditGroupParentId']),
      auditGroupName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditGroupName'])!,
      auditGroupLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditGroupLevel'])!,
      auditCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auditCount'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['auditGroupId'] = Variable<int>(auditGroupId);
    if (!nullToAbsent || auditGroupParentId != null) {
      map['auditGroupParentId'] = Variable<int?>(auditGroupParentId);
    }
    map['auditGroupName'] = Variable<String>(auditGroupName);
    map['auditGroupLevel'] = Variable<int>(auditGroupLevel);
    map['auditCount'] = Variable<int>(auditCount);
    return map;
  }

  AuditGroupsCompanion toCompanion(bool nullToAbsent) {
    return AuditGroupsCompanion(
      auditGroupId: Value(auditGroupId),
      auditGroupParentId: auditGroupParentId == null && nullToAbsent
          ? const Value.absent()
          : Value(auditGroupParentId),
      auditGroupName: Value(auditGroupName),
      auditGroupLevel: Value(auditGroupLevel),
      auditCount: Value(auditCount),
    );
  }

  factory AuditGroup.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuditGroup(
      auditGroupId: serializer.fromJson<int>(json['auditGroupId']),
      auditGroupParentId: serializer.fromJson<int?>(json['auditGroupParentId']),
      auditGroupName: serializer.fromJson<String>(json['auditGroupName']),
      auditGroupLevel: serializer.fromJson<int>(json['auditGroupLevel']),
      auditCount: serializer.fromJson<int>(json['auditCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditGroupId': serializer.toJson<int>(auditGroupId),
      'auditGroupParentId': serializer.toJson<int?>(auditGroupParentId),
      'auditGroupName': serializer.toJson<String>(auditGroupName),
      'auditGroupLevel': serializer.toJson<int>(auditGroupLevel),
      'auditCount': serializer.toJson<int>(auditCount),
    };
  }

  AuditGroup copyWith(
          {int? auditGroupId,
          int? auditGroupParentId,
          String? auditGroupName,
          int? auditGroupLevel,
          int? auditCount}) =>
      AuditGroup(
        auditGroupId: auditGroupId ?? this.auditGroupId,
        auditGroupParentId: auditGroupParentId ?? this.auditGroupParentId,
        auditGroupName: auditGroupName ?? this.auditGroupName,
        auditGroupLevel: auditGroupLevel ?? this.auditGroupLevel,
        auditCount: auditCount ?? this.auditCount,
      );
  @override
  String toString() {
    return (StringBuffer('AuditGroup(')
          ..write('auditGroupId: $auditGroupId, ')
          ..write('auditGroupParentId: $auditGroupParentId, ')
          ..write('auditGroupName: $auditGroupName, ')
          ..write('auditGroupLevel: $auditGroupLevel, ')
          ..write('auditCount: $auditCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(auditGroupId, auditGroupParentId,
      auditGroupName, auditGroupLevel, auditCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditGroup &&
          other.auditGroupId == this.auditGroupId &&
          other.auditGroupParentId == this.auditGroupParentId &&
          other.auditGroupName == this.auditGroupName &&
          other.auditGroupLevel == this.auditGroupLevel &&
          other.auditCount == this.auditCount);
}

class AuditGroupsCompanion extends UpdateCompanion<AuditGroup> {
  final Value<int> auditGroupId;
  final Value<int?> auditGroupParentId;
  final Value<String> auditGroupName;
  final Value<int> auditGroupLevel;
  final Value<int> auditCount;
  const AuditGroupsCompanion({
    this.auditGroupId = const Value.absent(),
    this.auditGroupParentId = const Value.absent(),
    this.auditGroupName = const Value.absent(),
    this.auditGroupLevel = const Value.absent(),
    this.auditCount = const Value.absent(),
  });
  AuditGroupsCompanion.insert({
    this.auditGroupId = const Value.absent(),
    this.auditGroupParentId = const Value.absent(),
    required String auditGroupName,
    required int auditGroupLevel,
    required int auditCount,
  })  : auditGroupName = Value(auditGroupName),
        auditGroupLevel = Value(auditGroupLevel),
        auditCount = Value(auditCount);
  static Insertable<AuditGroup> custom({
    Expression<int>? auditGroupId,
    Expression<int?>? auditGroupParentId,
    Expression<String>? auditGroupName,
    Expression<int>? auditGroupLevel,
    Expression<int>? auditCount,
  }) {
    return RawValuesInsertable({
      if (auditGroupId != null) 'auditGroupId': auditGroupId,
      if (auditGroupParentId != null) 'auditGroupParentId': auditGroupParentId,
      if (auditGroupName != null) 'auditGroupName': auditGroupName,
      if (auditGroupLevel != null) 'auditGroupLevel': auditGroupLevel,
      if (auditCount != null) 'auditCount': auditCount,
    });
  }

  AuditGroupsCompanion copyWith(
      {Value<int>? auditGroupId,
      Value<int?>? auditGroupParentId,
      Value<String>? auditGroupName,
      Value<int>? auditGroupLevel,
      Value<int>? auditCount}) {
    return AuditGroupsCompanion(
      auditGroupId: auditGroupId ?? this.auditGroupId,
      auditGroupParentId: auditGroupParentId ?? this.auditGroupParentId,
      auditGroupName: auditGroupName ?? this.auditGroupName,
      auditGroupLevel: auditGroupLevel ?? this.auditGroupLevel,
      auditCount: auditCount ?? this.auditCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditGroupId.present) {
      map['auditGroupId'] = Variable<int>(auditGroupId.value);
    }
    if (auditGroupParentId.present) {
      map['auditGroupParentId'] = Variable<int?>(auditGroupParentId.value);
    }
    if (auditGroupName.present) {
      map['auditGroupName'] = Variable<String>(auditGroupName.value);
    }
    if (auditGroupLevel.present) {
      map['auditGroupLevel'] = Variable<int>(auditGroupLevel.value);
    }
    if (auditCount.present) {
      map['auditCount'] = Variable<int>(auditCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditGroupsCompanion(')
          ..write('auditGroupId: $auditGroupId, ')
          ..write('auditGroupParentId: $auditGroupParentId, ')
          ..write('auditGroupName: $auditGroupName, ')
          ..write('auditGroupLevel: $auditGroupLevel, ')
          ..write('auditCount: $auditCount')
          ..write(')'))
        .toString();
  }
}

class AuditGroups extends Table with TableInfo<AuditGroups, AuditGroup> {
  final GeneratedDatabase _db;
  final String? _alias;
  AuditGroups(this._db, [this._alias]);
  final VerificationMeta _auditGroupIdMeta =
      const VerificationMeta('auditGroupId');
  late final GeneratedColumn<int?> auditGroupId = GeneratedColumn<int?>(
      'auditGroupId', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY');
  final VerificationMeta _auditGroupParentIdMeta =
      const VerificationMeta('auditGroupParentId');
  late final GeneratedColumn<int?> auditGroupParentId = GeneratedColumn<int?>(
      'auditGroupParentId', aliasedName, true,
      typeName: 'INTEGER', requiredDuringInsert: false, $customConstraints: '');
  final VerificationMeta _auditGroupNameMeta =
      const VerificationMeta('auditGroupName');
  late final GeneratedColumn<String?> auditGroupName = GeneratedColumn<String?>(
      'auditGroupName', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditGroupLevelMeta =
      const VerificationMeta('auditGroupLevel');
  late final GeneratedColumn<int?> auditGroupLevel = GeneratedColumn<int?>(
      'auditGroupLevel', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _auditCountMeta = const VerificationMeta('auditCount');
  late final GeneratedColumn<int?> auditCount = GeneratedColumn<int?>(
      'auditCount', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        auditGroupId,
        auditGroupParentId,
        auditGroupName,
        auditGroupLevel,
        auditCount
      ];
  @override
  String get aliasedName => _alias ?? 'auditGroups';
  @override
  String get actualTableName => 'auditGroups';
  @override
  VerificationContext validateIntegrity(Insertable<AuditGroup> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('auditGroupId')) {
      context.handle(
          _auditGroupIdMeta,
          auditGroupId.isAcceptableOrUnknown(
              data['auditGroupId']!, _auditGroupIdMeta));
    }
    if (data.containsKey('auditGroupParentId')) {
      context.handle(
          _auditGroupParentIdMeta,
          auditGroupParentId.isAcceptableOrUnknown(
              data['auditGroupParentId']!, _auditGroupParentIdMeta));
    }
    if (data.containsKey('auditGroupName')) {
      context.handle(
          _auditGroupNameMeta,
          auditGroupName.isAcceptableOrUnknown(
              data['auditGroupName']!, _auditGroupNameMeta));
    } else if (isInserting) {
      context.missing(_auditGroupNameMeta);
    }
    if (data.containsKey('auditGroupLevel')) {
      context.handle(
          _auditGroupLevelMeta,
          auditGroupLevel.isAcceptableOrUnknown(
              data['auditGroupLevel']!, _auditGroupLevelMeta));
    } else if (isInserting) {
      context.missing(_auditGroupLevelMeta);
    }
    if (data.containsKey('auditCount')) {
      context.handle(
          _auditCountMeta,
          auditCount.isAcceptableOrUnknown(
              data['auditCount']!, _auditCountMeta));
    } else if (isInserting) {
      context.missing(_auditCountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditGroupId};
  @override
  AuditGroup map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditGroup.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  AuditGroups createAlias(String alias) {
    return AuditGroups(_db, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

abstract class _$AuditEntityDb extends GeneratedDatabase {
  _$AuditEntityDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final AuditDetailsList auditDetailsList = AuditDetailsList(this);
  late final ScoringTypes scoringTypes = ScoringTypes(this);
  late final ScoringFormulaInfoModel scoringFormulaInfoModel =
      ScoringFormulaInfoModel(this);
  late final AuditScoring auditScoring = AuditScoring(this);
  late final AuditEntityTable auditEntityTable = AuditEntityTable(this);
  late final AuditQuestion auditQuestion = AuditQuestion(this);
  late final AuditEntityTypes auditEntityTypes = AuditEntityTypes(this);
  late final AuditEntityTypeQuestions auditEntityTypeQuestions =
      AuditEntityTypeQuestions(this);
  late final AuditCorrectiveActions auditCorrectiveActions =
      AuditCorrectiveActions(this);
  late final AuditFailureReason auditFailureReason = AuditFailureReason(this);
  late final AuditAdditionalFields auditAdditionalFields =
      AuditAdditionalFields(this);
  late final AuditAdditionalFieldTypeValues auditAdditionalFieldTypeValues =
      AuditAdditionalFieldTypeValues(this);
  late final AuditAdditionalFieldEntityTypes auditAdditionalFieldEntityTypes =
      AuditAdditionalFieldEntityTypes(this);
  late final Size size = Size(this);
  late final AuditTeamTask auditTeamTask = AuditTeamTask(this);
  late final TeamDetails teamDetails = TeamDetails(this);
  late final UserDetails userDetails = UserDetails(this);
  late final UserPermission userPermission = UserPermission(this);
  late final OccurrenceScheduleDates occurrenceScheduleDates =
      OccurrenceScheduleDates(this);
  late final AuditEnforceTimeData auditEnforceTimeData =
      AuditEnforceTimeData(this);
  late final AuditGroups auditGroups = AuditGroups(this);
  Future<int> insertAuditDetailsList(
      int userId,
      String auditName,
      int auditId,
      bool failureReason,
      bool correctiveAction,
      bool auditorSignOff,
      bool secondarySignOff,
      bool entityMustAddress,
      int scoringFormulaId,
      int auditMasterId,
      bool autoSyncInMobile,
      int? versionId,
      int isFailureText,
      int isFailureList,
      int isCorrectiveActionText,
      int isCorrectiveActionList,
      int defaultTaskDueDateDays,
      bool task,
      bool allowDueDate,
      bool sendTaskAlertEmail,
      int barcodeOrNFC,
      bool canEdit,
      bool showScoreInMobile,
      bool isRecheck,
      bool isRandomization,
      bool isQuestionCategory,
      bool isNotifyAuditor,
      String? auditorDeclarationText,
      String? secondaryDeclarationText,
      bool isScheduling,
      bool isFormerData,
      bool isAuditQuestions,
      bool isEntitiesAuditable,
      bool isEnforceFormerAudit,
      bool isFlipScore,
      bool auditTracking,
      bool isMultipleLevelTeam,
      bool isTaskDistribution,
      bool approveProcessEntitiesMandatory,
      bool approvalProcess,
      bool submissionPasswordRequired,
      bool isViewOnlyFormerData,
      int auditGroupId,
      DateTime? auditEndDate,
      int? lastAuditResponseId) {
    return customInsert(
      'INSERT INTO auditDetailsList VALUES (:userId,:auditName,:auditId,:failureReason,:correctiveAction,:auditorSignOff,:secondarySignOff,:entityMustAddress,:scoringFormulaId,:auditMasterId,:autoSyncInMobile,:versionId,:isFailureText,:isFailureList,:isCorrectiveActionText,:isCorrectiveActionList,:defaultTaskDueDateDays,:task,:allowDueDate,:sendTaskAlertEmail,:barcodeOrNFC,:canEdit,:showScoreInMobile,:isRecheck,:isRandomization,:isQuestionCategory,:isNotifyAuditor,:auditorDeclarationText,:secondaryDeclarationText,:isScheduling,:isFormerData,:isAuditQuestions,:isEntitiesAuditable,:isEnforceFormerAudit,:isFlipScore,:auditTracking,:isMultipleLevelTeam,:isTaskDistribution,:approveProcessEntitiesMandatory,:approvalProcess,:submissionPasswordRequired,:isViewOnlyFormerData,:auditGroupId,:auditEndDate,:lastAuditResponseId)',
      variables: [
        Variable<int>(userId),
        Variable<String>(auditName),
        Variable<int>(auditId),
        Variable<bool>(failureReason),
        Variable<bool>(correctiveAction),
        Variable<bool>(auditorSignOff),
        Variable<bool>(secondarySignOff),
        Variable<bool>(entityMustAddress),
        Variable<int>(scoringFormulaId),
        Variable<int>(auditMasterId),
        Variable<bool>(autoSyncInMobile),
        Variable<int?>(versionId),
        Variable<int>(isFailureText),
        Variable<int>(isFailureList),
        Variable<int>(isCorrectiveActionText),
        Variable<int>(isCorrectiveActionList),
        Variable<int>(defaultTaskDueDateDays),
        Variable<bool>(task),
        Variable<bool>(allowDueDate),
        Variable<bool>(sendTaskAlertEmail),
        Variable<int>(barcodeOrNFC),
        Variable<bool>(canEdit),
        Variable<bool>(showScoreInMobile),
        Variable<bool>(isRecheck),
        Variable<bool>(isRandomization),
        Variable<bool>(isQuestionCategory),
        Variable<bool>(isNotifyAuditor),
        Variable<String?>(auditorDeclarationText),
        Variable<String?>(secondaryDeclarationText),
        Variable<bool>(isScheduling),
        Variable<bool>(isFormerData),
        Variable<bool>(isAuditQuestions),
        Variable<bool>(isEntitiesAuditable),
        Variable<bool>(isEnforceFormerAudit),
        Variable<bool>(isFlipScore),
        Variable<bool>(auditTracking),
        Variable<bool>(isMultipleLevelTeam),
        Variable<bool>(isTaskDistribution),
        Variable<bool>(approveProcessEntitiesMandatory),
        Variable<bool>(approvalProcess),
        Variable<bool>(submissionPasswordRequired),
        Variable<bool>(isViewOnlyFormerData),
        Variable<int>(auditGroupId),
        Variable<DateTime?>(auditEndDate),
        Variable<int?>(lastAuditResponseId)
      ],
      updates: {auditDetailsList},
    );
  }

  Future<int> insertScoringTypes(
      int scoringTypeId, String scoringTypeName, int applicationLanguageId) {
    return customInsert(
      'INSERT INTO scoringTypes VALUES (:scoringTypeId,:scoringTypeName,:applicationLanguageId)',
      variables: [
        Variable<int>(scoringTypeId),
        Variable<String>(scoringTypeName),
        Variable<int>(applicationLanguageId)
      ],
      updates: {scoringTypes},
    );
  }

  Future<int> insertScoringFormulaInfoModel(
      int scoringFormulaId,
      int scoringFormulaDetailId,
      int scoringtypeid,
      String shortCode,
      int sortOrder,
      String title,
      int? weight,
      bool isDefault,
      String hexCode,
      String fontHexCode,
      bool isAuditQuestions,
      int? initialAuditScore) {
    return customInsert(
      'INSERT INTO scoringFormulaInfoModel VALUES (:scoringFormulaId,:scoringFormulaDetailId,:scoringtypeid,:shortCode,:sortOrder,:title,:weight,:isDefault,:hexCode,:fontHexCode,:isAuditQuestions,:initialAuditScore)',
      variables: [
        Variable<int>(scoringFormulaId),
        Variable<int>(scoringFormulaDetailId),
        Variable<int>(scoringtypeid),
        Variable<String>(shortCode),
        Variable<int>(sortOrder),
        Variable<String>(title),
        Variable<int?>(weight),
        Variable<bool>(isDefault),
        Variable<String>(hexCode),
        Variable<String>(fontHexCode),
        Variable<bool>(isAuditQuestions),
        Variable<int?>(initialAuditScore)
      ],
      updates: {scoringFormulaInfoModel},
    );
  }

  Future<int> insertAuditScoring(int auditScoringId, int auditId, int minScore,
      double? maxScore, String? color) {
    return customInsert(
      'INSERT INTO auditScoring VALUES (:auditScoringId,:auditId,:minScore,:maxScore,:color)',
      variables: [
        Variable<int>(auditScoringId),
        Variable<int>(auditId),
        Variable<int>(minScore),
        Variable<double?>(maxScore),
        Variable<String?>(color)
      ],
      updates: {auditScoring},
    );
  }

  Future<int> insertAuditEntity(
      int auditEntityId,
      int auditId,
      String auditEntityName,
      int auditEntityTypeId,
      int auditParentEntityId,
      int sequenceNo,
      DateTime? entityEndDate,
      bool isLeafNode,
      String? barCodeNfc,
      int entityLevel,
      bool? entityException,
      String? ScheduleOccurrenceIds) {
    return customInsert(
      'INSERT INTO auditEntityTable VALUES (:auditEntityId,:auditId,:auditEntityName,:auditEntityTypeId,:auditParentEntityId,:sequenceNo,:entityEndDate,:isLeafNode,:barCodeNfc,:entityLevel,:entityException,:ScheduleOccurrenceIds)',
      variables: [
        Variable<int>(auditEntityId),
        Variable<int>(auditId),
        Variable<String>(auditEntityName),
        Variable<int>(auditEntityTypeId),
        Variable<int>(auditParentEntityId),
        Variable<int>(sequenceNo),
        Variable<DateTime?>(entityEndDate),
        Variable<bool>(isLeafNode),
        Variable<String?>(barCodeNfc),
        Variable<int>(entityLevel),
        Variable<bool?>(entityException),
        Variable<String?>(ScheduleOccurrenceIds)
      ],
      updates: {auditEntityTable},
    );
  }

  Future<int> insertAuditQuestion(
      int auditQuestionId,
      int auditId,
      String questionTitle,
      int sequenceNo,
      String description,
      int weight,
      int statusId,
      String questionCategory,
      int? questionCategoryId,
      int? questionImageId,
      String? imageUrl) {
    return customInsert(
      'INSERT INTO auditQuestion VALUES (:auditQuestionId,:auditId,:questionTitle,:sequenceNo,:description,:weight,:statusId,:questionCategory,:questionCategoryId,:questionImageId,:imageUrl)',
      variables: [
        Variable<int>(auditQuestionId),
        Variable<int>(auditId),
        Variable<String>(questionTitle),
        Variable<int>(sequenceNo),
        Variable<String>(description),
        Variable<int>(weight),
        Variable<int>(statusId),
        Variable<String>(questionCategory),
        Variable<int?>(questionCategoryId),
        Variable<int?>(questionImageId),
        Variable<String?>(imageUrl)
      ],
      updates: {auditQuestion},
    );
  }

  Future<int> insertAuditEntityTypes(int auditId, int auditEntityTypeId,
      String auditEntityTypeName, double? entityTypeWeight) {
    return customInsert(
      'INSERT INTO auditEntityTypes VALUES (:auditId,:auditEntityTypeId,:auditEntityTypeName,:entityTypeWeight)',
      variables: [
        Variable<int>(auditId),
        Variable<int>(auditEntityTypeId),
        Variable<String>(auditEntityTypeName),
        Variable<double?>(entityTypeWeight)
      ],
      updates: {auditEntityTypes},
    );
  }

  Future<int> insertAuditEntityTypeQuestions(int auditEntityTypeId,
      int auditEntityTypeQuestionId, int? auditQuestionId) {
    return customInsert(
      'INSERT INTO auditEntityTypeQuestions VALUES (:auditEntityTypeId,:auditEntityTypeQuestionId,:auditQuestionId)',
      variables: [
        Variable<int>(auditEntityTypeId),
        Variable<int>(auditEntityTypeQuestionId),
        Variable<int?>(auditQuestionId)
      ],
      updates: {auditEntityTypeQuestions},
    );
  }

  Future<int> insertAuditCorrectiveActions(
      int auditCorrectiveActionId,
      int auditEntityTypeQuestionId,
      int auditQuestionCorrectiveActionId,
      String correctiveActionTitle,
      int auditId) {
    return customInsert(
      'INSERT INTO auditCorrectiveActions VALUES (:auditCorrectiveActionId,:auditEntityTypeQuestionId,:auditQuestionCorrectiveActionId,:correctiveActionTitle,:auditId)',
      variables: [
        Variable<int>(auditCorrectiveActionId),
        Variable<int>(auditEntityTypeQuestionId),
        Variable<int>(auditQuestionCorrectiveActionId),
        Variable<String>(correctiveActionTitle),
        Variable<int>(auditId)
      ],
      updates: {auditCorrectiveActions},
    );
  }

  Future<int> insertAuditFailureReason(
      int auditQuestionFailureReasonId,
      int auditEntityTypeQuestionId,
      int auditFailureReasonId,
      String failureReasonTitle,
      int auditId) {
    return customInsert(
      'INSERT INTO auditFailureReason VALUES (:auditQuestionFailureReasonId,:auditEntityTypeQuestionId,:auditFailureReasonId,:failureReasonTitle,:auditId)',
      variables: [
        Variable<int>(auditQuestionFailureReasonId),
        Variable<int>(auditEntityTypeQuestionId),
        Variable<int>(auditFailureReasonId),
        Variable<String>(failureReasonTitle),
        Variable<int>(auditId)
      ],
      updates: {auditFailureReason},
    );
  }

  Future<int> insertAuditAdditionalFields(
      int additionalFieldId,
      int auditId,
      String fieldName,
      int fieldTypeId,
      int? displayPosition,
      bool isMandatory,
      bool? isPreDisplay,
      int levelTypeId,
      int? auditQuestionId,
      int sequenceNo,
      bool isMask,
      String? maskPattent,
      String? maskPlaceholder) {
    return customInsert(
      'INSERT INTO auditAdditionalFields VALUES (:additionalFieldId,:auditId,:fieldName,:fieldTypeId,:displayPosition,:isMandatory,:isPreDisplay,:levelTypeId,:auditQuestionId,:sequenceNo,:isMask,:maskPattent,:maskPlaceholder)',
      variables: [
        Variable<int>(additionalFieldId),
        Variable<int>(auditId),
        Variable<String>(fieldName),
        Variable<int>(fieldTypeId),
        Variable<int?>(displayPosition),
        Variable<bool>(isMandatory),
        Variable<bool?>(isPreDisplay),
        Variable<int>(levelTypeId),
        Variable<int?>(auditQuestionId),
        Variable<int>(sequenceNo),
        Variable<bool>(isMask),
        Variable<String?>(maskPattent),
        Variable<String?>(maskPlaceholder)
      ],
      updates: {auditAdditionalFields},
    );
  }

  Future<int> insertAuditAdditionalFieldTypeValues(
      int additionalFieldTypeValueId,
      int additionalFieldId,
      String additionalFieldValue) {
    return customInsert(
      'INSERT INTO auditAdditionalFieldTypeValues VALUES (:additionalFieldTypeValueId,:additionalFieldId,:additionalFieldValue)',
      variables: [
        Variable<int>(additionalFieldTypeValueId),
        Variable<int>(additionalFieldId),
        Variable<String>(additionalFieldValue)
      ],
      updates: {auditAdditionalFieldTypeValues},
    );
  }

  Future<int> insertAuditAdditionalFieldEntityTypes(
      int additionalFieldEntityTypeId,
      int additionalFieldId,
      int entityTypeId,
      int entityLevel) {
    return customInsert(
      'INSERT INTO auditAdditionalFieldEntityTypes VALUES (:additionalFieldEntityTypeId,:additionalFieldId,:entityTypeId,:entityLevel)',
      variables: [
        Variable<int>(additionalFieldEntityTypeId),
        Variable<int>(additionalFieldId),
        Variable<int>(entityTypeId),
        Variable<int>(entityLevel)
      ],
      updates: {auditAdditionalFieldEntityTypes},
    );
  }

  Future<int> insertSize(
      int androidMaxUploadFileSize,
      int iosMaxUploadFileSize,
      int htmL5MaxUploadFileSize,
      int additionalFieldEmail,
      int additionalFieldTextArea,
      int additionalFieldTextBox,
      int additionalFieldLocation,
      int comment,
      int failureNote,
      int correctiveNote,
      int barcode,
      int taskComment,
      int sessionTimeOut,
      int signDeclarationTextSize,
      int nfcComment,
      int captureImageNote,
      int nonAuditableComment,
      int flipScoreTime,
      int eventNumber,
      int eventTitle,
      int eventDescription,
      int eventRiskAssociated,
      int eventImmediateActionTaken,
      int eventCorrectiveActions,
      int eventSituationTitle,
      int eventSituationDetails,
      int eventKeyIssueTitle,
      int eventKeyIssueActionTitle,
      int injuryPersonName,
      int injurySupervisiorName,
      int eventInjuryComment,
      int eventScheduleTitle,
      int keyIssueActionComment,
      int situationTitle,
      int situationDetail,
      int lostHours,
      int initialRootCauses,
      int finalClosureNotes,
      int maxEventAttachment,
      int maxEventInvestigationAttachment,
      int defaultTaskDueDateDays) {
    return customInsert(
      'INSERT INTO size VALUES (:androidMaxUploadFileSize,:iosMaxUploadFileSize,:htmL5MaxUploadFileSize,:additionalFieldEmail,:additionalFieldTextArea,:additionalFieldTextBox,:additionalFieldLocation,:comment,:failureNote,:correctiveNote,:barcode,:taskComment,:sessionTimeOut,:signDeclarationTextSize,:nfcComment,:captureImageNote,:nonAuditableComment,:flipScoreTime,:eventNumber,:eventTitle,:eventDescription,:eventRiskAssociated,:eventImmediateActionTaken,:eventCorrectiveActions,:eventSituationTitle,:eventSituationDetails,:eventKeyIssueTitle,:eventKeyIssueActionTitle,:injuryPersonName,:injurySupervisiorName,:eventInjuryComment,:eventScheduleTitle,:keyIssueActionComment,:situationTitle,:situationDetail,:lostHours,:initialRootCauses,:finalClosureNotes,:maxEventAttachment,:maxEventInvestigationAttachment,:defaultTaskDueDateDays)',
      variables: [
        Variable<int>(androidMaxUploadFileSize),
        Variable<int>(iosMaxUploadFileSize),
        Variable<int>(htmL5MaxUploadFileSize),
        Variable<int>(additionalFieldEmail),
        Variable<int>(additionalFieldTextArea),
        Variable<int>(additionalFieldTextBox),
        Variable<int>(additionalFieldLocation),
        Variable<int>(comment),
        Variable<int>(failureNote),
        Variable<int>(correctiveNote),
        Variable<int>(barcode),
        Variable<int>(taskComment),
        Variable<int>(sessionTimeOut),
        Variable<int>(signDeclarationTextSize),
        Variable<int>(nfcComment),
        Variable<int>(captureImageNote),
        Variable<int>(nonAuditableComment),
        Variable<int>(flipScoreTime),
        Variable<int>(eventNumber),
        Variable<int>(eventTitle),
        Variable<int>(eventDescription),
        Variable<int>(eventRiskAssociated),
        Variable<int>(eventImmediateActionTaken),
        Variable<int>(eventCorrectiveActions),
        Variable<int>(eventSituationTitle),
        Variable<int>(eventSituationDetails),
        Variable<int>(eventKeyIssueTitle),
        Variable<int>(eventKeyIssueActionTitle),
        Variable<int>(injuryPersonName),
        Variable<int>(injurySupervisiorName),
        Variable<int>(eventInjuryComment),
        Variable<int>(eventScheduleTitle),
        Variable<int>(keyIssueActionComment),
        Variable<int>(situationTitle),
        Variable<int>(situationDetail),
        Variable<int>(lostHours),
        Variable<int>(initialRootCauses),
        Variable<int>(finalClosureNotes),
        Variable<int>(maxEventAttachment),
        Variable<int>(maxEventInvestigationAttachment),
        Variable<int>(defaultTaskDueDateDays)
      ],
      updates: {size},
    );
  }

  Future<int> insertAuditTeamTask(int auditTeamMappingId, int auditId,
      int auditEntityId, int teamId, int memberId) {
    return customInsert(
      'INSERT INTO auditTeamTask VALUES (:auditTeamMappingId,:auditId,:auditEntityId,:teamId,:memberId)',
      variables: [
        Variable<int>(auditTeamMappingId),
        Variable<int>(auditId),
        Variable<int>(auditEntityId),
        Variable<int>(teamId),
        Variable<int>(memberId)
      ],
      updates: {auditTeamTask},
    );
  }

  Future<int> insertTeamDetails(int teamId, String teamName) {
    return customInsert(
      'INSERT INTO teamDetails VALUES (:teamId,:teamName)',
      variables: [Variable<int>(teamId), Variable<String>(teamName)],
      updates: {teamDetails},
    );
  }

  Future<int> insertUserDetails(
      String firstName, String lastName, int memberId) {
    return customInsert(
      'INSERT INTO userDetails VALUES (:firstName,:lastName,:memberId)',
      variables: [
        Variable<String>(firstName),
        Variable<String>(lastName),
        Variable<int>(memberId)
      ],
      updates: {userDetails},
    );
  }

  Future<int> insertUserPermission(bool userTaskPermission) {
    return customInsert(
      'INSERT INTO userPermission VALUES (:userTaskPermission)',
      variables: [Variable<bool>(userTaskPermission)],
      updates: {userPermission},
    );
  }

  Future<int> insertOccurrenceScheduleDates(
      int occurrenceScheduleDateId,
      int auditId,
      int auditScheduleRuleId,
      int scheduleOccurrenceId,
      String scheduleRuleTitle,
      String occurrenceTitle,
      int occurrenceCycle,
      DateTime? startDate,
      DateTime? endDate,
      int auditStatusId,
      int userId,
      bool isEntityRule) {
    return customInsert(
      'INSERT INTO occurrenceScheduleDates VALUES (:occurrenceScheduleDateId,:auditId,:auditScheduleRuleId,:scheduleOccurrenceId,:scheduleRuleTitle,:occurrenceTitle,:occurrenceCycle,:startDate,:endDate,:auditStatusId,:userId,:isEntityRule)',
      variables: [
        Variable<int>(occurrenceScheduleDateId),
        Variable<int>(auditId),
        Variable<int>(auditScheduleRuleId),
        Variable<int>(scheduleOccurrenceId),
        Variable<String>(scheduleRuleTitle),
        Variable<String>(occurrenceTitle),
        Variable<int>(occurrenceCycle),
        Variable<DateTime?>(startDate),
        Variable<DateTime?>(endDate),
        Variable<int>(auditStatusId),
        Variable<int>(userId),
        Variable<bool>(isEntityRule)
      ],
      updates: {occurrenceScheduleDates},
    );
  }

  Future<int> insertAuditEnforceTimeData(
      int enforceTimeId, int auditId, String fromTime, String toTime) {
    return customInsert(
      'INSERT INTO auditEnforceTimeData VALUES (:enforceTimeId,:auditId,:fromTime,:toTime)',
      variables: [
        Variable<int>(enforceTimeId),
        Variable<int>(auditId),
        Variable<String>(fromTime),
        Variable<String>(toTime)
      ],
      updates: {auditEnforceTimeData},
    );
  }

  Future<int> insertAuditGroups(int auditGroupId, int? auditGroupParentId,
      String auditGroupName, int auditGroupLevel, int auditCount) {
    return customInsert(
      'INSERT INTO auditGroups VALUES (:auditGroupId,:auditGroupParentId,:auditGroupName,:auditGroupLevel,:auditCount)',
      variables: [
        Variable<int>(auditGroupId),
        Variable<int?>(auditGroupParentId),
        Variable<String>(auditGroupName),
        Variable<int>(auditGroupLevel),
        Variable<int>(auditCount)
      ],
      updates: {auditGroups},
    );
  }

  Selectable<CountResult> count() {
    return customSelect(
        'SELECT (SELECT COUNT(*) FROM auditDetailsList) AS countAuditDetailsList,\r\n(SELECT COUNT(*) FROM scoringTypes) AS countScoringTypes,\r\n(SELECT COUNT(*) FROM scoringFormulaInfoModel) AS countScoringFormulaInfoModel,\r\n(SELECT COUNT(*) FROM auditScoring) AS countAuditScoring,\r\n(SELECT COUNT(*) FROM auditEntityTable) AS countAuditEntityTable,\r\n(SELECT COUNT(*) FROM auditQuestion) AS countAuditQuestion,\r\n(SELECT COUNT(*) FROM auditEntityTypes) AS countauditEntityTypes,\r\n(SELECT COUNT(*) FROM auditEntityTypeQuestions) AS countauditEntityTypeQuestions,\r\n(SELECT COUNT(*) FROM auditCorrectiveActions) AS countauditCorrectiveActions,\r\n(SELECT COUNT(*) FROM auditFailureReason) AS countauditFailureReason,\r\n(SELECT COUNT(*) FROM auditAdditionalFields) AS countauditAdditionalFields,\r\n(SELECT COUNT(*) FROM auditAdditionalFieldTypeValues) AS countauditAdditionalFieldTypeValues,\r\n(SELECT COUNT(*) FROM auditAdditionalFieldEntityTypes) AS countauditAdditionalFieldEntityTypes,\r\n(SELECT COUNT(*) FROM size) AS countsize,\r\n(SELECT COUNT(*) FROM auditTeamTask) AS countauditTeamTask,\r\n(SELECT COUNT(*) FROM teamDetails) AS countteamDetails,\r\n(SELECT COUNT(*) FROM userDetails) AS countuserDetails,\r\n(SELECT COUNT(*) FROM userPermission) AS countuserPermission,\r\n(SELECT COUNT(*) FROM occurrenceScheduleDates) AS countoccurrenceScheduleDates,\r\n(SELECT COUNT(*) FROM auditEnforceTimeData) AS countauditEnforceTimeData,\r\n(SELECT COUNT(*) FROM auditGroups) AS countauditGroups',
        variables: [],
        readsFrom: {
          auditDetailsList,
          scoringTypes,
          scoringFormulaInfoModel,
          auditScoring,
          auditEntityTable,
          auditQuestion,
          auditEntityTypes,
          auditEntityTypeQuestions,
          auditCorrectiveActions,
          auditFailureReason,
          auditAdditionalFields,
          auditAdditionalFieldTypeValues,
          auditAdditionalFieldEntityTypes,
          size,
          auditTeamTask,
          teamDetails,
          userDetails,
          userPermission,
          occurrenceScheduleDates,
          auditEnforceTimeData,
          auditGroups,
        }).map((QueryRow row) {
      return CountResult(
        countAuditDetailsList: row.read<int>('countAuditDetailsList'),
        countScoringTypes: row.read<int>('countScoringTypes'),
        countScoringFormulaInfoModel:
            row.read<int>('countScoringFormulaInfoModel'),
        countAuditScoring: row.read<int>('countAuditScoring'),
        countAuditEntityTable: row.read<int>('countAuditEntityTable'),
        countAuditQuestion: row.read<int>('countAuditQuestion'),
        countauditEntityTypes: row.read<int>('countauditEntityTypes'),
        countauditEntityTypeQuestions:
            row.read<int>('countauditEntityTypeQuestions'),
        countauditCorrectiveActions:
            row.read<int>('countauditCorrectiveActions'),
        countauditFailureReason: row.read<int>('countauditFailureReason'),
        countauditAdditionalFields: row.read<int>('countauditAdditionalFields'),
        countauditAdditionalFieldTypeValues:
            row.read<int>('countauditAdditionalFieldTypeValues'),
        countauditAdditionalFieldEntityTypes:
            row.read<int>('countauditAdditionalFieldEntityTypes'),
        countsize: row.read<int>('countsize'),
        countauditTeamTask: row.read<int>('countauditTeamTask'),
        countteamDetails: row.read<int>('countteamDetails'),
        countuserDetails: row.read<int>('countuserDetails'),
        countuserPermission: row.read<int>('countuserPermission'),
        countoccurrenceScheduleDates:
            row.read<int>('countoccurrenceScheduleDates'),
        countauditEnforceTimeData: row.read<int>('countauditEnforceTimeData'),
        countauditGroups: row.read<int>('countauditGroups'),
      );
    });
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        auditDetailsList,
        scoringTypes,
        scoringFormulaInfoModel,
        auditScoring,
        auditEntityTable,
        auditQuestion,
        auditEntityTypes,
        auditEntityTypeQuestions,
        auditCorrectiveActions,
        auditFailureReason,
        auditAdditionalFields,
        auditAdditionalFieldTypeValues,
        auditAdditionalFieldEntityTypes,
        size,
        auditTeamTask,
        teamDetails,
        userDetails,
        userPermission,
        occurrenceScheduleDates,
        auditEnforceTimeData,
        auditGroups
      ];
}

class CountResult {
  final int countAuditDetailsList;
  final int countScoringTypes;
  final int countScoringFormulaInfoModel;
  final int countAuditScoring;
  final int countAuditEntityTable;
  final int countAuditQuestion;
  final int countauditEntityTypes;
  final int countauditEntityTypeQuestions;
  final int countauditCorrectiveActions;
  final int countauditFailureReason;
  final int countauditAdditionalFields;
  final int countauditAdditionalFieldTypeValues;
  final int countauditAdditionalFieldEntityTypes;
  final int countsize;
  final int countauditTeamTask;
  final int countteamDetails;
  final int countuserDetails;
  final int countuserPermission;
  final int countoccurrenceScheduleDates;
  final int countauditEnforceTimeData;
  final int countauditGroups;
  CountResult({
    required this.countAuditDetailsList,
    required this.countScoringTypes,
    required this.countScoringFormulaInfoModel,
    required this.countAuditScoring,
    required this.countAuditEntityTable,
    required this.countAuditQuestion,
    required this.countauditEntityTypes,
    required this.countauditEntityTypeQuestions,
    required this.countauditCorrectiveActions,
    required this.countauditFailureReason,
    required this.countauditAdditionalFields,
    required this.countauditAdditionalFieldTypeValues,
    required this.countauditAdditionalFieldEntityTypes,
    required this.countsize,
    required this.countauditTeamTask,
    required this.countteamDetails,
    required this.countuserDetails,
    required this.countuserPermission,
    required this.countoccurrenceScheduleDates,
    required this.countauditEnforceTimeData,
    required this.countauditGroups,
  });
}
