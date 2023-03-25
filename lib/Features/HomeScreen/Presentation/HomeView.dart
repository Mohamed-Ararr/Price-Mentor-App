// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Model/LaptopModel.dart';
import 'Widgets/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.laptop});

  final Laptop laptop;

  @override
  Widget build(BuildContext context) {
    return HomeViewBody(laptop: laptop);
  }
}
