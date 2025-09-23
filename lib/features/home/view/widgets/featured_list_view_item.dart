import 'package:bookly/core/shared_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      imageUrl: imageUrl,
      aspectRatio: 150 / 224,
    );
  }
}
