// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';

import '../../../../constValues.dart';

class SpecAndValue extends StatelessWidget {
  const SpecAndValue({super.key, required this.spec, required this.specValue});

  final String spec;
  final String specValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: kBlueColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Text(spec, style: Fonts.smallSlang),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
              color: kGreyColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Text(specValue),
          ),
        ),
      ],
    );
  }
}
