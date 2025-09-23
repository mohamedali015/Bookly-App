import 'package:bookly/core/helper/my_navigator.dart';
import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/features/home/view/home_view.dart';
import 'package:flutter/material.dart';

import 'sliding_image.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigate();
  }

  navigate() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        MyNavigator.goTo(screen: HomeView(), isReplace: true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(slidingAnimation: slidingAnimation),
        SizedBox(height: MyResponsive.height(value: 4)),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, -10),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceInOut,
      ),
    );
    animationController.forward();
  }
}
