abstract class EndPoints {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes?';

  static const String newestBooks =
      'Filter=free-ebooks&Sorting=newest&q=Computer Science';

  static const String featuredBooks =
      'Filter=free-ebooks&q=subject:programming';
}
