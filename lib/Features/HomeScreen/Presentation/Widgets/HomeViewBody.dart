// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pricementor/constValues.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                Row(
                  children: [
                    Image.asset(laptopImage),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.abc),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
