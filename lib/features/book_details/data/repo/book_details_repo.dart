import 'package:bookly/core/network/api_helper.dart';
import 'package:bookly/core/network/api_response.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/end_points.dart';
import '../../../home/data/models/book_models/book_model/book_model.dart';

class BookDetailsRepo {
  // singleton
  BookDetailsRepo._init();

  static final BookDetailsRepo _instance = BookDetailsRepo._init();

  factory BookDetailsRepo() => _instance;

  ApiHelper apiHelper = ApiHelper();

  Future<Either<ApiResponse, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      final response = await apiHelper.getRequest(
        endPoint: EndPoints.similarBooks(category),
      );

      if (response.statusCode == 200 && response.data != null) {
        final List<BookModel> books = [];
        for (var item in response.data["items"]) {
          books.add(BookModel.fromJson(item));
        }
        return Right(books);
      } else {
        return Left(response);
      }
    } catch (e) {
      return Left(ApiResponse.fromError(e));
    }
  }
}
