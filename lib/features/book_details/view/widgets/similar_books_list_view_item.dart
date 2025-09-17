import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_book_image.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      image: AssetImage(AppAssets.bookImageTest),
      aspectRatio: 80 / 112,
    );
  }
}
