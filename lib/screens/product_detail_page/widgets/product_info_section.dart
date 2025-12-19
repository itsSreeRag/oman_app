import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';

class ProductInfoSection extends StatelessWidget {
  final ProductCardModel productDetails;

  const ProductInfoSection({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productDetails.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        // const SizedBox(height: 8),
        Text(
            '${productDetails.price} OMR',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          // const SizedBox(height: 10),
        // Row(
        //   children: [
        //     Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        //       decoration: BoxDecoration(
        //         color: AppColors.secondary,
        //         borderRadius: BorderRadius.circular(6),
        //       ),
        //       child: Row(
        //         children: const [
        //           Icon(Icons.star, size: 14, color: AppColors.white),
        //           SizedBox(width: 4),
        //           Text(
        //             '4.3',
        //             style: TextStyle(
        //               fontSize: 12,
        //               fontWeight: FontWeight.bold,
        //               color: AppColors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     const SizedBox(width: 8),
        //     const Text(
        //       'By 600',
        //       style: TextStyle(color: AppColors.hintText),
        //     ),
        //   ],
        // ),
        // const SizedBox(height: 16),
        Row(
          children: const [
            Icon(Icons.location_on, size: 18, color: AppColors.hintText),
            SizedBox(width: 4),
            Text('Al Bustan, Muscat, Muscat', style: TextStyle(color: AppColors.hintText)),
            Spacer(),
            Text('1.5 km', style: TextStyle(color: AppColors.hintText)),
          ],
        ),
      ],
    );
  }
}
