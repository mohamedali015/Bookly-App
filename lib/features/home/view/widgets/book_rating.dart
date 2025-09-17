import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: AppColors.amber,
        ),
        SizedBox(
          width: MyResponsive.width(value: 6),
        ),
        Text(
          "4.8",
          style: AppFontStyles.textF16(),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "(2640)",
          style: AppFontStyles.textF14(color: AppColors.grey),
        )
      ],
    );
  }
}
