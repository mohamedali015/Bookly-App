import 'package:flutter/material.dart';

import '../../../../core/helper/my_responsive.dart';
import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyResponsive.height(context, value: 224),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: MyResponsive.paddingSymmetric(context, horizontal: 7),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}
