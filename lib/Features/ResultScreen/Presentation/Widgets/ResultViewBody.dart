// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:pricementor/Core/font%20options/fonts.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/ResultViewAppBar.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/SpecAndValue.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/resultWidget.dart";
import "package:pricementor/constValues.dart";

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingLR,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ResultViewAppBar(),
                const SizedBox(height: 10),
                Text("Result", style: Fonts.regularTitle),
                const SizedBox(height: 10),
                ResultWidget(price: price),
                const SizedBox(height: 20),
                Divider(color: kBlueColor, height: 2, thickness: 0.8),
                const SizedBox(height: 20),
                Text("Specs Review", style: Fonts.regularTitle),
                const SizedBox(height: 15),
                const SpecAndValue(spec: "Brand", specValue: "Asus"),
                const SizedBox(height: 10),
                const SpecAndValue(
                    spec: "CPU", specValue: "Intel I3 10 Dual-Core"),
                const SizedBox(height: 10),
                const SpecAndValue(spec: "RAM", specValue: "16GB DDR4"),
                const SizedBox(height: 10),
                const SpecAndValue(spec: "SSD", specValue: "256GB"),
                const SizedBox(height: 10),
                const SpecAndValue(spec: "HDD", specValue: "1000GB"),
                const SizedBox(height: 10),
                const SpecAndValue(
                    spec: "GPU", specValue: "NVIDIA RTX3060TI 6GB"),
                const SizedBox(height: 10),
                const SpecAndValue(
                    spec: "Display", specValue: "15.6\" FHD OLED 120Hz"),
                const SizedBox(height: 10),
                const SpecAndValue(spec: "OS", specValue: "Windows 10"),
                const SizedBox(height: 10),
                const SpecAndValue(spec: "Condition", specValue: "Like New"),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
