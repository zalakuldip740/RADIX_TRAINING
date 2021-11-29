part of 'audit_entity_cubit.dart';

abstract class AuditEntityState extends Equatable {
  const AuditEntityState();
}

class AuditEntityInitial extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityLoaded extends AuditEntityState {
 // Stream<List<AuditEntitys>> data;
   List data=[];
  AuditEntityLoaded({required this.data});
   @override
  List<Object> get props => [data];
}

class AuditEntityLoading extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityError extends AuditEntityState {
  @override
  List<Object> get props => [];
}
