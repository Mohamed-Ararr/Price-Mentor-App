// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                      hintText: "Choose Brand",
                      items: ["items"],
                    ),
                    const SizedBox(height: 20),
                    Dropdown(
                      onSaved: (value) {
                        brand = value;
                      },
                      showSearchBox: true,
                      fieldTitle: "CPU",
                      hintText: "Choose CPU",
                      items: ["items"],
                    ),
                    const SizedBox(height: 20),
                    Dropdown(
                      onSaved: (value) {
                        brand = value;
                      },
                      fieldTitle: "RAM",
                      hintText: "Choose RAM",
                      items: ["items"],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "SSD",
                            hintText: "Choose SSD",
                            items: ["items"],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "HDD",
                            hintText: "Choose HDD",
                            items: ["items"],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Dropdown(
                      onSaved: (value) {
                        brand = value;
                      },
                      showSearchBox: true,
                      fieldTitle: "GPU",
                      hintText: "Choose GPU",
                      items: ["items"],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "Screen Size",
                            hintText: "Choose Size",
                            items: ["items"],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "Resolution",
                            hintText: "Choose Resolution",
                            items: ["items"],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "Display Tech",
                            hintText: "Choose Display",
                            items: ["items"],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Dropdown(
                            onSaved: (value) {
                              brand = value;
                            },
                            fieldTitle: "Refresh Rate",
                            hintText: "Choose Refresh Rate",
                            items: ["items"],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Dropdown(
                      onSaved: (value) {
                        brand = value;
                      },
                      fieldTitle: "Operating System",
                      hintText: "Choose OS",
                      items: ["items"],
                    ),
                    const SizedBox(height: 20),
                    Dropdown(
                      onSaved: (value) {
                        brand = value;
                      },
                      fieldTitle: "Condition",
                      hintText: "Choose Condition",
                      items: ["New", "Like New", "Good"],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    debugPrint(brand);
                  } else {
                    debugPrint("faild");
                  }
                },
                child: const Text("submit"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
