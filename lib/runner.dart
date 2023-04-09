import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/my_app.dart';

/// Запуск приложения.
///
/// Если перед запуском нужно выполнить какие-то
/// асинхронные операции - [runner] подходящее место.
Future<void> runner() async {
  runApp(const MyApp());
}
