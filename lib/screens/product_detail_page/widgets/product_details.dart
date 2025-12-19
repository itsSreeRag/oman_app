import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                ProductDetailCard(
                  heading: 'Type',
                  detail: 'Mobile',
                  icon: Icons.phone_android,
                ),
                const Divider(height: 24, thickness: 0.5),
                ProductDetailCard(
                  heading: 'Purpose',
                  detail: 'Sale',
                  icon: Icons.sell_outlined,
                ),
                const Divider(height: 24, thickness: 0.5),
                ProductDetailCard(
                  heading: 'Posted',
                  detail: '18/08/2025',
                  icon: Icons.calendar_today_outlined,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ProductDetailCard extends StatelessWidget {
  final String heading;
  final String detail;
  final IconData icon;

  const ProductDetailCard({
    super.key,
    required this.heading,
    required this.detail,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.secondary.withAlpha((0.05 * 255).toInt()),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 18,
            color: AppColors.primary.withAlpha((0.7 * 255).toInt()),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            heading,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.hintText,
            ),
          ),
        ),
        Text(
          detail,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
          ),
        ),
      ],
    );
  }
}
