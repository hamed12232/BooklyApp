part of 'newest_books_cubit_cubit.dart';

sealed class NewestBooksCubitState extends Equatable {
  const NewestBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewestBooksCubitInitial extends NewestBooksCubitState {}

final class NewestBooksCubitloading extends NewestBooksCubitState {}

final class NewestBooksCubitsuccess extends NewestBooksCubitState {
  final List<BookModel> books;

  const NewestBooksCubitsuccess({required this.books});
}

final class NewestBooksCubitfailure extends NewestBooksCubitState {
  final String message;
  const NewestBooksCubitfailure(this.message);
}
