abstract class EndPoints {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes?';

  static const String newestBooks =
      'Filter=free-ebooks&Sorting=newest&q=LifeStyle';

  static const String featuredBooks = 'Filter=free-ebooks&q=Programming';

  static String similarBooks(String query) {
    return 'Filter=free-ebooks&Sorting=relevance&q=$query';
  }

  static String searchBooks(String query) {
    return 'Filter=free-ebooks&q=$query';
  }
}
