import 'package:dio/dio.dart';

class Api {
  static final Api _singleton = Api._();
  String? deviceToken;

  final _baseOptions = BaseOptions(
    connectTimeout: const Duration(seconds: 25),
    receiveTimeout: const Duration(seconds: 25),
    sendTimeout: const Duration(seconds: 25),
  );

  Dio get client {
    final dio = Dio(_baseOptions);

    return addInterceptors(dio);
  }

  Api._();

  factory Api() {
    return _singleton;
  }

  Dio addInterceptors(Dio dio) {
    return dio
      ..interceptors.addAll(
        [],
      );
  }
}
