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
                  height: 45,
                  width: 3,
                  color: kOrangeColor,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price Mentor",
                      style: Fonts.appTitle,
                    ),
                    Text(
                      "Smart Predictions, Smart Savings!",
                      style: Fonts.smallSlang,
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text(
                "Never overpay again with our laptop price insights!",
                style: Fonts.appSlang,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
