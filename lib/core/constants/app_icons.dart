import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/core/constants/app_colors.dart';

abstract class AppIcons {
  static const airplaneTicket = Icon(
    Icons.airplane_ticket_outlined,
    color: Colors.grey,
  );

  static const train = Icon(
    Icons.directions_subway_outlined,
    color: Colors.grey,
  );

  static const pause = Icon(
    Icons.pause_circle_outline,
    color: AppColors.royalPurple,
  );

  static const cloudDone = Icon(
    Icons.cloud_done,
    color: AppColors.royalPurple,
  );
}
