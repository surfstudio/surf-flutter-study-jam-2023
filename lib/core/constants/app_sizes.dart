import 'package:flutter/material.dart';

/// Класс для хранения константных размеров (paddings, gaps, rounded corners...)
abstract class AppSizes {
  static const p0 = 0.0;
  static const p2 = 2.0;
  static const p4 = 4.0;
  static const p8 = 8.0;
  static const p12 = 12.0;
  static const p14 = 14.0;
  static const p16 = 16.0;
  static const p24 = 24.0;
  static const p32 = 32.0;
  static const p40 = 40.0;
  static const p50 = 50.0;

  static const gapH24 = SizedBox(height: AppSizes.p24);
  static const gapH40 = SizedBox(height: AppSizes.p40);

  static const borderRadius16 = BorderRadius.all(Radius.circular(AppSizes.p16));

  static const roundedRectangleBorder16 = RoundedRectangleBorder(
    borderRadius: borderRadius16,
  );

  static const edgeSymmetricV16H32 = EdgeInsets.symmetric(
    vertical: AppSizes.p16,
    horizontal: AppSizes.p32,
  );

  static const edgeSymmetricV24H16 = EdgeInsets.symmetric(
    vertical: AppSizes.p24,
    horizontal: AppSizes.p16,
  );

  static const edgeOnlyT8L16R16 = EdgeInsets.only(
    top: AppSizes.p8,
    left: AppSizes.p16,
    right: AppSizes.p16,
  );
}
