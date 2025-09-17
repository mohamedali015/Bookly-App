import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.textColor,
    this.borderRadius,
    required this.text,
  });

  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyResponsive.height(value: 48),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??
                BorderRadius.circular(MyResponsive.radius(value: 16)),
          ),
        ),
        child: Text(
          text,
          style: AppFontStyles.textF16(color: textColor ?? AppColors.black)
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
