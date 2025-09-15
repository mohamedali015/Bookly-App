import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(AppAssets.bookImageTest),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
