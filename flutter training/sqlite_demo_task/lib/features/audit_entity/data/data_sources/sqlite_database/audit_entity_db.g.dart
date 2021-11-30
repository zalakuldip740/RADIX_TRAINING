// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_entity_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
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
  final String barCodeNfc;
  final int entityLevel;
  final bool entityException;
  final String scheduleOccurrenceIds;
  AuditEntityTableData(
      {required this.auditEntityId,
      required this.auditId,
      required this.auditEntityName,
      required this.auditEntityTypeId,
      required this.auditParentEntityId,
      required this.sequenceNo,
      this.entityEndDate,
      required this.isLeafNode,
      required this.barCodeNfc,
      required this.entityLevel,
      required this.entityException,
      required this.scheduleOccurrenceIds});
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
          .mapFromDatabaseResponse(data['${effectivePrefix}barCodeNfc'])!,
      entityLevel: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityLevel'])!,
      entityException: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}entityException'])!,
      scheduleOccurrenceIds: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ScheduleOccurrenceIds'])!,
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
    map['barCodeNfc'] = Variable<String>(barCodeNfc);
    map['entityLevel'] = Variable<int>(entityLevel);
    map['entityException'] = Variable<bool>(entityException);
    map['ScheduleOccurrenceIds'] = Variable<String>(scheduleOccurrenceIds);
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
      barCodeNfc: Value(barCodeNfc),
      entityLevel: Value(entityLevel),
      entityException: Value(entityException),
      scheduleOccurrenceIds: Value(scheduleOccurrenceIds),
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
      barCodeNfc: serializer.fromJson<String>(json['barCodeNfc']),
      entityLevel: serializer.fromJson<int>(json['entityLevel']),
      entityException: serializer.fromJson<bool>(json['entityException']),
      scheduleOccurrenceIds:
          serializer.fromJson<String>(json['ScheduleOccurrenceIds']),
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
      'barCodeNfc': serializer.toJson<String>(barCodeNfc),
      'entityLevel': serializer.toJson<int>(entityLevel),
      'entityException': serializer.toJson<bool>(entityException),
      'ScheduleOccurrenceIds': serializer.toJson<String>(scheduleOccurrenceIds),
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
  final Value<String> barCodeNfc;
  final Value<int> entityLevel;
  final Value<bool> entityException;
  final Value<String> scheduleOccurrenceIds;
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
    required String barCodeNfc,
    required int entityLevel,
    required bool entityException,
    required String scheduleOccurrenceIds,
  })  : auditId = Value(auditId),
        auditEntityName = Value(auditEntityName),
        auditEntityTypeId = Value(auditEntityTypeId),
        auditParentEntityId = Value(auditParentEntityId),
        sequenceNo = Value(sequenceNo),
        isLeafNode = Value(isLeafNode),
        barCodeNfc = Value(barCodeNfc),
        entityLevel = Value(entityLevel),
        entityException = Value(entityException),
        scheduleOccurrenceIds = Value(scheduleOccurrenceIds);
  static Insertable<AuditEntityTableData> custom({
    Expression<int>? auditEntityId,
    Expression<int>? auditId,
    Expression<String>? auditEntityName,
    Expression<int>? auditEntityTypeId,
    Expression<int>? auditParentEntityId,
    Expression<int>? sequenceNo,
    Expression<DateTime?>? entityEndDate,
    Expression<bool>? isLeafNode,
    Expression<String>? barCodeNfc,
    Expression<int>? entityLevel,
    Expression<bool>? entityException,
    Expression<String>? scheduleOccurrenceIds,
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
      Value<String>? barCodeNfc,
      Value<int>? entityLevel,
      Value<bool>? entityException,
      Value<String>? scheduleOccurrenceIds}) {
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
      map['barCodeNfc'] = Variable<String>(barCodeNfc.value);
    }
    if (entityLevel.present) {
      map['entityLevel'] = Variable<int>(entityLevel.value);
    }
    if (entityException.present) {
      map['entityException'] = Variable<bool>(entityException.value);
    }
    if (scheduleOccurrenceIds.present) {
      map['ScheduleOccurrenceIds'] =
          Variable<String>(scheduleOccurrenceIds.value);
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
      'barCodeNfc', aliasedName, false,
      typeName: 'TEXT',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
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
      'entityException', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _scheduleOccurrenceIdsMeta =
      const VerificationMeta('scheduleOccurrenceIds');
  late final GeneratedColumn<String?> scheduleOccurrenceIds =
      GeneratedColumn<String?>('ScheduleOccurrenceIds', aliasedName, false,
          typeName: 'TEXT',
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
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
    } else if (isInserting) {
      context.missing(_barCodeNfcMeta);
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
    } else if (isInserting) {
      context.missing(_entityExceptionMeta);
    }
    if (data.containsKey('ScheduleOccurrenceIds')) {
      context.handle(
          _scheduleOccurrenceIdsMeta,
          scheduleOccurrenceIds.isAcceptableOrUnknown(
              data['ScheduleOccurrenceIds']!, _scheduleOccurrenceIdsMeta));
    } else if (isInserting) {
      context.missing(_scheduleOccurrenceIdsMeta);
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

abstract class _$AuditEntityDb extends GeneratedDatabase {
  _$AuditEntityDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final AuditEntityTable auditEntityTable = AuditEntityTable(this);
  Future<int?>? insertAuditEntity(
      int auditEntityId,
      int auditId,
      String auditEntityName,
      int auditEntityTypeId,
      int auditParentEntityId,
      int sequenceNo,
      DateTime? entityEndDate,
      bool isLeafNode,
      String barCodeNfc,
      int entityLevel,
      bool entityException,
      String ScheduleOccurrenceIds) {
    return customInsert(
      'INSERT INTO auditEntityTable (auditEntityId,auditId,auditEntityName,auditEntityTypeId,auditParentEntityId,sequenceNo,entityEndDate,isLeafNode,barCodeNfc,entityLevel,entityException,ScheduleOccurrenceIds) VALUES (:auditEntityId,:auditId,:auditEntityName,:auditEntityTypeId,:auditParentEntityId,:sequenceNo,:entityEndDate,:isLeafNode,:barCodeNfc,:entityLevel,:entityException,:ScheduleOccurrenceIds)',
      variables: [
        Variable<int>(auditEntityId),
        Variable<int>(auditId),
        Variable<String>(auditEntityName),
        Variable<int>(auditEntityTypeId),
        Variable<int>(auditParentEntityId),
        Variable<int>(sequenceNo),
        Variable<DateTime?>(entityEndDate),
        Variable<bool>(isLeafNode),
        Variable<String>(barCodeNfc),
        Variable<int>(entityLevel),
        Variable<bool>(entityException),
        Variable<String>(ScheduleOccurrenceIds)
      ],
      updates: {auditEntityTable},
    );
  }

  Selectable<AuditEntityTableData>? getAllAuditEntity() {
    return customSelect('SELECT * FROM auditEntityTable',
        variables: [],
        readsFrom: {
          auditEntityTable,
        }).map(auditEntityTable.mapFromRow);
  }

  Future<int?>? updateByAuditEntityId(
      String auditEntityName, int auditEntityId) {
    return customUpdate(
      'UPDATE auditEntityTable SET auditEntityName=:auditEntityName WHERE auditEntityId=:auditEntityId',
      variables: [
        Variable<String>(auditEntityName),
        Variable<int>(auditEntityId)
      ],
      updates: {auditEntityTable},
      updateKind: UpdateKind.update,
    );
  }

  Future<int?>? deleteByAuditEntityId(int auditEntityId) {
    return customUpdate(
      'DELETE FROM auditEntityTable WHERE auditEntityId=:auditEntityId',
      variables: [Variable<int>(auditEntityId)],
      updates: {auditEntityTable},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [auditEntityTable];
}
