// ignore_for_file: file_names

import "package:flutter/material.dart";

import "Widgets/ResultViewBody.dart";

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return ResultViewBody(price: price);
  }
}
