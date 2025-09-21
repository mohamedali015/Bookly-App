import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/features/book_details/manager/book_details_cubit/book_details_cubit.dart';
import 'package:bookly/features/home/data/models/book_models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/custom_book_image.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BookModel cubit = BookDetailsCubit.get(context).book;
    return Padding(
      padding: MyResponsive.paddingOnly(
        left: 30,
        right: 30,
      ),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.primary,
            surfaceTintColor: AppColors.transparent,
            titleSpacing: 0,
            title: const CustomBookDetailsAppBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MyResponsive.height(value: 36),
                ),
                Padding(
                  padding: MyResponsive.paddingSymmetric(horizontal: 76),
                  child: CustomBookImage(
                    imageUrl: cubit.volumeInfo?.imageLinks?.thumbnail ?? '',
                    aspectRatio: 162 / 210,
                  ),
                ),
                SizedBox(
                  height: MyResponsive.height(value: 42),
                ),
                BooksDetailsSection(
                  book: cubit,
                ),
                SizedBox(
                  height: MyResponsive.height(value: 50),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: MyResponsive.height(value: 40),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
