import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.logo,
          height: MyResponsive.height(value: 18),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: MyResponsive.width(value: 30),
            )),
      ],
    );
  }
}
