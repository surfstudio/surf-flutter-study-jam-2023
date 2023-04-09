import 'dart:io';
import 'dart:typed_data';

import '../../../ticket_storage/data/services/documents_storage_service_abstract.dart';
import '../../domain/repositories/document_repository_abstract.dart';

class DocumentRepository implements DocumentRepositoryAbstract {
  final DocumentsStorageServiceAbstract documentsStorageService;

  DocumentRepository({required this.documentsStorageService});

  @override
  Future<Uint8List?> loadDocument({
    required String url,
  }) async {
    try {
      final path = await documentsStorageService.getPathToDocument(key: url);
      if (path?.isEmpty ?? true) {
        return null;
      }
      final file = await File(path!).readAsBytes();
      return file;
    } catch (_) {
      return null;
    }
  }
}
