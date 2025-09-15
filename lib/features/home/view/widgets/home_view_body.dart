import 'package:bookly/core/helper/my_responsive.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_book_list_view.dart';

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
          SizedBox(
            height: MyResponsive.height(context, value: 30),
          ),
          const FeaturedBookListView(),
        ],
      ),
    );
  }
}
