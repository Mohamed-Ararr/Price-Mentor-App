// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:pricementor/Features/HomeScreen/Model/LaptopModel.dart";

import "Widgets/ResultViewBody.dart";

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.laptop});

  final Laptop laptop;

  @override
  Widget build(BuildContext context) {
    return ResultViewBody(laptop: laptop);
  }
}
