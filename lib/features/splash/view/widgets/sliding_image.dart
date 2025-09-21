import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Image.asset(
            AppAssets.logoEdited,
          ),
        );
      },
      child: Image.asset(
        AppAssets.logoEdited,
        // height: MyResponsive.height(context, value: 250),
      ),
    );
  }
}
