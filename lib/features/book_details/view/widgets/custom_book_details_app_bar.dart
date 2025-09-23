import 'package:bookly/core/helper/my_navigator.dart';
import 'package:bookly/core/helper/my_responsive.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            MyNavigator.pop();
          },
          icon: Icon(
            Icons.close,
            size: MyResponsive.fontSize(value: 30),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outline_outlined,
            size: MyResponsive.fontSize(value: 25),
          ),
        ),
      ],
    );
  }
}
