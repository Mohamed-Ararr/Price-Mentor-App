import 'package:go_router/go_router.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
