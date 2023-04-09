import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_text_styles.dart';

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
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.royalPurple,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: AppTextStyle.labelButton,
        contentPadding: AppSizes.edgeSymmetricV24H16,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.p16),
          borderSide: const BorderSide(
            width: AppSizes.p2,
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.p16),
          borderSide: const BorderSide(
            width: AppSizes.p2,
            color: AppColors.royalPurple,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.p16),
          borderSide: const BorderSide(
            width: AppSizes.p2,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.p16),
          borderSide: const BorderSide(
            width: AppSizes.p2,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
