import 'package:get_it/get_it.dart';
import 'package:sqlite_demo_task2/features/audit_entity/domain/use_cases/get_entries_count_usecase.dart';
import 'package:sqlite_demo_task2/features/audit_entity/domain/use_cases/get_json_and_insert_audit_entity_usecase.dart';

import 'features/audit_entity/data/data_sources/audit_entity_data_source.dart';
import 'features/audit_entity/data/data_sources/audit_entity_data_source_impl.dart';
import 'features/audit_entity/data/data_sources/database/audit_entity_db.dart';
import 'features/audit_entity/data/repositories/audit_entity_repository_impl.dart';
import 'features/audit_entity/domain/repositories/audit_entity_repository.dart';
import 'features/audit_entity/presentation/cubit/audit_entity_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // cubit
  sl.registerFactory<AuditEntityCubit>(() => AuditEntityCubit(
      getEntriesCountUseCase: sl.call(),
      getJsonAndInsertAuditEntityUseCase: sl.call()));

  // database
  sl.registerLazySingleton<AuditEntityDb>(() => AuditEntityDb());

  //usecase
  sl.registerLazySingleton<GetEntriesCountUseCase>(
      () => GetEntriesCountUseCase(auditEntityRepository: sl.call()));
  sl.registerLazySingleton<GetJsonAndInsertAuditEntityUseCase>(() =>
      GetJsonAndInsertAuditEntityUseCase(auditEntityRepository: sl.call()));

  //repository
  sl.registerLazySingleton<AuditEntityRepository>(
      () => AuditEntityRepositoryImpl(auditEntityDataSource: sl.call()));

  //datasource
  sl.registerLazySingleton<AuditEntityDataSource>(
      () => AuditEntityDataSourceImpl(auditEntityDb: sl.call()));
}
