import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyResponsive.paddingOnly(top: 40, left: 30, right: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: MyResponsive.height(value: 30),
                ),
                const FeaturedBookListView(),
                SizedBox(
                  height: MyResponsive.height(value: 50),
                ),
                Text(AppStrings.bestSeller, style: AppFontStyles.textF18()),
                SizedBox(
                  height: MyResponsive.height(value: 20),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
