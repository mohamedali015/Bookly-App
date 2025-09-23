import 'package:bookly/core/helper/my_responsive.dart';
import 'package:bookly/core/shared_widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_constrains.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/my_navigator.dart';
import '../../../../core/utils/app_font_styles.dart';
import '../../../book_details/view/book_details_view.dart';
import '../../data/models/book_models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        MyNavigator.goTo(screen: BookDetailsView(book: book));
      },
      child: SizedBox(
        height: MyResponsive.height(value: 111),
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
              aspectRatio: 70 / 105,
            ),
            SizedBox(
              width: MyResponsive.width(value: 30),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MyResponsive.width(value: 207),
                    child: Text(
                      book.volumeInfo?.title ?? 'No Title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppFontStyles.textF20()
                          .copyWith(fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                  SizedBox(
                    height: MyResponsive.height(value: 3),
                  ),
                  Text(
                    book.volumeInfo?.authors?[0] ?? 'No Author',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFontStyles.textF14(
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: AppFontStyles.textF18()
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: book.volumeInfo?.averageRating,
                        count: book.volumeInfo?.ratingsCount,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
