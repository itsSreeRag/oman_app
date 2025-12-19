import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/product_detail_page/widgets/product_bottom_bar.dart';
import 'package:ui_test_app/utils/models/product_card_model.dart';
import 'widgets/product_detail_app_bar.dart';
import 'widgets/product_detail_body.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductCardModel productDetails;

  const ProductDetailPage({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProductDetailAppBar(productDetails: productDetails),
          SliverToBoxAdapter(
            child: ProductDetailBody(productDetails: productDetails),
          ),
        ],
      ),
      bottomNavigationBar: const ProductBottomBar(),
    );
  }
}
