import 'package:flutter/material.dart';

import '../helper/my_responsive.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
    required this.aspectRatio,
  });

  final String imageUrl;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MyResponsive.radius(value: 8)),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
