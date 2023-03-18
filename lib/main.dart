import 'package:flutter/material.dart';
import 'package:pricementor/Core/Router/routing.dart';

void main() {
  runApp(const PriceMentor());
}

class PriceMentor extends StatelessWidget {
  const PriceMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
      theme: ThemeData(
        fontFamily: "Lato",
      ),
    );
  }
}
