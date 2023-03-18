import 'package:go_router/go_router.dart';
import 'package:pricementor/Features/HomeScreen/Presentation/HomeView.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
