import 'dart:typed_data';

abstract class DocumentRepositoryAbstract {
  Future<Uint8List?> loadDocument({
    required String url,
  });
}
