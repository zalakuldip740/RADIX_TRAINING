abstract class AuditEntityDataSource {
  Future<List<int>> getEntriesCount();
  Future<void> getJsonAndInsertAuditEntity();
}
