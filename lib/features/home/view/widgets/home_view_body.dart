import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/app_aspect_ratio_images.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_constrains.dart';
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
      padding: MyResponsive.paddingSymmetric(horizontal: 30, vertical: 40),
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
          Text(
            AppStrings.bestSeller, style: AppFontStyles.textF18()),
          SizedBox(
            height: MyResponsive.height(value: 20),
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
      height: MyResponsive.height(value: 110),
      child: Row(
        children: [
          AppAspectRatioImages(
            image: AssetImage(
              AppAssets.bookImageTest,
            ),
            aspectRatio: 70 / 105,
          ),
          SizedBox(
            width: MyResponsive.width(value: 30),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MyResponsive.width(value: 207),
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppFontStyles.textF20()
                      .copyWith(fontFamily: AppConstants.fontFamily),
                ),
              ),
              SizedBox(
                height: MyResponsive.height(value: 3),
              ),
              Text(
                "J.K. Rowling",
                style: AppFontStyles.textF14(
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    "19.99 €",
                    style: AppFontStyles.textF20()
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
