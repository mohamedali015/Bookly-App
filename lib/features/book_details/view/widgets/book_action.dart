import 'package:bookly/core/shared_widgets/custom_button.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/features/book_details/manager/book_details_cubit/book_details_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/my_responsive.dart';
import '../../../home/data/models/book_models/book_model/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    BookDetailsCubit cubit = BookDetailsCubit.get(context);
    return Padding(
      padding: MyResponsive.paddingSymmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: 'Free',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(MyResponsive.radius(value: 12)),
              bottomLeft: Radius.circular(MyResponsive.radius(value: 12)),
            ),
          )),
          Expanded(
              child: CustomButton(
            text: showText(cubit.book),
            onPressed: cubit.previewOnPressed,
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

  String showText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink != null) {
      return AppStrings.preview;
    } else {
      return AppStrings.notAvailable;
    }
  }
}
