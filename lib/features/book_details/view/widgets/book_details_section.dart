import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/features/home/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: AppFontStyles.textF30(),
        ),
        SizedBox(
          height: MyResponsive.height(value: 13),
        ),
        Text(
          'Rudyard Kipling',
          style: AppFontStyles.textF18().copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: MyResponsive.height(value: 20),
        ),
        // BookRating(),
        SizedBox(
          height: MyResponsive.height(value: 37),
        ),
        const BookAction(),
      ],
    );
  }
}
