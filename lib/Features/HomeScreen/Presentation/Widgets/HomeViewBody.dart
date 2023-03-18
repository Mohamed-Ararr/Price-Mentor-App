// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pricementor/Core/Drop%20down%20search/DropdownSearch.dart';
import 'package:pricementor/Core/font%20options/fonts.dart';
import 'package:pricementor/Features/HomeScreen/Presentation/Widgets/HomeViewAppBar.dart';
import 'package:pricementor/constValues.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<FormState> key = GlobalKey();
  String? brand;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingLR,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeViewAppBar(),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Enter your desired specs",
                    style: Fonts.regularTitle,
                  ),
                ),
                const SizedBox(height: 25),
                Form(
                  key: key,
                  child: Column(
                    children: [
                      Dropdown(
                        onSaved: (value) {
                          brand = value;
                        },
                        fieldTitle: "Brand",
                        hintText: "Choose A Brand",
                        items: ["items"],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      print(brand);
                    } else {
                      print("faild");
                    }
                  },
                  child: Text("submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
