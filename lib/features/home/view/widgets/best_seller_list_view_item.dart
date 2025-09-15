import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/app_aspect_ratio_images.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_constrains.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_font_styles.dart';
import 'book_rating.dart';

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
          Expanded(
            child: Column(
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
                    color: AppColors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: AppFontStyles.textF20()
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
