// import 'package:equatable/equatable.dart';
//
// class AuditEntityEntity extends Equatable {
//   final String? auditEntityName;
//   final DateTime? entityEndDate;
//   final int? auditEntityId;
//   const AuditEntityEntity(
//       {required this.auditEntityName,
//       required this.entityEndDate,
//       required this.auditEntityId});
//   @override
//   List<Object?> get props => [auditEntityName, entityEndDate];
// }
class AuditEntityData2 {
  final int auditEntityId;
  final int auditId;
  final String auditEntityName;
  final int auditEntityTypeId;
  final int auditParentEntityId;
  final int sequenceNo;
  final DateTime? entityEndDate;
  final bool isLeafNode;
  final String barCodeNfc;
  final int entityLevel;
  final bool entityException;
  final String scheduleOccurrenceIds;

  AuditEntityData2(
      {required this.auditEntityId,
      required this.auditId,
      required this.auditEntityName,
      required this.auditEntityTypeId,
      required this.auditParentEntityId,
      required this.sequenceNo,
      required this.entityEndDate,
      required this.isLeafNode,
      required this.barCodeNfc,
      required this.entityLevel,
      required this.entityException,
      required this.scheduleOccurrenceIds});
}
