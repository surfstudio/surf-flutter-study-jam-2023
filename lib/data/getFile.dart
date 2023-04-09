import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void downloadFile(String url, String savePath) async {
  Dio dio = Dio();
  try {
    Response response = await dio.download(url, savePath);
  } catch (error) {
    debugPrint(error as String?);
  }
}
