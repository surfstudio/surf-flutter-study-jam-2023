import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/assets/text/text_extension.dart';

/// Class of the app themes data.
abstract class AppThemeData {
  /// Light theme configuration.
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: [_textTheme],
  );

  /// Dark theme configuration.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    extensions: [_textTheme],
  );

  static final _textTheme = AppTextTheme.base();
}