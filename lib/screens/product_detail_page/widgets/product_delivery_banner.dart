import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class ProductDeliveryBanner extends StatelessWidget {
  const ProductDeliveryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(20),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Expanded(
            child: Text(
              'Delivery Available',
              style: TextStyle(color: AppColors.textDark),
            ),
          ),
          Icon(Icons.local_shipping, color: AppColors.primary),
        ],
      ),
    );
  }
}
