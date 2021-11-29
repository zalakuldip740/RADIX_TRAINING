// To parse this JSON data, do
//
//     final headlineNews = headlineNewsFromJson(jsonString);

import 'dart:convert';

AuditEntityDatas headlineNewsFromJson(String str) =>
    AuditEntityDatas.fromJson(json.decode(str));

String headlineNewsToJson(AuditEntityDatas data) => json.encode(data.toJson());

class AuditEntityDatas {
  AuditEntityDatas({
    this.auditEntity,
  });

  List<AuditEntitysData>? auditEntity;

  factory AuditEntityDatas.fromJson(Map<String, dynamic> json) =>
      AuditEntityDatas(
        auditEntity: List<AuditEntitysData>.from(
            json["auditEntity"].map((x) => AuditEntitysData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "auditEntity": List<dynamic>.from(auditEntity!.map((x) => x.toJson())),
      };
}

class AuditEntitysData {
  AuditEntitysData({
    required this.auditEntityId,
    required this.auditId,
    required this.auditEntityName,
    required this.auditEntityTypeId,
    required this.auditParentEntityId,
    required this.sequenceNo,
    required this.entityEndDate,
    required this.isLeafNode,
    required this.barcodeNfc,
    required this.entityLevel,
    required this.entityException,
    required this.scheduleOccurrenceIds,
  });

  int auditEntityId;
  int auditId;
  String auditEntityName;
  int auditEntityTypeId;
  int auditParentEntityId;
  int sequenceNo;
  DateTime? entityEndDate;
  bool isLeafNode;
  String barcodeNfc;
  int entityLevel;
  bool entityException;
  String scheduleOccurrenceIds;

  factory AuditEntitysData.fromJson(Map<String, dynamic> json) =>
      AuditEntitysData(
        auditEntityId: json["AuditEntityId"] ?? "",
        auditId: json["AuditId"] ?? "",
        auditEntityName: json["AuditEntityName"] ?? "",
        auditEntityTypeId: json["AuditEntityTypeId"] ?? "",
        auditParentEntityId: json["AuditParentEntityId"] ?? "",
        sequenceNo: json["SequenceNo"] ?? "",
        entityEndDate: json["EntityEndDate"] == null
            ? null
            : DateTime.parse(json["EntityEndDate"]),
        isLeafNode: json["IsLeafNode"] ?? false,
        barcodeNfc: json["BarcodeNFC"] ?? "",
        entityLevel: json["EntityLevel"] ?? "",
        entityException: json["EntityException"] ?? false,
        scheduleOccurrenceIds: json["ScheduleOccurrenceIds"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "AuditEntityId": auditEntityId,
        "AuditId": auditId,
        "AuditEntityName": auditEntityName,
        "AuditEntityTypeId": auditEntityTypeId,
        "AuditParentEntityId": auditParentEntityId,
        "SequenceNo": sequenceNo,
        "EntityEndDate":
            entityEndDate == null ? null : entityEndDate!.toIso8601String(),
        "IsLeafNode": isLeafNode,
        "BarcodeNFC": barcodeNfc,
        "EntityLevel": entityLevel,
        "EntityException": entityException,
        "ScheduleOccurrenceIds": scheduleOccurrenceIds,
      };
}
