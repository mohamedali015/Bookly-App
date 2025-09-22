import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final num? rating;
  final int? count;

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
          rating != null ? rating.toString() : '4.7',
          style: AppFontStyles.textF16(),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          count != null ? '($count)' : '(1239)',
          style: AppFontStyles.textF14(color: AppColors.grey),
        )
      ],
    );
  }
}
