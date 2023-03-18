// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Row(
              children: [
                Image.asset(laptopImage),
                Container(
                  height: 40,
                  width: 2,
                  color: Colors.red,
                ),
                Column(
                  children: const [
                    Text(
                      "Price Mentor",
                    ),
                    Text(
                      "Smart Predictions, Smart Savings!",
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Text("Never overpay again with our laptop price insights!"),
          ],
        ),
      ),
    );
  }
}
