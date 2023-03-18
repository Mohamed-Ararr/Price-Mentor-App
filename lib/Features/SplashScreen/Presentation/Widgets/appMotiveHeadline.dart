import 'package:flutter/material.dart';

import '../../../../Core/font options/fonts.dart';

class AppMotiveHeadline extends StatelessWidget {
  const AppMotiveHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Text(
        "Never overpay again with our laptop price insights!",
        style: Fonts.appSlang,
        textAlign: TextAlign.center,
      ),
    );
  }
}
