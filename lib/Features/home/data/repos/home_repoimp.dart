import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoimp implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
