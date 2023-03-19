// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/font options/fonts.dart';
import '../../../../constValues.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: kBorderRadius,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Predicted Price"),
          Text("92000 DA", style: Fonts.priceFont),
        ],
      ),
    );
  }
}
