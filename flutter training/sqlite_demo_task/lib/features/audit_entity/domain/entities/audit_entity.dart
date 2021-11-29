import 'package:equatable/equatable.dart';

class AuditEntitys extends Equatable {
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

  const AuditEntitys(
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

  @override
  // TODO: implement props
  List<Object?> get props => [
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
}
