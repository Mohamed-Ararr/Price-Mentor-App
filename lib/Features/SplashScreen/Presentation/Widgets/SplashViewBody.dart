// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/Widgets/appMotiveHeadline.dart';
import 'package:pricementor/Features/SplashScreen/Presentation/Widgets/title-slangWidget.dart';
import 'package:pricementor/constValues.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
