import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class CategoriesCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const CategoriesCard({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [AppColors.gradient, AppColors.accent],
              // ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                // BoxShadow(
                //   color: AppColors.gradient,
                //   blurRadius: 4,
                //   offset: Offset(0, 2),
                // ),
              ],
            ),
            width: 50,
            height: 50,
            child: Transform.scale(
              scale: 1.3,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColors.textDark,
            ),
          ),
        ],
      ),
    );
  }
}
