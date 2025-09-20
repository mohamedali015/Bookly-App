import 'package:bookly/core/network/api_helper.dart';
import 'package:bookly/core/network/end_points.dart';
import 'package:dartz/dartz.dart';

import '../models/book_models/book_model/book_model.dart';

class HomeRepo {
  // singleton pattern
  HomeRepo._init();

  static final HomeRepo _instance = HomeRepo._init();

  factory HomeRepo() => _instance;

  ApiHelper apiHelper = ApiHelper();

  // fetch Newest books
  Future<Either<String, List<BookModel>>> fetchNewestBooks() async {
    final response = await apiHelper.getRequest(
      endPoint: EndPoints.newestBooks,
    );

    if (response.statusCode == 200 && response.data != null) {
      try {
        final List<BookModel> books = [];
        for (var item in response.data["items"]) {
          books.add(BookModel.fromJson(item));
        }

        return Right(books);
      } catch (e) {
        return Left("Parsing error: ${e.toString()}");
      }
    } else {
      return Left(response.message);
    }
  }

  // featured books
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks() async {
    final response = await apiHelper.getRequest(
      endPoint: EndPoints.featuredBooks,
    );

    if (response.statusCode == 200 && response.data != null) {
      try {
        final List<BookModel> books = [];
        for (var item in response.data["items"]) {
          books.add(BookModel.fromJson(item));
        }

        return Right(books);
      } catch (e) {
        return Left("Parsing error: ${e.toString()}");
      }
    } else {
      return Left(response.message);
    }
  }
}
