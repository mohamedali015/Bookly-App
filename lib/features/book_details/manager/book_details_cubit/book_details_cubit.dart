import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../home/data/models/book_models/book_model/book_model.dart';
import '../../data/repo/book_details_repo.dart';
import 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.book) : super(BookDetailsInitial());

  static BookDetailsCubit get(context) => BlocProvider.of(context);

  final bookDetailsRepo = BookDetailsRepo();
  final BookModel book;

  String _fixUrl(String url) {
    if (url.startsWith("http://")) {
      return url.replaceFirst("http://", "https://");
    }
    return url;
  }

  void previewOnPressed() async {
    final url =
        _fixUrl(book.volumeInfo?.previewLink ?? 'https://www.google.com');
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> fetchSimilarBooks() async {
    emit(BookDetailsLoading());

    // Safety check
    final String category;
    if (book.volumeInfo?.categories != null &&
        book.volumeInfo!.categories!.isNotEmpty) {
      category = book.volumeInfo!.categories!.first;
    } else {
      category = 'Programming'; // Default category
      return;
    }

    final result = await bookDetailsRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) => emit(BookDetailsFailure(failure.message)),
      (books) => emit(BookDetailsSuccess(books)),
    );
  }
}
