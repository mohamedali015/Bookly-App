import 'package:bookly/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly/core/shared_widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/my_navigator.dart';
import '../../../../core/helper/my_responsive.dart';
import '../../../book_details/view/book_details_view.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import '../../manager/featured_books_cubit/featured_books_state.dart';
import 'featured_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MyResponsive.height(value: 210),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            // physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: MyResponsive.paddingOnly(right: 14),
                child: GestureDetector(
                  onTap: () {
                    MyNavigator.goTo(
                        screen: BookDetailsView(book: state.books[index]));
                  },
                  child: FeaturedListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            '',
                  ),
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
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
