import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricementor/Core/Router/routing.dart';
import 'package:pricementor/Features/HomeScreen/Bloc%20Manager/PostPrice/cubit/post_price_cubit.dart';

import 'Core/observer.dart';

void main() {
  Bloc.observer = StateObserver();
  runApp(const PriceMentor());
}

class PriceMentor extends StatelessWidget {
  const PriceMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostPriceCubit>(
      create: (context) => PostPriceCubit(),
      child: MaterialApp.router(
        routerConfig: AppRouter.routes,
        theme: ThemeData(
          fontFamily: "Lato",
        ),
      ),
    );
  }
}
