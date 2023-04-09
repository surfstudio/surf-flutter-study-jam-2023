import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class FileDownloader {
  final Dio _dio = Dio();

  Future<File> downloadFile(String url, String filename,
      Function(int, int)? onReceiveProgress) async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      print(dir);
      print(dir.path);
      final file = File('${dir.path}/$filename');

      await _dio.download(
        url,
        file.path,
        onReceiveProgress: onReceiveProgress,
      );

      return file;
    } catch (e) {
      print('Ошибка загрузки файла: $e');
      rethrow;
    }
  }
}
