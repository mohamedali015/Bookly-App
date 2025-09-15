import 'package:flutter/material.dart';

import '../helper/my_responsive.dart';
import 'app_colors.dart';

abstract class AppFontStyles {
  static TextStyle regularF14(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 14),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle regularF16(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 16),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle regularF18(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 18),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle regularF20(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 20),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle regularF30(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 30),
        fontWeight: FontWeight.w400,
        color: color,
      );
}
