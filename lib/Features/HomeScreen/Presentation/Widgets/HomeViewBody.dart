// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/Features/HomeScreen/Presentation/Widgets/submitButton.dart';
import 'package:pricementor/constValues.dart';

import 'laptopFields.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueColor,
        title: const Text("Price Mentor"),
        centerTitle: true,
        leading: Image.asset(
          laptopImage,
          scale: 0.9,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.circleInfo),
          ),
        ],
      ),
      body: Padding(
        padding: kPaddingLR,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Enter your desired specs",
                  style: Fonts.regularTitle,
                ),
              ),
              const SizedBox(height: 15),
              Form(
                key: key,
                child: const LaptopFields(),
              ),
              const SizedBox(height: 20),
              SubmitButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    debugPrint("Success");
                  } else {
                    debugPrint("faild");
                  }
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
