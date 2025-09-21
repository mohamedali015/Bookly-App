import 'package:bookly/features/home/data/models/book_models/book_model/book_model.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess(this.books);
}

class SearchFailure extends SearchState {
  final String errorMessage;

  SearchFailure(this.errorMessage);
}
