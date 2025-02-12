import 'package:bookly_app/Features/Splash/Presention/views/SplashView.dart';
import 'package:bookly_app/Features/home/presention/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView="/homeView";
static final router=GoRouter(
  routes: [
    GoRoute(path: "/",
    builder: (context, state) =>const  Splashview(),
    ),
    GoRoute(path: kHomeView,
    builder: (context, state) =>const  HomeView(),
    )
  ]
);
}