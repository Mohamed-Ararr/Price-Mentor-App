// ignore_for_file: file_names

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import '../../constValues.dart';
import '../font options/fonts.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({
    super.key,
    required this.fieldTitle,
    required this.hintText,
    this.selectedItem,
    required this.items,
    this.onChanged,
    this.onSaved,
    this.showSearchBox = false,
  });

  final String fieldTitle;
  final String hintText;
  final String? selectedItem;
  final List<String> items;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;
  final bool showSearchBox;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: Fonts.regularTitle,
        ),
        const SizedBox(height: 8),
        DropdownSearch<String>(
          clearButtonProps: const ClearButtonProps(isVisible: true),
          onChanged: onChanged,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Field Required!";
            } else {
              return null;
            }
          },
          popupProps: PopupProps.menu(
            menuProps: MenuProps(
              borderRadius: kBorderRadius,
            ),
            showSearchBox: showSearchBox,
            searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: kBorderRadius,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: kBorderRadius,
                  borderSide: BorderSide(color: kBlueColor),
                ),
              ),
            ),
            fit: FlexFit.loose,
            showSelectedItems: true,
          ),
          items: items,
          selectedItem: selectedItem,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              suffixIconColor: kBlueColor,
              hintText: hintText,
              filled: true,
              fillColor: kGreyColor,
              border: OutlineInputBorder(
                borderRadius: kBorderRadius,
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
