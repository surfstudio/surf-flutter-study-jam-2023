abstract class DocumentsStorageServiceAbstract {
  Future<bool> savePathToDocument({required String key, required String path});

  Future<String?> getPathToDocument({required String key});
}
