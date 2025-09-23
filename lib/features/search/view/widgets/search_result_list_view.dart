import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/features/search/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/manager/search_cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/shared_widgets/custom_error_widget.dart';
import '../../../../core/shared_widgets/custom_loading_indicator.dart';
import '../../../home/view/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      if (state is SearchSuccess) {
        if (state.books.isEmpty) {
          return CustomErrorWidget(errorMessage: AppStrings.noResults);
        } else {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: MyResponsive.paddingOnly(bottom: 20),
                child: BookListViewItem(
                  book: state.books[index],
                ),
              );
            },
          );
        }
      } else if (state is SearchFailure) {
        return SizedBox(
          height: MyResponsive.height(value: 210),
          child: CustomErrorWidget(errorMessage: state.errorMessage),
        );
      } else if (state is SearchLoading) {
        return SizedBox(
          height: MyResponsive.height(value: 210),
          child: const CustomLoadingIndicator(),
        );
      } else {
        return CustomErrorWidget(errorMessage: AppStrings.noResults);
      }
    });
  }
}
