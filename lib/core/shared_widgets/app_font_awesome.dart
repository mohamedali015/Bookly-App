import 'package:bookly/core/helper/my_responsive.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class AppFontAwesomeIcons extends StatelessWidget {
  const AppFontAwesomeIcons({
    super.key,
    required this.icon,
    this.size,
    this.color,
    this.direction,
  });

  final IconData icon;
  final double? size;
  final Color? color;
  final TextDirection? direction;

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      icon,
      size: size ?? MyResponsive.width(context, value: 30),
      color: color ?? AppColors.white,
      textDirection: direction ?? TextDirection.ltr,
    );
  }
}
