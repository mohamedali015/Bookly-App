import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/features/home/data/models/book_models/book_model/book_model.dart';
import 'package:bookly/features/home/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book.volumeInfo?.title ?? 'No Title',
          style: AppFontStyles.textF30(),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: MyResponsive.height(value: 13),
        ),
        Text(
          book.volumeInfo?.authors?[0] ?? 'No Author',
          textAlign: TextAlign.center,
          style: AppFontStyles.textF18().copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: MyResponsive.height(value: 20),
        ),
        BookRating(
          rating: book.volumeInfo?.averageRating,
          count: book.volumeInfo?.ratingsCount,
        ),
        SizedBox(
          height: MyResponsive.height(value: 37),
        ),
        const BookAction(),
      ],
    );
  }
}
