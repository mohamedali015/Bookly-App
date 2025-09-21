import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_book_image.dart';

class SimilarBooksListViewItem extends StatelessWidget {
  const SimilarBooksListViewItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      imageUrl: imageUrl,
      aspectRatio: 80 / 112,
    );
  }
}
