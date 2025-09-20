import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'newest_books_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyResponsive.paddingOnly(left: 30, right: 30),
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.primary,
            surfaceTintColor: AppColors.transparent,
            titleSpacing: 0,
            title: CustomAppBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MyResponsive.height(value: 30),
                ),
                const FeaturedBookListView(),
                SizedBox(
                  height: MyResponsive.height(value: 50),
                ),
                Text(AppStrings.newest, style: AppFontStyles.textF18()),
                SizedBox(
                  height: MyResponsive.height(value: 20),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: NewestBooksListView(),
          )
        ],
      ),
    );
  }
}
