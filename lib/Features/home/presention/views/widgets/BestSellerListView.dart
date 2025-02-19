import 'package:bookly_app/Features/home/presention/manager/newest%20Books%20cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubitCubit, NewestBooksCubitState>(
      builder: (context, state) {
        if (state is NewestBooksCubitsuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksCubitfailure) {
          return Center(child: Text(state.message));
        } else {
          return Center(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
