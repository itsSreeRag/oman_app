import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/widgets/ainmated_expandable_text.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  static const String _descriptionText =
      'This product is thoughtfully designed to combine quality, performance, '
      'and modern style, making it a reliable choice for everyday use. Built with '
      'durable materials and attention to detail, it ensures long-lasting comfort '
      'and efficiency. Its sleek design blends seamlessly into any lifestyle, '
      'while the practical features enhance convenience and ease of use. Whether '
      'for daily tasks or special occasions, this product delivers a balanced '
      'experience of functionality and elegance.';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Description',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
            letterSpacing: -0.5,
          ),
        ),

        const SizedBox(height: 12),

        AnimatedExpandableText(text: _descriptionText),
      ],
    );
  }
}
