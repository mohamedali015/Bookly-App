import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/features/home/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_book_image.dart';
import '../../../../core/utils/app_font_styles.dart';
import 'book_action.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyResponsive.paddingOnly(left: 30, right: 30, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: MyResponsive.height(value: 36),
          ),
          Padding(
            padding: MyResponsive.paddingSymmetric(horizontal: 76),
            child: CustomBookImage(
              image: AssetImage(AppAssets.bookImageTest),
              aspectRatio: 162 / 210,
            ),
          ),
          SizedBox(
            height: MyResponsive.height(value: 42),
          ),
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
          BookRating(),
          SizedBox(
            height: MyResponsive.height(value: 37),
          ),
          const BookAction(),
          SizedBox(
            height: MyResponsive.height(value: 50),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppStrings.youCanAlsoLike,
              style:
                  AppFontStyles.textF16().copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MyResponsive.height(value: 20),
          ),
          const SimilarBooksListView(),
        ],
      ),
    );
  }
}
