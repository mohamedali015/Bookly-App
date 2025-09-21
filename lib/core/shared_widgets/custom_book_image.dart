import 'package:cached_network_image/cached_network_image.dart';
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

  String _fixUrl(String url) {
    if (url.startsWith("http://")) {
      return url.replaceFirst("http://", "https://");
    }
    return url;
  }

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return AspectRatio(
        aspectRatio: aspectRatio,
        child: const Icon(Icons.broken_image, size: 48),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(MyResponsive.radius(value: 8)),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: _fixUrl(imageUrl),
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator(strokeWidth: 2)),
          errorWidget: (context, url, error) =>
              const Icon(Icons.broken_image, size: 32),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
