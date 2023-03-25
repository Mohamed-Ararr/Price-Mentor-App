// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:pricementor/Core/font%20options/fonts.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/ResultViewAppBar.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/SpecAndValue.dart";
import "package:pricementor/Features/ResultScreen/Presentation/Widgets/resultWidget.dart";
import "package:pricementor/constValues.dart";

import "../../../HomeScreen/Model/LaptopModel.dart";

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.laptop});

  final Laptop laptop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingLR,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const ResultViewAppBar(),
                const SizedBox(height: 10),
                Text("Result", style: Fonts.regularTitle),
                const SizedBox(height: 10),
                ResultWidget(price: laptop.price!),
                const SizedBox(height: 20),
                Divider(color: kBlueColor, height: 2, thickness: 0.8),
                const SizedBox(height: 20),
                Text("Specs Review", style: Fonts.regularTitle),
                const SizedBox(height: 15),
                SpecAndValue(spec: "Brand", specValue: laptop.brand!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "CPU", specValue: laptop.cpu!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "RAM", specValue: laptop.ram!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "SSD", specValue: laptop.ssd!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "HDD", specValue: laptop.hdd!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "GPU", specValue: laptop.gpu!),
                const SizedBox(height: 10),
                SpecAndValue(
                    spec: "Display",
                    specValue:
                        "${laptop.size} ${laptop.resolution} ${laptop.fps}"),
                const SizedBox(height: 10),
                SpecAndValue(spec: "OS", specValue: laptop.os!),
                const SizedBox(height: 10),
                SpecAndValue(spec: "Condition", specValue: laptop.condition!),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
