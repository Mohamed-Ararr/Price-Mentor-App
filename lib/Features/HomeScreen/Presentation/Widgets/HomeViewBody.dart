// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:pricementor/Core/Api%20Service/api.dart';
import 'package:pricementor/Core/Router/routing.dart';
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
        title: const Text("PRICE MENTOR"),
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
                onPressed: () async {
                  await ApiService()
                      .post(
                        endPoint: "/predict",
                        data: {
                          "Brand": "Asus",
                          "CPU_Brand": "Intel",
                          "CPU_Name": "I3",
                          "CPU_Gen": 10,
                          "CPU_Cores": "Dual-Core",
                          "RAM_Size": 8,
                          "RAM_Type": "DDR4",
                          "SSD": 128,
                          "HDD": 1000,
                          "GPU_Brand": "",
                          "GPU_Name": "",
                          "GPU_Size": 0,
                          "Size": 15.6,
                          "Resolution": "FHD",
                          "Display_Tech": "LED",
                          "FPS": 60,
                          "OS": "Windows 11",
                          "Condition": "New",
                        },
                      )
                      .then(
                        (value) => debugPrint("$value"),
                      )
                      .onError(
                        (error, stackTrace) => debugPrint(error.toString()),
                      );
                  // if (key.currentState!.validate()) {
                  //   key.currentState!.save();
                  //   debugPrint("Success");
                  //   GoRouter.of(context).push(AppRouter.resultView);
                  // } else {
                  //   debugPrint("faild");
                  // }
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
