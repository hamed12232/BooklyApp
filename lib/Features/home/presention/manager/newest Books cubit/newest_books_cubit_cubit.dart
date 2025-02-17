import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitloading());

    var response = await homeRepo.fetchfeaturedBooks();
    response.fold((failure) {
      emit(NewestBooksCubitfailure(failure.errMessage));
    }, (books) {
      emit(NewestBooksCubitsuccess(books: books));
    });
  }
}
