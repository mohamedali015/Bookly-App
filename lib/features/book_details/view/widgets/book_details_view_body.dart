import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_book_image.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyResponsive.paddingOnly(left: 30, right: 30, top: 40),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: MyResponsive.height(value: 36),
          ),
          Padding(
            padding: MyResponsive.paddingSymmetric(horizontal: 76),
            child: CustomBookImage(
              image: AssetImage(AppAssets.bookImageTest),
              aspectRatio: 162 / 220,
            ),
          ),
        ],
      ),
    );
  }
}
