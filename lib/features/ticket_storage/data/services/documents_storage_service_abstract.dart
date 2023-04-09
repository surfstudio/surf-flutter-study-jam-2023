abstract class DocumentsStorageServiceAbstract {
  Future<bool> savePathToDocument({required String url, required String path});

  Future<String?> getPathToDocument({required String key});

  Future<bool> deletePathToDocument({required String key});
}
