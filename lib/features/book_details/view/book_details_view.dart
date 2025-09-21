import 'package:bookly/features/book_details/view/widgets/book_details_view_body.dart';
import 'package:bookly/features/home/data/models/book_models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/book_details_cubit/book_details_cubit.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookDetailsCubit(book)..fetchSimilarBooks(),
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsViewBody(),
        ),
      ),
    );
  }
}
