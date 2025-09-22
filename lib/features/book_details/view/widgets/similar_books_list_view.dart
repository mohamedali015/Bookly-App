import 'package:bookly/core/helper/my_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widgets/custom_error_widget.dart';
import '../../../../core/shared_widgets/custom_loading_indicator.dart';
import '../../manager/book_details_cubit/book_details_cubit.dart';
import '../../manager/book_details_cubit/book_details_state.dart';
import '../book_details_view.dart';
import 'similar_books_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailsCubit, BookDetailsState>(
        builder: (context, state) {
      if (state is BookDetailsSuccess) {
        if (state.books.isEmpty) {
          return CustomErrorWidget(
              errorMessage: 'There is No Books Similar to show !');
        } else {
          return SizedBox(
            height: MyResponsive.height(value: 110),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: MyResponsive.paddingOnly(right: 10),
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              BookDetailsView(book: state.books[index]),
                        ),
                      );
                    },
                    child: SimilarBooksListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        }
      } else if (state is BookDetailsFailure) {
        return SizedBox(
          height: MyResponsive.height(value: 110),
          child: CustomErrorWidget(errorMessage: state.errorMessage),
        );
      } else if (state is BookDetailsLoading) {
        return SizedBox(
          height: MyResponsive.height(value: 110),
          child: const CustomLoadingIndicator(),
        );
      } else {
        return CustomErrorWidget(
            errorMessage: 'There is No Books Similar to show !');
      }
    });
  }
}
