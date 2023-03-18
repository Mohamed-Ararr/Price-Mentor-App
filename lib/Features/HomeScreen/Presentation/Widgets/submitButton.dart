// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/constValues.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        backgroundColor: kOrangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius,
        ),
      ),
      child: Text(
        "Submit",
        style: Fonts.regularTitle.copyWith(color: Colors.black),
      ),
    );
  }
}
