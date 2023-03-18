// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/constValues.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(laptopImage),
                const SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 2,
                  color: Colors.red,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price Mentor",
                      style: Fonts.appTitle,
                    ),
                    const Text(
                      "Smart Predictions, Smart Savings!",
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Text("Never overpay again with our laptop price insights!"),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
