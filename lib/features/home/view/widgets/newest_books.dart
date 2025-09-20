import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly/features/home/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widgets/custom_loading_indicator.dart';
import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: MyResponsive.paddingOnly(bottom: 20),
              child: BookListViewItem(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return SizedBox(
          height: MyResponsive.height(value: 210),
          child: CustomErrorWidget(errorMessage: state.errMessage),
        );
      } else {
        return SizedBox(
          height: MyResponsive.height(value: 210),
          child: const CustomLoadingIndicator(),
        );
      }
    });
  }
}
