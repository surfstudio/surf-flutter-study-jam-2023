import 'package:dio/dio.dart';

abstract class DownloadServiceAbstract {
  Future<List<int>> downloadPdf({
    required String url,
    required CancelToken cancelToken,
    void Function(int, int)? onReceiveProgress,
    int? start,
  });
}
