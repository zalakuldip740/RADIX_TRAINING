class AuditData {
  AuditData({
    required this.auditDetailsList,
    required this.scoringTypes,
    required this.scoringFormulaInfoModel,
    required this.auditScoring,
    required this.auditEntity,
    required this.auditQuestion,
    required this.auditEntityTypes,
    required this.auditEntityTypeQuestions,
    required this.auditCorrectiveActions,
    required this.auditFailureReason,
    required this.auditAdditionalFields,
    required this.auditAdditionalFieldTypeValues,
    required this.auditAdditionalFieldEntityTypes,
    required this.size,
    required this.auditTeamTask,
    required this.teamDetails,
    required this.userDetails,
    required this.userPermission,
    required this.occurrenceScheduleDates,
    required this.auditEnforceTimeData,
    required this.auditGroups,
    required this.resumeAuditLatestData,
  });
  late final List<AuditDetailsList> auditDetailsList;
  late final List<ScoringTypes> scoringTypes;
  late final List<ScoringFormulaInfoModel> scoringFormulaInfoModel;
  late final List<AuditScoring> auditScoring;
  late final List<AuditEntity> auditEntity;
  late final List<AuditQuestion> auditQuestion;
  late final List<AuditEntityTypes> auditEntityTypes;
  late final List<AuditEntityTypeQuestions> auditEntityTypeQuestions;
  late final List<AuditCorrectiveActions> auditCorrectiveActions;
  late final List<AuditFailureReason> auditFailureReason;
  late final List<AuditAdditionalFields> auditAdditionalFields;
  late final List<AuditAdditionalFieldTypeValues>
      auditAdditionalFieldTypeValues;
  late final List<AuditAdditionalFieldEntityTypes>
      auditAdditionalFieldEntityTypes;
  late final List<Size> size;
  late final List<AuditTeamTask> auditTeamTask;
  late final List<TeamDetails> teamDetails;
  late final List<UserDetails> userDetails;
  late final List<UserPermission> userPermission;
  late final List<OccurrenceScheduleDates> occurrenceScheduleDates;
  late final List<AuditEnforceTimeData> auditEnforceTimeData;
  late final List<AuditGroups> auditGroups;
  late final List<dynamic> resumeAuditLatestData;

  AuditData.fromJson(Map<String, dynamic> json) {
    auditDetailsList = List.from(json['auditDetailsList'])
        .map((e) => AuditDetailsList.fromJson(e))
        .toList();
    scoringTypes = List.from(json['scoringTypes'])
        .map((e) => ScoringTypes.fromJson(e))
        .toList();
    scoringFormulaInfoModel = List.from(json['scoringFormulaInfoModel'])
        .map((e) => ScoringFormulaInfoModel.fromJson(e))
        .toList();
    auditScoring = List.from(json['auditScoring'])
        .map((e) => AuditScoring.fromJson(e))
        .toList();
    auditEntity = List.from(json['auditEntity'])
        .map((e) => AuditEntity.fromJson(e))
        .toList();
    auditQuestion = List.from(json['auditQuestion'])
        .map((e) => AuditQuestion.fromJson(e))
        .toList();
    auditEntityTypes = List.from(json['auditEntityTypes'])
        .map((e) => AuditEntityTypes.fromJson(e))
        .toList();
    auditEntityTypeQuestions = List.from(json['auditEntityTypeQuestions'])
        .map((e) => AuditEntityTypeQuestions.fromJson(e))
        .toList();
    auditCorrectiveActions = List.from(json['auditCorrectiveActions'])
        .map((e) => AuditCorrectiveActions.fromJson(e))
        .toList();
    auditFailureReason = List.from(json['auditFailureReason'])
        .map((e) => AuditFailureReason.fromJson(e))
        .toList();
    auditAdditionalFields = List.from(json['auditAdditionalFields'])
        .map((e) => AuditAdditionalFields.fromJson(e))
        .toList();
    auditAdditionalFieldTypeValues =
        List.from(json['auditAdditionalFieldTypeValues'])
            .map((e) => AuditAdditionalFieldTypeValues.fromJson(e))
            .toList();
    auditAdditionalFieldEntityTypes =
        List.from(json['auditAdditionalFieldEntityTypes'])
            .map((e) => AuditAdditionalFieldEntityTypes.fromJson(e))
            .toList();
    size = List.from(json['size']).map((e) => Size.fromJson(e)).toList();
    auditTeamTask = List.from(json['auditTeamTask'])
        .map((e) => AuditTeamTask.fromJson(e))
        .toList();
    teamDetails = List.from(json['teamDetails'])
        .map((e) => TeamDetails.fromJson(e))
        .toList();
    userDetails = List.from(json['userDetails'])
        .map((e) => UserDetails.fromJson(e))
        .toList();
    userPermission = List.from(json['userPermission'])
        .map((e) => UserPermission.fromJson(e))
        .toList();
    occurrenceScheduleDates = List.from(json['occurrenceScheduleDates'])
        .map((e) => OccurrenceScheduleDates.fromJson(e))
        .toList();
    auditEnforceTimeData = List.from(json['auditEnforceTimeData'])
        .map((e) => AuditEnforceTimeData.fromJson(e))
        .toList();
    auditGroups = List.from(json['auditGroups'])
        .map((e) => AuditGroups.fromJson(e))
        .toList();
    resumeAuditLatestData =
        List.castFrom<dynamic, dynamic>(json['resumeAuditLatestData']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditDetailsList'] =
        auditDetailsList.map((e) => e.toJson()).toList();
    _data['scoringTypes'] = scoringTypes.map((e) => e.toJson()).toList();
    _data['scoringFormulaInfoModel'] =
        scoringFormulaInfoModel.map((e) => e.toJson()).toList();
    _data['auditScoring'] = auditScoring.map((e) => e.toJson()).toList();
    _data['auditEntity'] = auditEntity.map((e) => e.toJson()).toList();
    _data['auditQuestion'] = auditQuestion.map((e) => e.toJson()).toList();
    _data['auditEntityTypes'] =
        auditEntityTypes.map((e) => e.toJson()).toList();
    _data['auditEntityTypeQuestions'] =
        auditEntityTypeQuestions.map((e) => e.toJson()).toList();
    _data['auditCorrectiveActions'] =
        auditCorrectiveActions.map((e) => e.toJson()).toList();
    _data['auditFailureReason'] =
        auditFailureReason.map((e) => e.toJson()).toList();
    _data['auditAdditionalFields'] =
        auditAdditionalFields.map((e) => e.toJson()).toList();
    _data['auditAdditionalFieldTypeValues'] =
        auditAdditionalFieldTypeValues.map((e) => e.toJson()).toList();
    _data['auditAdditionalFieldEntityTypes'] =
        auditAdditionalFieldEntityTypes.map((e) => e.toJson()).toList();
    _data['size'] = size.map((e) => e.toJson()).toList();
    _data['auditTeamTask'] = auditTeamTask.map((e) => e.toJson()).toList();
    _data['teamDetails'] = teamDetails.map((e) => e.toJson()).toList();
    _data['userDetails'] = userDetails.map((e) => e.toJson()).toList();
    _data['userPermission'] = userPermission.map((e) => e.toJson()).toList();
    _data['occurrenceScheduleDates'] =
        occurrenceScheduleDates.map((e) => e.toJson()).toList();
    _data['auditEnforceTimeData'] =
        auditEnforceTimeData.map((e) => e.toJson()).toList();
    _data['auditGroups'] = auditGroups.map((e) => e.toJson()).toList();
    _data['resumeAuditLatestData'] = resumeAuditLatestData;
    return _data;
  }
}

class AuditDetailsList {
  AuditDetailsList({
    required this.userId,
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
    required this.versionId,
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
    required this.auditorDeclarationText,
    required this.secondaryDeclarationText,
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
    this.lastAuditResponseId,
  });
  late final int userId;
  late final String auditName;
  late final int auditId;
  late final bool failureReason;
  late final bool correctiveAction;
  late final bool auditorSignOff;
  late final bool secondarySignOff;
  late final bool entityMustAddress;
  late final int scoringFormulaId;
  late final int auditMasterId;
  late final bool autoSyncInMobile;
  late final int? versionId;
  late final int isFailureText;
  late final int isFailureList;
  late final int isCorrectiveActionText;
  late final int isCorrectiveActionList;
  late final int defaultTaskDueDateDays;
  late final bool task;
  late final bool allowDueDate;
  late final bool sendTaskAlertEmail;
  late final int barcodeOrNFC;
  late final bool canEdit;
  late final bool showScoreInMobile;
  late final bool isRecheck;
  late final bool isRandomization;
  late final bool isQuestionCategory;
  late final bool isNotifyAuditor;
  late final String auditorDeclarationText;
  late final String secondaryDeclarationText;
  late final bool isScheduling;
  late final bool isFormerData;
  late final bool isAuditQuestions;
  late final bool isEntitiesAuditable;
  late final bool isEnforceFormerAudit;
  late final bool isFlipScore;
  late final bool auditTracking;
  late final bool isMultipleLevelTeam;
  late final bool isTaskDistribution;
  late final bool approveProcessEntitiesMandatory;
  late final bool approvalProcess;
  late final bool submissionPasswordRequired;
  late final bool isViewOnlyFormerData;
  late final int auditGroupId;
  late final DateTime? auditEndDate;
  late final int? lastAuditResponseId;

  AuditDetailsList.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    auditName = json['auditName'];
    auditId = json['auditId'];
    failureReason = json['failureReason'];
    correctiveAction = json['correctiveAction'];
    auditorSignOff = json['auditorSignOff'];
    secondarySignOff = json['secondarySignOff'];
    entityMustAddress = json['entityMustAddress'];
    scoringFormulaId = json['scoringFormulaId'];
    auditMasterId = json['auditMasterId'];
    autoSyncInMobile = json['autoSyncInMobile'];
    versionId = json['versionId'].toInt();
    isFailureText = json['isFailureText'];
    isFailureList = json['isFailureList'];
    isCorrectiveActionText = json['isCorrectiveActionText'];
    isCorrectiveActionList = json['isCorrectiveActionList'];
    defaultTaskDueDateDays = json['defaultTaskDueDateDays'];
    task = json['task'];
    allowDueDate = json['allowDueDate'];
    sendTaskAlertEmail = json['sendTaskAlertEmail'];
    barcodeOrNFC = json['barcodeOrNFC'];
    canEdit = json['canEdit'];
    showScoreInMobile = json['showScoreInMobile'];
    isRecheck = json['isRecheck'];
    isRandomization = json['isRandomization'];
    isQuestionCategory = json['isQuestionCategory'];
    isNotifyAuditor = json['isNotifyAuditor'];
    auditorDeclarationText = json['auditorDeclarationText'] ?? "";
    secondaryDeclarationText = json['secondaryDeclarationText'] ?? "";
    isScheduling = json['isScheduling'];
    isFormerData = json['isFormerData'];
    isAuditQuestions = json['isAuditQuestions'];
    isEntitiesAuditable = json['isEntitiesAuditable'];
    isEnforceFormerAudit = json['isEnforceFormerAudit'];
    isFlipScore = json['isFlipScore'];
    auditTracking = json['auditTracking'];
    isMultipleLevelTeam = json['isMultipleLevelTeam'];
    isTaskDistribution = json['isTaskDistribution'];
    approveProcessEntitiesMandatory = json['approveProcessEntitiesMandatory'];
    approvalProcess = json['approvalProcess'];
    submissionPasswordRequired = json['submissionPasswordRequired'];
    isViewOnlyFormerData = json['isViewOnlyFormerData'];
    auditGroupId = json['auditGroupId'];
    auditEndDate = json["auditEndDate"] == null
        ? null
        : DateTime.parse(json["auditEndDate"]);
    lastAuditResponseId = json['lastAuditResponseId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    _data['auditName'] = auditName;
    _data['auditId'] = auditId;
    _data['failureReason'] = failureReason;
    _data['correctiveAction'] = correctiveAction;
    _data['auditorSignOff'] = auditorSignOff;
    _data['secondarySignOff'] = secondarySignOff;
    _data['entityMustAddress'] = entityMustAddress;
    _data['scoringFormulaId'] = scoringFormulaId;
    _data['auditMasterId'] = auditMasterId;
    _data['autoSyncInMobile'] = autoSyncInMobile;
    _data['versionId'] = versionId;
    _data['isFailureText'] = isFailureText;
    _data['isFailureList'] = isFailureList;
    _data['isCorrectiveActionText'] = isCorrectiveActionText;
    _data['isCorrectiveActionList'] = isCorrectiveActionList;
    _data['defaultTaskDueDateDays'] = defaultTaskDueDateDays;
    _data['task'] = task;
    _data['allowDueDate'] = allowDueDate;
    _data['sendTaskAlertEmail'] = sendTaskAlertEmail;
    _data['barcodeOrNFC'] = barcodeOrNFC;
    _data['canEdit'] = canEdit;
    _data['showScoreInMobile'] = showScoreInMobile;
    _data['isRecheck'] = isRecheck;
    _data['isRandomization'] = isRandomization;
    _data['isQuestionCategory'] = isQuestionCategory;
    _data['isNotifyAuditor'] = isNotifyAuditor;
    _data['auditorDeclarationText'] = auditorDeclarationText;
    _data['secondaryDeclarationText'] = secondaryDeclarationText;
    _data['isScheduling'] = isScheduling;
    _data['isFormerData'] = isFormerData;
    _data['isAuditQuestions'] = isAuditQuestions;
    _data['isEntitiesAuditable'] = isEntitiesAuditable;
    _data['isEnforceFormerAudit'] = isEnforceFormerAudit;
    _data['isFlipScore'] = isFlipScore;
    _data['auditTracking'] = auditTracking;
    _data['isMultipleLevelTeam'] = isMultipleLevelTeam;
    _data['isTaskDistribution'] = isTaskDistribution;
    _data['approveProcessEntitiesMandatory'] = approveProcessEntitiesMandatory;
    _data['approvalProcess'] = approvalProcess;
    _data['submissionPasswordRequired'] = submissionPasswordRequired;
    _data['isViewOnlyFormerData'] = isViewOnlyFormerData;
    _data['auditGroupId'] = auditGroupId;
    _data['auditEndDate'] = auditEndDate;
    _data['lastAuditResponseId'] = lastAuditResponseId;
    return _data;
  }
}

class ScoringTypes {
  ScoringTypes({
    required this.scoringTypeId,
    required this.scoringTypeName,
    required this.applicationLanguageId,
  });
  late final int scoringTypeId;
  late final String scoringTypeName;
  late final int applicationLanguageId;

  ScoringTypes.fromJson(Map<String, dynamic> json) {
    scoringTypeId = json['scoringTypeId'];
    scoringTypeName = json['scoringTypeName'];
    applicationLanguageId = json['applicationLanguageId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['scoringTypeId'] = scoringTypeId;
    _data['scoringTypeName'] = scoringTypeName;
    _data['applicationLanguageId'] = applicationLanguageId;
    return _data;
  }
}

class ScoringFormulaInfoModel {
  ScoringFormulaInfoModel({
    required this.scoringFormulaId,
    required this.scoringFormulaDetailId,
    required this.scoringtypeid,
    required this.shortCode,
    required this.sortOrder,
    required this.title,
    required this.weight,
    required this.isDefault,
    required this.hexCode,
    required this.fontHexCode,
    required this.isAuditQuestions,
    this.initialAuditScore,
  });
  late final int scoringFormulaId;
  late final int scoringFormulaDetailId;
  late final int scoringtypeid;
  late final String shortCode;
  late final int sortOrder;
  late final String title;
  late final int? weight;
  late final bool isDefault;
  late final String hexCode;
  late final String fontHexCode;
  late final bool isAuditQuestions;
  late final int? initialAuditScore;

  ScoringFormulaInfoModel.fromJson(Map<String, dynamic> json) {
    scoringFormulaId = json['scoringFormulaId'];
    scoringFormulaDetailId = json['scoringFormulaDetailId'];
    scoringtypeid = json['scoringtypeid'];
    shortCode = json['shortCode'];
    sortOrder = json['sortOrder'];
    title = json['title'];
    weight = json['weight'].toInt();
    isDefault = json['isDefault'];
    hexCode = json['hexCode'];
    fontHexCode = json['fontHexCode'];
    isAuditQuestions = json['isAuditQuestions'];
    initialAuditScore = json['initialAuditScore'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['scoringFormulaId'] = scoringFormulaId;
    _data['scoringFormulaDetailId'] = scoringFormulaDetailId;
    _data['scoringtypeid'] = scoringtypeid;
    _data['shortCode'] = shortCode;
    _data['sortOrder'] = sortOrder;
    _data['title'] = title;
    _data['weight'] = weight;
    _data['isDefault'] = isDefault;
    _data['hexCode'] = hexCode;
    _data['fontHexCode'] = fontHexCode;
    _data['isAuditQuestions'] = isAuditQuestions;
    _data['initialAuditScore'] = initialAuditScore;
    return _data;
  }
}

class AuditScoring {
  AuditScoring({
    required this.auditScoringId,
    required this.auditId,
    required this.minScore,
    required this.maxScore,
    required this.color,
  });
  late final int auditScoringId;
  late final int auditId;
  late final int minScore;
  late final double? maxScore;
  late final String color;

  AuditScoring.fromJson(Map<String, dynamic> json) {
    auditScoringId = json['auditScoringId'];
    auditId = json['auditId'];
    minScore = json['minScore'].toInt();
    maxScore = json['maxScore'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditScoringId'] = auditScoringId;
    _data['auditId'] = auditId;
    _data['minScore'] = minScore;
    _data['maxScore'] = maxScore;
    _data['color'] = color;
    return _data;
  }
}

class AuditEntity {
  AuditEntity({
    required this.auditEntityId,
    required this.auditId,
    required this.auditEntityName,
    required this.auditEntityTypeId,
    required this.auditParentEntityId,
    required this.sequenceNo,
    this.entityEndDate,
    required this.isLeafNode,
    this.barcodeNFC,
    required this.entityLevel,
    this.entityException,
    this.scheduleOccurrenceIds,
  });
  late final int auditEntityId;
  late final int auditId;
  late final String auditEntityName;
  late final int auditEntityTypeId;
  late final int auditParentEntityId;
  late final int sequenceNo;
  late final DateTime? entityEndDate;
  late final bool isLeafNode;
  late final String? barcodeNFC;
  late final int entityLevel;
  late final bool? entityException;
  late final String? scheduleOccurrenceIds;

  AuditEntity.fromJson(Map<String, dynamic> json) {
    auditEntityId = json['auditEntityId'];
    auditId = json['auditId'];
    auditEntityName = json['auditEntityName'];
    auditEntityTypeId = json['auditEntityTypeId'];
    auditParentEntityId = json['auditParentEntityId'];
    sequenceNo = json['sequenceNo'];
    entityEndDate = json["entityEndDate"] == null
        ? null
        : DateTime.parse(json["entityEndDate"]);
    isLeafNode = json['isLeafNode'];
    barcodeNFC = json['barcodeNFC'];
    entityLevel = json['entityLevel'];
    entityException = json['entityException'];
    scheduleOccurrenceIds = json['scheduleOccurrenceIds'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditEntityId'] = auditEntityId;
    _data['auditId'] = auditId;
    _data['auditEntityName'] = auditEntityName;
    _data['auditEntityTypeId'] = auditEntityTypeId;
    _data['auditParentEntityId'] = auditParentEntityId;
    _data['sequenceNo'] = sequenceNo;
    _data['entityEndDate'] = entityEndDate;
    _data['isLeafNode'] = isLeafNode;
    _data['barcodeNFC'] = barcodeNFC;
    _data['entityLevel'] = entityLevel;
    _data['entityException'] = entityException;
    _data['scheduleOccurrenceIds'] = scheduleOccurrenceIds;
    return _data;
  }
}

class AuditQuestion {
  AuditQuestion({
    required this.auditQuestionId,
    required this.auditId,
    required this.questionTitle,
    required this.sequenceNo,
    required this.description,
    required this.weight,
    required this.statusId,
    required this.questionCategory,
    this.questionCategoryId,
    this.questionImageId,
    this.imageUrl,
  });
  late final int auditQuestionId;
  late final int auditId;
  late final String questionTitle;
  late final int sequenceNo;
  late final String description;
  late final int weight;
  late final int statusId;
  late final String questionCategory;
  late final int? questionCategoryId;
  late final int? questionImageId;
  late final String? imageUrl;

  AuditQuestion.fromJson(Map<String, dynamic> json) {
    auditQuestionId = json['auditQuestionId'];
    auditId = json['auditId'];
    questionTitle = json['questionTitle'];
    sequenceNo = json['sequenceNo'];
    description = json['description'];
    weight = json['weight'].toInt();
    statusId = json['statusId'];
    questionCategory = json['questionCategory'];
    questionCategoryId = json['questionCategoryId'];
    questionImageId = json['questionImageId'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditQuestionId'] = auditQuestionId;
    _data['auditId'] = auditId;
    _data['questionTitle'] = questionTitle;
    _data['sequenceNo'] = sequenceNo;
    _data['description'] = description;
    _data['weight'] = weight;
    _data['statusId'] = statusId;
    _data['questionCategory'] = questionCategory;
    _data['questionCategoryId'] = questionCategoryId;
    _data['questionImageId'] = questionImageId;
    _data['imageUrl'] = imageUrl;
    return _data;
  }
}

class AuditEntityTypes {
  AuditEntityTypes({
    required this.auditId,
    required this.auditEntityTypeId,
    required this.auditEntityTypeName,
    this.entityTypeWeight,
  });
  late final int auditId;
  late final int auditEntityTypeId;
  late final String auditEntityTypeName;
  late final double? entityTypeWeight;

  AuditEntityTypes.fromJson(Map<String, dynamic> json) {
    auditId = json['auditId'];
    auditEntityTypeId = json['auditEntityTypeId'];
    auditEntityTypeName = json['auditEntityTypeName'];
    entityTypeWeight = json['entityTypeWeight'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditId'] = auditId;
    _data['auditEntityTypeId'] = auditEntityTypeId;
    _data['auditEntityTypeName'] = auditEntityTypeName;
    _data['entityTypeWeight'] = entityTypeWeight;
    return _data;
  }
}

class AuditEntityTypeQuestions {
  AuditEntityTypeQuestions({
    required this.auditEntityTypeId,
    required this.auditEntityTypeQuestionId,
    this.auditQuestionId,
  });
  late final int auditEntityTypeId;
  late final int auditEntityTypeQuestionId;
  late final int? auditQuestionId;

  AuditEntityTypeQuestions.fromJson(Map<String, dynamic> json) {
    auditEntityTypeId = json['auditEntityTypeId'];
    auditEntityTypeQuestionId = json['auditEntityTypeQuestionId'];
    auditQuestionId = json['auditQuestionId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditEntityTypeId'] = auditEntityTypeId;
    _data['auditEntityTypeQuestionId'] = auditEntityTypeQuestionId;
    _data['auditQuestionId'] = auditQuestionId;
    return _data;
  }
}

class AuditCorrectiveActions {
  AuditCorrectiveActions({
    required this.auditCorrectiveActionId,
    required this.auditEntityTypeQuestionId,
    required this.auditQuestionCorrectiveActionId,
    required this.correctiveActionTitle,
    required this.auditId,
  });
  late final int auditCorrectiveActionId;
  late final int auditEntityTypeQuestionId;
  late final int auditQuestionCorrectiveActionId;
  late final String correctiveActionTitle;
  late final int auditId;

  AuditCorrectiveActions.fromJson(Map<String, dynamic> json) {
    auditCorrectiveActionId = json['auditCorrectiveActionId'];
    auditEntityTypeQuestionId = json['auditEntityTypeQuestionId'];
    auditQuestionCorrectiveActionId = json['auditQuestionCorrectiveActionId'];
    correctiveActionTitle = json['correctiveActionTitle'];
    auditId = json['auditId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditCorrectiveActionId'] = auditCorrectiveActionId;
    _data['auditEntityTypeQuestionId'] = auditEntityTypeQuestionId;
    _data['auditQuestionCorrectiveActionId'] = auditQuestionCorrectiveActionId;
    _data['correctiveActionTitle'] = correctiveActionTitle;
    _data['auditId'] = auditId;
    return _data;
  }
}

class AuditFailureReason {
  AuditFailureReason({
    required this.auditQuestionFailureReasonId,
    required this.auditEntityTypeQuestionId,
    required this.auditFailureReasonId,
    required this.failureReasonTitle,
    required this.auditId,
  });
  late final int auditQuestionFailureReasonId;
  late final int auditEntityTypeQuestionId;
  late final int auditFailureReasonId;
  late final String failureReasonTitle;
  late final int auditId;

  AuditFailureReason.fromJson(Map<String, dynamic> json) {
    auditQuestionFailureReasonId = json['auditQuestionFailureReasonId'];
    auditEntityTypeQuestionId = json['auditEntityTypeQuestionId'];
    auditFailureReasonId = json['auditFailureReasonId'];
    failureReasonTitle = json['failureReasonTitle'];
    auditId = json['auditId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditQuestionFailureReasonId'] = auditQuestionFailureReasonId;
    _data['auditEntityTypeQuestionId'] = auditEntityTypeQuestionId;
    _data['auditFailureReasonId'] = auditFailureReasonId;
    _data['failureReasonTitle'] = failureReasonTitle;
    _data['auditId'] = auditId;
    return _data;
  }
}

class AuditAdditionalFields {
  AuditAdditionalFields({
    required this.additionalFieldId,
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
    this.maskPlaceholder,
  });
  late final int additionalFieldId;
  late final int auditId;
  late final String fieldName;
  late final int fieldTypeId;
  late final int? displayPosition;
  late final bool isMandatory;
  late final bool? isPreDisplay;
  late final int levelTypeId;
  late final int? auditQuestionId;
  late final int sequenceNo;
  late final bool isMask;
  late final String? maskPattent;
  late final String? maskPlaceholder;

  AuditAdditionalFields.fromJson(Map<String, dynamic> json) {
    additionalFieldId = json['additionalFieldId'];
    auditId = json['auditId'];
    fieldName = json['fieldName'];
    fieldTypeId = json['fieldTypeId'];
    displayPosition = json['displayPosition'];
    isMandatory = json['isMandatory'];
    isPreDisplay = json['isPreDisplay'];
    levelTypeId = json['levelTypeId'];
    auditQuestionId = json['auditQuestionId'];
    sequenceNo = json['sequenceNo'];
    isMask = json['isMask'];
    maskPattent = json['maskPattent'];
    maskPlaceholder = json['maskPlaceholder'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['additionalFieldId'] = additionalFieldId;
    _data['auditId'] = auditId;
    _data['fieldName'] = fieldName;
    _data['fieldTypeId'] = fieldTypeId;
    _data['displayPosition'] = displayPosition;
    _data['isMandatory'] = isMandatory;
    _data['isPreDisplay'] = isPreDisplay;
    _data['levelTypeId'] = levelTypeId;
    _data['auditQuestionId'] = auditQuestionId;
    _data['sequenceNo'] = sequenceNo;
    _data['isMask'] = isMask;
    _data['maskPattent'] = maskPattent;
    _data['maskPlaceholder'] = maskPlaceholder;
    return _data;
  }
}

class AuditAdditionalFieldTypeValues {
  AuditAdditionalFieldTypeValues({
    required this.additionalFieldTypeValueId,
    required this.additionalFieldId,
    required this.additionalFieldValue,
  });
  late final int additionalFieldTypeValueId;
  late final int additionalFieldId;
  late final String additionalFieldValue;

  AuditAdditionalFieldTypeValues.fromJson(Map<String, dynamic> json) {
    additionalFieldTypeValueId = json['additionalFieldTypeValueId'];
    additionalFieldId = json['additionalFieldId'];
    additionalFieldValue = json['additionalFieldValue'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['additionalFieldTypeValueId'] = additionalFieldTypeValueId;
    _data['additionalFieldId'] = additionalFieldId;
    _data['additionalFieldValue'] = additionalFieldValue;
    return _data;
  }
}

class AuditAdditionalFieldEntityTypes {
  AuditAdditionalFieldEntityTypes({
    required this.additionalFieldEntityTypeId,
    required this.additionalFieldId,
    required this.entityTypeId,
    required this.entityLevel,
  });
  late final int additionalFieldEntityTypeId;
  late final int additionalFieldId;
  late final int entityTypeId;
  late final int entityLevel;

  AuditAdditionalFieldEntityTypes.fromJson(Map<String, dynamic> json) {
    additionalFieldEntityTypeId = json['additionalFieldEntityTypeId'];
    additionalFieldId = json['additionalFieldId'];
    entityTypeId = json['entityTypeId'];
    entityLevel = json['entityLevel'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['additionalFieldEntityTypeId'] = additionalFieldEntityTypeId;
    _data['additionalFieldId'] = additionalFieldId;
    _data['entityTypeId'] = entityTypeId;
    _data['entityLevel'] = entityLevel;
    return _data;
  }
}

class Size {
  Size({
    required this.androidMaxUploadFileSize,
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
    required this.defaultTaskDueDateDays,
  });
  late final int androidMaxUploadFileSize;
  late final int iosMaxUploadFileSize;
  late final int htmL5MaxUploadFileSize;
  late final int additionalFieldEmail;
  late final int additionalFieldTextArea;
  late final int additionalFieldTextBox;
  late final int additionalFieldLocation;
  late final int comment;
  late final int failureNote;
  late final int correctiveNote;
  late final int barcode;
  late final int taskComment;
  late final int sessionTimeOut;
  late final int signDeclarationTextSize;
  late final int nfcComment;
  late final int captureImageNote;
  late final int nonAuditableComment;
  late final int flipScoreTime;
  late final int eventNumber;
  late final int eventTitle;
  late final int eventDescription;
  late final int eventRiskAssociated;
  late final int eventImmediateActionTaken;
  late final int eventCorrectiveActions;
  late final int eventSituationTitle;
  late final int eventSituationDetails;
  late final int eventKeyIssueTitle;
  late final int eventKeyIssueActionTitle;
  late final int injuryPersonName;
  late final int injurySupervisiorName;
  late final int eventInjuryComment;
  late final int eventScheduleTitle;
  late final int keyIssueActionComment;
  late final int situationTitle;
  late final int situationDetail;
  late final int lostHours;
  late final int initialRootCauses;
  late final int finalClosureNotes;
  late final int maxEventAttachment;
  late final int maxEventInvestigationAttachment;
  late final int defaultTaskDueDateDays;

  Size.fromJson(Map<String, dynamic> json) {
    androidMaxUploadFileSize = json['androidMaxUploadFileSize'];
    iosMaxUploadFileSize = json['iosMaxUploadFileSize'];
    htmL5MaxUploadFileSize = json['htmL5MaxUploadFileSize'];
    additionalFieldEmail = json['additionalFieldEmail'];
    additionalFieldTextArea = json['additionalFieldTextArea'];
    additionalFieldTextBox = json['additionalFieldTextBox'];
    additionalFieldLocation = json['additionalFieldLocation'];
    comment = json['comment'];
    failureNote = json['failureNote'];
    correctiveNote = json['correctiveNote'];
    barcode = json['barcode'];
    taskComment = json['taskComment'];
    sessionTimeOut = json['sessionTimeOut'];
    signDeclarationTextSize = json['signDeclarationTextSize'];
    nfcComment = json['nfcComment'];
    captureImageNote = json['captureImageNote'];
    nonAuditableComment = json['nonAuditableComment'];
    flipScoreTime = json['flipScoreTime'];
    eventNumber = json['eventNumber'];
    eventTitle = json['eventTitle'];
    eventDescription = json['eventDescription'];
    eventRiskAssociated = json['eventRiskAssociated'];
    eventImmediateActionTaken = json['eventImmediateActionTaken'];
    eventCorrectiveActions = json['eventCorrectiveActions'];
    eventSituationTitle = json['eventSituationTitle'];
    eventSituationDetails = json['eventSituationDetails'];
    eventKeyIssueTitle = json['eventKeyIssueTitle'];
    eventKeyIssueActionTitle = json['eventKeyIssueActionTitle'];
    injuryPersonName = json['injuryPersonName'];
    injurySupervisiorName = json['injurySupervisiorName'];
    eventInjuryComment = json['eventInjuryComment'];
    eventScheduleTitle = json['eventScheduleTitle'];
    keyIssueActionComment = json['keyIssueActionComment'];
    situationTitle = json['situationTitle'];
    situationDetail = json['situationDetail'];
    lostHours = json['lostHours'];
    initialRootCauses = json['initialRootCauses'];
    finalClosureNotes = json['finalClosureNotes'];
    maxEventAttachment = json['maxEventAttachment'];
    maxEventInvestigationAttachment = json['maxEventInvestigationAttachment'];
    defaultTaskDueDateDays = json['defaultTaskDueDateDays'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['androidMaxUploadFileSize'] = androidMaxUploadFileSize;
    _data['iosMaxUploadFileSize'] = iosMaxUploadFileSize;
    _data['htmL5MaxUploadFileSize'] = htmL5MaxUploadFileSize;
    _data['additionalFieldEmail'] = additionalFieldEmail;
    _data['additionalFieldTextArea'] = additionalFieldTextArea;
    _data['additionalFieldTextBox'] = additionalFieldTextBox;
    _data['additionalFieldLocation'] = additionalFieldLocation;
    _data['comment'] = comment;
    _data['failureNote'] = failureNote;
    _data['correctiveNote'] = correctiveNote;
    _data['barcode'] = barcode;
    _data['taskComment'] = taskComment;
    _data['sessionTimeOut'] = sessionTimeOut;
    _data['signDeclarationTextSize'] = signDeclarationTextSize;
    _data['nfcComment'] = nfcComment;
    _data['captureImageNote'] = captureImageNote;
    _data['nonAuditableComment'] = nonAuditableComment;
    _data['flipScoreTime'] = flipScoreTime;
    _data['eventNumber'] = eventNumber;
    _data['eventTitle'] = eventTitle;
    _data['eventDescription'] = eventDescription;
    _data['eventRiskAssociated'] = eventRiskAssociated;
    _data['eventImmediateActionTaken'] = eventImmediateActionTaken;
    _data['eventCorrectiveActions'] = eventCorrectiveActions;
    _data['eventSituationTitle'] = eventSituationTitle;
    _data['eventSituationDetails'] = eventSituationDetails;
    _data['eventKeyIssueTitle'] = eventKeyIssueTitle;
    _data['eventKeyIssueActionTitle'] = eventKeyIssueActionTitle;
    _data['injuryPersonName'] = injuryPersonName;
    _data['injurySupervisiorName'] = injurySupervisiorName;
    _data['eventInjuryComment'] = eventInjuryComment;
    _data['eventScheduleTitle'] = eventScheduleTitle;
    _data['keyIssueActionComment'] = keyIssueActionComment;
    _data['situationTitle'] = situationTitle;
    _data['situationDetail'] = situationDetail;
    _data['lostHours'] = lostHours;
    _data['initialRootCauses'] = initialRootCauses;
    _data['finalClosureNotes'] = finalClosureNotes;
    _data['maxEventAttachment'] = maxEventAttachment;
    _data['maxEventInvestigationAttachment'] = maxEventInvestigationAttachment;
    _data['defaultTaskDueDateDays'] = defaultTaskDueDateDays;
    return _data;
  }
}

class AuditTeamTask {
  AuditTeamTask({
    required this.auditTeamMappingId,
    required this.auditId,
    required this.auditEntityId,
    required this.teamId,
    required this.memberId,
  });
  late final int auditTeamMappingId;
  late final int auditId;
  late final int auditEntityId;
  late final int teamId;
  late final int memberId;

  AuditTeamTask.fromJson(Map<String, dynamic> json) {
    auditTeamMappingId = json['auditTeamMappingId'];
    auditId = json['auditId'];
    auditEntityId = json['auditEntityId'];
    teamId = json['teamId'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditTeamMappingId'] = auditTeamMappingId;
    _data['auditId'] = auditId;
    _data['auditEntityId'] = auditEntityId;
    _data['teamId'] = teamId;
    _data['memberId'] = memberId;
    return _data;
  }
}

class TeamDetails {
  TeamDetails({
    required this.teamId,
    required this.teamName,
  });
  late final int teamId;
  late final String teamName;

  TeamDetails.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'];
    teamName = json['teamName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['teamId'] = teamId;
    _data['teamName'] = teamName;
    return _data;
  }
}

class UserDetails {
  UserDetails({
    required this.firstName,
    required this.lastName,
    required this.memberId,
  });
  late final String firstName;
  late final String lastName;
  late final int memberId;

  UserDetails.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    memberId = json['memberId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['memberId'] = memberId;
    return _data;
  }
}

class UserPermission {
  UserPermission({
    required this.userTaskPermission,
  });
  late final bool userTaskPermission;

  UserPermission.fromJson(Map<String, dynamic> json) {
    userTaskPermission = json['userTaskPermission'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userTaskPermission'] = userTaskPermission;
    return _data;
  }
}

class OccurrenceScheduleDates {
  OccurrenceScheduleDates({
    required this.occurrenceScheduleDateId,
    required this.auditId,
    required this.auditScheduleRuleId,
    required this.scheduleOccurrenceId,
    required this.scheduleRuleTitle,
    required this.occurrenceTitle,
    required this.occurrenceCycle,
    required this.startDate,
    required this.endDate,
    required this.auditStatusId,
    required this.userId,
    required this.isEntityRule,
  });
  late final int occurrenceScheduleDateId;
  late final int auditId;
  late final int auditScheduleRuleId;
  late final int scheduleOccurrenceId;
  late final String scheduleRuleTitle;
  late final String occurrenceTitle;
  late final int occurrenceCycle;
  late final DateTime startDate;
  late final DateTime endDate;
  late final int auditStatusId;
  late final int userId;
  late final bool isEntityRule;

  OccurrenceScheduleDates.fromJson(Map<String, dynamic> json) {
    occurrenceScheduleDateId = json['occurrenceScheduleDateId'];
    auditId = json['auditId'];
    auditScheduleRuleId = json['auditScheduleRuleId'];
    scheduleOccurrenceId = json['scheduleOccurrenceId'];
    scheduleRuleTitle = json['scheduleRuleTitle'];
    occurrenceTitle = json['occurrenceTitle'];
    occurrenceCycle = json['occurrenceCycle'];
    startDate = DateTime.parse(json['startDate']);
    endDate = DateTime.parse(json['endDate']);
    auditStatusId = json['auditStatusId'];
    userId = json['userId'];
    isEntityRule = json['isEntityRule'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['occurrenceScheduleDateId'] = occurrenceScheduleDateId;
    _data['auditId'] = auditId;
    _data['auditScheduleRuleId'] = auditScheduleRuleId;
    _data['scheduleOccurrenceId'] = scheduleOccurrenceId;
    _data['scheduleRuleTitle'] = scheduleRuleTitle;
    _data['occurrenceTitle'] = occurrenceTitle;
    _data['occurrenceCycle'] = occurrenceCycle;
    _data['startDate'] = startDate;
    _data['endDate'] = endDate;
    _data['auditStatusId'] = auditStatusId;
    _data['userId'] = userId;
    _data['isEntityRule'] = isEntityRule;
    return _data;
  }
}

class AuditEnforceTimeData {
  AuditEnforceTimeData({
    required this.enforceTimeId,
    required this.auditId,
    required this.fromTime,
    required this.toTime,
  });
  late final int enforceTimeId;
  late final int auditId;
  late final String fromTime;
  late final String toTime;

  AuditEnforceTimeData.fromJson(Map<String, dynamic> json) {
    enforceTimeId = json['enforceTimeId'];
    auditId = json['auditId'];
    fromTime = json['fromTime'];
    toTime = json['toTime'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['enforceTimeId'] = enforceTimeId;
    _data['auditId'] = auditId;
    _data['fromTime'] = fromTime;
    _data['toTime'] = toTime;
    return _data;
  }
}

class AuditGroups {
  AuditGroups({
    required this.auditGroupId,
    this.auditGroupParentId,
    required this.auditGroupName,
    required this.auditGroupLevel,
    required this.auditCount,
  });
  late final int auditGroupId;
  late final int? auditGroupParentId;
  late final String auditGroupName;
  late final int auditGroupLevel;
  late final int auditCount;

  AuditGroups.fromJson(Map<String, dynamic> json) {
    auditGroupId = json['auditGroupId'];
    auditGroupParentId = json['auditGroupParentId'];
    auditGroupName = json['auditGroupName'];
    auditGroupLevel = json['auditGroupLevel'];
    auditCount = json['auditCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['auditGroupId'] = auditGroupId;
    _data['auditGroupParentId'] = auditGroupParentId;
    _data['auditGroupName'] = auditGroupName;
    _data['auditGroupLevel'] = auditGroupLevel;
    _data['auditCount'] = auditCount;
    return _data;
  }
}
