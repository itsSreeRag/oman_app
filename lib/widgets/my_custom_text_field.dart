import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class MyCustomTextField extends StatelessWidget {
  final String heading;
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final int maxLines;

  const MyCustomTextField({
    super.key,
    required this.heading,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -------- Heading Text --------
        Row(
          children: [
            Icon(prefixIcon, color: AppColors.primary),
            SizedBox(width: 10),
            Text(
              heading,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),

        const SizedBox(height: 6),

        // -------- TextFormField --------
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.hintText),
            filled: true,
            fillColor: AppColors.hintText.withAlpha(50),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 16,
            ),
            alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
