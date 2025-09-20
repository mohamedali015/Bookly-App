import 'package:bookly/core/helper/my_navigator.dart';
import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/features/search/view/search_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.logoEdited,
          height: MyResponsive.height(value: 18),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              // MyNavigator.goTo(screen: SearchView());
            },
            icon: Icon(
              Icons.search,
              size: MyResponsive.width(value: 30),
            )),
      ],
    );
  }
}
