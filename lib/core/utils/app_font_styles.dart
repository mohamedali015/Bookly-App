import 'package:bookly/core/utils/app_constrains.dart';
import 'package:flutter/material.dart';

import '../helper/my_responsive.dart';
import 'app_colors.dart';

abstract class AppFontStyles {
  static TextStyle textF14(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 14),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle textF16(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 16),
        fontWeight: FontWeight.w500,
        color: color,
      );

  static TextStyle textF18(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 18),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle textF20(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 20),
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle textF30(
    BuildContext context, {
    Color color = AppColors.white,
  }) =>
      TextStyle(
        fontSize: MyResponsive.fontSize(context, value: 30),
        fontWeight: FontWeight.w400,
        fontFamily: AppConstants.fontFamily,
        color: color,
      );
}
