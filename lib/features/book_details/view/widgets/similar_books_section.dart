import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.youCanAlsoLike,
          style: AppFontStyles.textF16().copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MyResponsive.height(value: 20),
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
