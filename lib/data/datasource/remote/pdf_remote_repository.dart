import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/data/api/api.dart';
import 'package:surf_flutter_study_jam_2023/data/database/models/ticket_file.dart';

class PdfRemoteRepository {
  final Api _api;

  PdfRemoteRepository(this._api);

  Future<TicketFile> downloadPdf({
    required String pdfUrl,
    Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final tempDir = await getTemporaryDirectory();

      final fileName = pdfUrl.split('/').last;
      final savePath = tempDir.path + fileName;

      await _api.client.download(
        pdfUrl,
        savePath,
        onReceiveProgress: onReceiveProgress,
      );

      return TicketFile(
        name: fileName.split('.').first,
        filePath: savePath,
        receivedBytes: 0,
        totalBytes: 1,
        datetime: DateTime.now(),
      );
    } catch (e) {
      throw Exception('Ну удалось скачать PDF файл: $e');
    }
  }
}
