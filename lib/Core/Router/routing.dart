import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pricementor/Features/HomeScreen/Bloc%20Manager/PostPrice/cubit/post_price_cubit.dart';
import 'package:pricementor/Features/HomeScreen/Presentation/HomeView.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/SplashView.dart';

import '../../Features/ResultScreen/Presentation/ResultView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String resultView = "/resultView";

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
      GoRoute(
        path: resultView,
        builder: (context, state) => BlocProvider(
          create: (context) => PostPriceCubit(),
          child: ResultView(price: state.extra as String),
        ),
      ),
    ],
  );
}
