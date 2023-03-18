// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/font options/fonts.dart';
import '../../../../constValues.dart';

class TitleSlangWidget extends StatelessWidget {
  const TitleSlangWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
