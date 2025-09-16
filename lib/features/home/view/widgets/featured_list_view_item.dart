import 'package:bookly/core/shared_widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      image: AssetImage(AppAssets.bookImageTest),
      aspectRatio: 150 / 224,
    );
  }
}

