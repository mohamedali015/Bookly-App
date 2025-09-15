import 'package:flutter/material.dart';

import '../../../../core/helper/my_responsive.dart';
import 'featured_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MyResponsive.height(value: 210),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: MyResponsive.paddingOnly(right: 14),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
