import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/product_detail_page/widgets/product_description.dart';
import 'package:ui_test_app/screens/product_detail_page/widgets/product_details.dart';
import 'package:ui_test_app/screens/product_detail_page/widgets/product_features.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';
import 'product_info_section.dart';
import 'product_features_section.dart';
import 'product_delivery_banner.dart';

class ProductDetailBody extends StatelessWidget {
  final ProductCardModel productDetails;

  const ProductDetailBody({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(25),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductInfoSection(productDetails: productDetails),
          const SizedBox(height: 20),
          const ProductFeaturesSection(),
          const SizedBox(height: 20),
          const ProductDeliveryBanner(),
          const SizedBox(height: 20),
          const ProductDetails(),
          const SizedBox(height: 20),
          const ProductDescription(),
          const SizedBox(height: 20),
          ProductFeatures(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
