import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/Core/widget/show_failure_message.dart';
import 'package:bookly_app/Features/home/presention/manager/featured%20books%20cubit/featured_books_cubit_cubit.dart';
import 'package:bookly_app/Features/home/presention/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubitCubit, FeaturedBooksCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksCubitsuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomListViewItem(
                      w: 0.4,
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksCubitfailure) {
          return ShowFailureMessage(errMesaage: state.message);
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
