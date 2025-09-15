import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/app_font_awesome.dart';
import 'package:bookly/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          MyResponsive.paddingSymmetric(context, horizontal: 30, vertical: 40),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
