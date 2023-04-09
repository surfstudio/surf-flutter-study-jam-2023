import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../data/services/download_service_abstract.dart';

class DownloadService implements DownloadServiceAbstract {
  final Dio dio;

  DownloadService({required this.dio});

  @override
  Future<List<int>> downloadPdf({
    required String url,
    required CancelToken cancelToken,
    void Function(int, int)? onReceiveProgress,
    int? start,
  }) async {
    final response = await dio.get(
      url,
      options: Options(
        responseType: ResponseType.bytes,
        headers: start != null
            ? {
                'range': 'bytes=$start-',
              }
            : null,
      ),
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
    if (response.statusCode == 200) {
      return response.data;
    }
    return [];
  }
}
