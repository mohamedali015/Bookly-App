import 'package:bookly/core/shared_widgets/custom_button.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/my_responsive.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyResponsive.paddingSymmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: '19.99 €',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MyResponsive.radius(value: 12)),
              bottomLeft: Radius.circular(MyResponsive.radius(value: 12)),
            ),
          )),
          Expanded(
              child: CustomButton(
            text: 'Free Preview',
            backgroundColor: AppColors.orange,
            textColor: AppColors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(MyResponsive.radius(value: 12)),
              bottomRight: Radius.circular(MyResponsive.radius(value: 12)),
            ),
          )),
        ],
      ),
    );
  }
}
