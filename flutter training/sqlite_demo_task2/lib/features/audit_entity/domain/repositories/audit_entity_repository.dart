abstract class AuditEntityRepository {
  Future<List<int>> getEntriesCount();
  Future<void> getJsonAndInsertAuditEntity();
}
