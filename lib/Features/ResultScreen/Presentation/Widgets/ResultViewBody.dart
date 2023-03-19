// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:pricementor/Core/font%20options/fonts.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/ResultViewAppBar.dart";
import "package:pricementor/constValues.dart";

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingLR,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ResultViewAppBar(),
                const SizedBox(height: 10),
                Text("Result", style: Fonts.regularTitle),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: kBorderRadius,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Predicted Price"),
                      Text("92000 DA", style: Fonts.priceFont),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Divider(
                  color: kBlueColor,
                  height: 2,
                  thickness: 0.8,
                ),
                const SizedBox(height: 20),
                Text("Specs Review"),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
