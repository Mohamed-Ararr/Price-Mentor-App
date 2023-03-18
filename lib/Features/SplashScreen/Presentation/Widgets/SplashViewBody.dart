// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pricementor/Core/Router/routing.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/Widgets/appMotiveHeadline.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/Widgets/title-slangWidget.dart';
import 'package:pricementor/constValues.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).pushReplacement(AppRouter.homeView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: const [
            Spacer(),
            TitleSlangWidget(),
            Spacer(),
            AppMotiveHeadline(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
