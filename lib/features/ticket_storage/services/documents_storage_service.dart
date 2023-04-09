import 'package:hive/hive.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/services/documents_storage_service_abstract.dart';

class DocumentsStorageService implements DocumentsStorageServiceAbstract {
  static const String _documentsBoxName = 'documentsBox';

  Future<Box<String>> get _documentsBox async =>
      await Hive.openBox<String>(_documentsBoxName);
  @override
  Future<String?> getPathToDocument({required String key}) async {
    try {
      final box = await _documentsBox;
      return box.get(key);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> savePathToDocument({
    required String url,
    required String path,
  }) async {
    try {
      final box = await _documentsBox;
      box.put(url, path);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> deletePathToDocument({required String key}) async {
    try {
      final box = await _documentsBox;
      box.delete(key);
      return true;
    } catch (_) {
      return false;
    }
  }
}
