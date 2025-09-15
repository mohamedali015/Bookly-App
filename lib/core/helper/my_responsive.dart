import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

abstract class MyResponsive {
  static double height({required double value}) => value.h;

  static double width({required double value}) => value.w;

  static double fontSize({required double value}) => value.sp;

  static EdgeInsets paddingSymmetric({
    double? horizontal,
    double? vertical,
  }) {
    return EdgeInsets.symmetric(
      horizontal: (horizontal ?? 0).w,
      vertical: (vertical ?? 0).h,
    );
  }

  static EdgeInsets paddingOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: (left ?? 0).w,
      right: (right ?? 0).w,
      top: (top ?? 0).h,
      bottom: (bottom ?? 0).h,
    );
  }

  static EdgeInsets paddingAll({required double value}) {
    return EdgeInsets.all(value.w);
  }
}

// abstract class MyResponsive {
//   static double height(BuildContext context, {required double value}) =>
//       value.h; // ScreenUtil auto handles height
//
//   static double width(BuildContext context, {required double value}) =>
//       value.w; // ScreenUtil auto handles width
//
//   static double fontSize(BuildContext context, {required double value}) =>
//       value.sp; // sp for scalable fonts
//
//   static EdgeInsets paddingSymmetric(
//       BuildContext context, {
//         double? horizontal,
//         double? vertical,
//       }) {
//     return EdgeInsets.symmetric(
//       horizontal: (horizontal ?? 0).w,
//       vertical: (vertical ?? 0).h,
//     );
//   }
//
//   static EdgeInsets paddingOnly(
//       BuildContext context, {
//         double? left,
//         double? right,
//         double? top,
//         double? bottom,
//       }) {
//     return EdgeInsets.only(
//       left: (left ?? 0).w,
//       right: (right ?? 0).w,
//       top: (top ?? 0).h,
//       bottom: (bottom ?? 0).h,
//     );
//   }
//
// }
