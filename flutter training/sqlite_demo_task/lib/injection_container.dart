import 'package:get_it/get_it.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/audit_entity_data_source_impl.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/data_sources/sqlite_database/audit_entity_db.dart';
import 'package:sqlite_demo_task/features/audit_entity/data/repositories/audit_entity_repository_impl.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/delete_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/get_json_data_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/insert_audit_entity_usecase.dart';
import 'package:sqlite_demo_task/features/audit_entity/domain/use_cases/update_audit_entity_usecase.dart';

import 'features/audit_entity/presentation/cubit/audit_entity_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // cubit
  sl.registerFactory<AuditEntityCubit>(() => AuditEntityCubit(
      insertAuditEntityUsecase: sl.call(),
      getAuditEntityUsecase: sl.call(),
      updateAuditEntityUsecase: sl.call(),
      deleteAuditEntityUsecase: sl.call(),
      getJsonDataUsecase: sl.call()));

  // database
  sl.registerLazySingleton<AuditEntityDb>(() => AuditEntityDb());

  //usecase
  sl.registerLazySingleton<InsertAuditEntityUsecase>(
      () => InsertAuditEntityUsecase(auditEntityRepository: sl.call()));
  sl.registerLazySingleton<DeleteAuditEntityUsecase>(
      () => DeleteAuditEntityUsecase(auditEntityRepository: sl.call()));
  sl.registerLazySingleton<UpdateAuditEntityUsecase>(
      () => UpdateAuditEntityUsecase(auditEntityRepository: sl.call()));
  sl.registerLazySingleton<GetAuditEntityUsecase>(
      () => GetAuditEntityUsecase(auditEntityRepository: sl.call()));
  sl.registerLazySingleton<GetJsonDataUsecase>(
      () => GetJsonDataUsecase(auditEntityRepository: sl.call()));

  //repository
  sl.registerLazySingleton<AuditEntityRepository>(
      () => AuditEntityRepositoryImpl(auditEntityDataSource: sl.call()));

  //datasource
  sl.registerLazySingleton<AuditEntityDataSource>(
      () => AuditEntityDataSourceImpl(auditEntityDb: sl.call()));
}
