import 'package:flutter/material.dart';
import 'package:pricementor/Core/Utils/item_list.dart';

import '../../../../Core/Drop down search/DropdownSearch.dart';

class LaptopFields extends StatelessWidget {
  const LaptopFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Brand",
          hintText: "Choose Brand",
          items: ItemsLists.brand,
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          showSearchBox: true,
          fieldTitle: "CPU",
          hintText: "Choose CPU",
          items: ItemsLists.cpu,
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "RAM",
          hintText: "Choose RAM",
          items: ItemsLists.ram,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "SSD",
                hintText: "Choose SSD",
                items: ItemsLists.ssd,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "HDD",
                hintText: "Choose HDD",
                items: ItemsLists.hdd,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          showSearchBox: true,
          fieldTitle: "GPU",
          hintText: "Choose GPU",
          items: ItemsLists.gpu,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "Screen Size",
                hintText: "Choose Size",
                items: ItemsLists.size,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "Resolution",
                hintText: "Choose Resolution",
                items: ItemsLists.resolution,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Refresh Rate",
          hintText: "Choose Refresh Rate",
          items: ItemsLists.fps,
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Operating System",
          hintText: "Choose OS",
          items: ItemsLists.os,
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Condition",
          hintText: "Choose Condition",
          items: ItemsLists.condition,
        ),
      ],
    );
  }
}
