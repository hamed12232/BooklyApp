part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitloading extends FeaturedBooksCubitState {}

final class FeaturedBooksCubitsuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksCubitsuccess({required this.books});
}

final class FeaturedBooksCubitfailure extends FeaturedBooksCubitState {
  final String message;
  const FeaturedBooksCubitfailure(this.message);
}
