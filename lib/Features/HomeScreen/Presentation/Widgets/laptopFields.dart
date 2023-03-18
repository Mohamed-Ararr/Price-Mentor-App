import 'package:flutter/material.dart';

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
          items: ["items"],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          showSearchBox: true,
          fieldTitle: "CPU",
          hintText: "Choose CPU",
          items: ["items"],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "RAM",
          hintText: "Choose RAM",
          items: ["items"],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "SSD",
                hintText: "Choose SSD",
                items: ["items"],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "HDD",
                hintText: "Choose HDD",
                items: ["items"],
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
          items: ["items"],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "Screen Size",
                hintText: "Choose Size",
                items: ["items"],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
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
                onSaved: (value) {},
                fieldTitle: "Display Tech",
                hintText: "Choose Display",
                items: ["items"],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Dropdown(
                onSaved: (value) {},
                fieldTitle: "Refresh Rate",
                hintText: "Choose Refresh Rate",
                items: ["items"],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Operating System",
          hintText: "Choose OS",
          items: ["items"],
        ),
        const SizedBox(height: 20),
        Dropdown(
          onSaved: (value) {},
          fieldTitle: "Condition",
          hintText: "Choose Condition",
          items: ["New", "Like New", "Good"],
        ),
      ],
    );
  }
}
