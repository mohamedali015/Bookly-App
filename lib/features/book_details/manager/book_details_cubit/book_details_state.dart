abstract class BookDetailsState {}

class BookDetailsInitial extends BookDetailsState {}

class BookDetailsLoading extends BookDetailsState {}

class BookDetailsSuccess extends BookDetailsState {
  final List<dynamic> books; // Replace dynamic with your book model class
  BookDetailsSuccess(this.books);
}

class BookDetailsFailure extends BookDetailsState {
  final String errorMessage;

  BookDetailsFailure(this.errorMessage);
}
