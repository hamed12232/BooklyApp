import 'package:bloc/bloc.dart';
import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit(this.homeRepo) : super(FeaturedBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitloading());

    var response = await homeRepo.fetchfeaturedBooks();
    response.fold((failure) {
      emit(FeaturedBooksCubitfailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksCubitsuccess(books: books));
    });
  }
}
