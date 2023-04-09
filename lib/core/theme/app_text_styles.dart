import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_sizes.dart';

/// Класс AppTextStyle содержит константы текстовых стилей, используемых в приложении.
class AppTextStyle {
  static const bodyText = TextStyle(
    color: AppColors.black,
    fontSize: AppSizes.p16,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const buttonText = TextStyle(
    color: AppColors.black,
    fontSize: AppSizes.p14,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );

  static const labelButton = TextStyle(
    color: AppColors.grey,
  );
}
