import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'spaces.dart';

class CustomDropdown extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String label;
  final String hint;
  final Function(String? value)? onChanged;
  final bool showLabel;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.label,
    this.hint = '',
    this.onChanged,
    this.showLabel = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.5,
            ),
          ),
          const SpaceHeight(6.0),
        ],
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          hint: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              value ?? hint,
            ),
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xff020202),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xff020202),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                color: Color(0xff1ABC9C),
                width: 1.0,
              ),
            ),
            hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.5,
              color: const Color(0xff8D92A3),
            ),
            contentPadding: const EdgeInsets.all(10),
          ),
          isExpanded: true,
        ),
      ],
    );
  }
}
