import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_constrains.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/my_navigator.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_font_styles.dart';
import '../../../book_details/view/book_details_view.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        MyNavigator.goTo(screen: BookDetailsView());
      },
      child: SizedBox(
        height: MyResponsive.height(value: 110),
        child: Row(
          children: [
            CustomBookImage(
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
      ),
    );
  }
}
