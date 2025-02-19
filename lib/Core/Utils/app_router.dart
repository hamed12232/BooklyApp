import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/Search/presention/views/SearchView.dart';
import 'package:bookly_app/Features/Splash/Presention/views/SplashView.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repoimp.dart';
import 'package:bookly_app/Features/home/presention/manager/similar%20books/cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presention/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presention/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/BookDetailsView";
  static const kSearchview = "/Searchview";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kSearchview,
      builder: (context, state) => const Searchview(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getit.get<HomeRepoimp>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    )
  ]);
}
