import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/app_aspect_ratio_images.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_font_styles.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          MyResponsive.paddingSymmetric(context, horizontal: 30, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(
            height: MyResponsive.height(context, value: 30),
          ),
          const FeaturedBookListView(),
          SizedBox(
            height: MyResponsive.height(context, value: 50),
          ),
          Text(
            AppStrings.bestSeller,
            style: AppFontStyles.textF18(context),
          ),
          SizedBox(
            height: MyResponsive.height(context, value: 20),
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyResponsive.height(context, value: 105),
      child: Row(
        children: [
          AppAspectRatioImages(
            image: AssetImage(
              AppAssets.bookImageTest,
            ),
            aspectRatio: 70 / 105,
          ),
          SizedBox(
            width: MyResponsive.width(context, value: 20),
          ),
        ],
      ),
    );
  }
}
