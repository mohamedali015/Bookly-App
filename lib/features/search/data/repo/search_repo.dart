import 'package:bookly/core/network/api_helper.dart';
import 'package:bookly/core/network/api_response.dart';
import 'package:bookly/features/home/data/models/book_models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/end_points.dart';

class SearchRepo {
  // singleton pattern
  SearchRepo._init();

  static final SearchRepo _instance = SearchRepo._init();

  factory SearchRepo() => _instance;

  final ApiHelper apiHelper = ApiHelper();

  Future<Either<ApiResponse, List<BookModel>>> fetchSearchedBooks({
    required String search,
  }) async {
    try {
      final response = await apiHelper.getRequest(
        endPoint: EndPoints.searchBooks(search),
      );

      if (response.statusCode == 200 && response.data != null) {
        // null-safe parsing
        final items = response.data["items"] as List<dynamic>?;
        final books =
            items?.map((item) => BookModel.fromJson(item)).toList() ?? [];
        return Right(books);
      } else {
        return Left(response);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e));
    }
  }
}
