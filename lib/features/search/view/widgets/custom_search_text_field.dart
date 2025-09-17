import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/my_responsive.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.white,
      decoration: _inputDecoration(context),
    );
  }

  ///////////////////////--Decorations//////////////////////
  InputDecoration _inputDecoration(BuildContext context) {
    return InputDecoration(
      hintText: AppStrings.searchHint,
      // contentPadding: EdgeInsets.symmetric(
      //   vertical: MyResponsive.height(value: 20),
      //   horizontal: MyResponsive.width(value: 10),
      // ),
      suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: MyResponsive.width(value: 30),
          )),
      border: _border(context),
      focusedErrorBorder: _border(context),
      focusedBorder: _border(context),
      enabledBorder: _border(context),
      errorBorder: _border(context),
    );
  }

  InputBorder _border(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(MyResponsive.radius(value: 8)),
      ),
      borderSide: BorderSide(color: AppColors.white, width: 1),
    );
  }
}
