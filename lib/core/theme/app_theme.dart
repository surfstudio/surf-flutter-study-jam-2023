import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';

/// Класс AppTheme содержит темы, используемые в приложении.
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(
        elevation: AppSizes.p0,
        backgroundColor: AppColors.scaffoldBackgroundColor,
      ),
    );
  }
}
