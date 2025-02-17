import 'package:bookly_app/Constants.dart';
import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:bookly_app/Core/Utils/service_locator.dart';
import 'package:bookly_app/Features/home/data/repos/home_repoimp.dart';
import 'package:bookly_app/Features/home/presention/manager/featured%20books%20cubit/featured_books_cubit_cubit.dart';
import 'package:bookly_app/Features/home/presention/manager/newest%20Books%20cubit/newest_books_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubitCubit(getit.get<HomeRepoimp>()),
        ),
        BlocProvider(
            create: (context) =>
                NewestBooksCubitCubit(getit.get<HomeRepoimp>())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
