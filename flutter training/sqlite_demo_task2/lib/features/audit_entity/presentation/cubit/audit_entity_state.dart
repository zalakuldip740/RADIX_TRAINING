part of 'audit_entity_cubit.dart';

abstract class AuditEntityState extends Equatable {
  const AuditEntityState();
}

class AuditEntityInitial extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityLoading extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityError extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityLoaded extends AuditEntityState {
  List<int> countData;
  AuditEntityLoaded({required this.countData});
  @override
  List<Object> get props => [countData];
}
