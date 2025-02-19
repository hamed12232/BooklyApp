// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks({required String category}) async {
    emit(SimilarBooksloading());

    var response = await homeRepo.fetchSimilarBooks(category: category);
    response.fold((failure) {
      emit(SimilarBooksfailure(failure.errMessage));
    }, (books) {
      emit(SimilarBookssuccess(books: books));
    });
  }
}
