import 'package:sqlite_demo_task/features/audit_entity/domain/entities/audit_entity.dart';

class AuditEntityModel extends AuditEntitys {
  const AuditEntityModel({
    required int auditEntityId,
    required int auditId,
    required String auditEntityName,
    required int auditEntityTypeId,
    required int auditParentEntityId,
    required int sequenceNo,
    required DateTime? entityEndDate,
    required bool isLeafNode,
    required String barCodeNfc,
    required int entityLevel,
    required bool entityException,
    required String scheduleOccurrenceIds,
  }) : super(
            auditEntityId: auditEntityId,
            auditId: auditId,
            auditEntityName: auditEntityName,
            auditEntityTypeId: auditEntityTypeId,
            auditParentEntityId: auditParentEntityId,
            sequenceNo: sequenceNo,
            entityEndDate: entityEndDate,
            isLeafNode: isLeafNode,
            barCodeNfc: barCodeNfc,
            entityLevel: entityLevel,
            entityException: entityException,
            scheduleOccurrenceIds: scheduleOccurrenceIds);

//   factory AuditEntityModel.fromJson(Map<String, dynamic> json) =>
//       AuditEntityModel(
//         auditEntityId: json["AuditEntityId"],
//         auditId: json["AuditId"],
//         auditEntityName: json["AuditEntityName"],
//         auditEntityTypeId: json["AuditEntityTypeId"],
//         auditParentEntityId: json["AuditParentEntityId"],
//         sequenceNo: json["SequenceNo"],
//         entityEndDate: DateTime.parse(json["EntityEndDate"]),
//         isLeafNode: json["IsLeafNode"],
//         barCodeNfc: json["BarcodeNFC"],
//         entityLevel: json["EntityLevel"],
//         entityException: json["EntityException"],
//         scheduleOccurrenceIds: json["ScheduleOccurrenceIds"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "AuditEntityId": auditEntityId,
//         "AuditId": auditId,
//         "AuditEntityName": auditEntityName,
//         "AuditEntityTypeId": auditEntityTypeId,
//         "AuditParentEntityId": auditParentEntityId,
//         "SequenceNo": sequenceNo,
//         "EntityEndDate": entityEndDate!.toIso8601String(),
//         "IsLeafNode": isLeafNode,
//         "BarCodeNFC": barCodeNfc,
//         "EntityLevel": entityLevel,
//         "EntityException": entityException,
//         "ScheduleOccurrenceIds": scheduleOccurrenceIds,
//       };
// }
  factory AuditEntityModel.fromJson(Map<String, dynamic> json) =>
      AuditEntityModel(
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
        barCodeNfc: json["BarcodeNFC"] ?? "",
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
        "BarcodeNFC": barCodeNfc,
        "EntityLevel": entityLevel,
        "EntityException": entityException,
        "ScheduleOccurrenceIds": scheduleOccurrenceIds,
      };
}
