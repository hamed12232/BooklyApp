import 'package:bookly_app/Features/home/presention/manager/similar%20books/cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Similarbookslistview extends StatelessWidget {
  const Similarbookslistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksfailure) {
        return Center(
          child: Text(state.errMessage),
        );
      } else if (state is SimilarBookssuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
          child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 0),
                  child: CustomListViewItem(
                      w: 0.2,
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              }),
        );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
