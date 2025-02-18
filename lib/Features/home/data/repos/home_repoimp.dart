import 'package:bookly_app/Core/Utils/api_services.dart';
import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoimp implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoimp({required this.apiServices});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiServices.get(
          url:
              "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");

      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchfeaturedBooks() async {
    try {
      var data = await apiServices.get(
          url: "volumes?Filtering=free-ebooks&q=subject:Programming");

      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
