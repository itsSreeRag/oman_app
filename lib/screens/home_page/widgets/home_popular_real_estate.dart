import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';
import 'package:ui_test_app/screens/home_page/widgets/real_estate_card.dart';
import 'package:ui_test_app/utils/models/realestate_card_model.dart';

class RealestateModel {
  final String heading;
  final String image;
  final String beds;

  RealestateModel({
    required this.heading,
    required this.image,
    required this.beds,
  });
}

class HomePagePopularInRealestate extends StatelessWidget {
  const HomePagePopularInRealestate({super.key});

  @override
  Widget build(BuildContext context) {
    final items = realEstateItems;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular in Real Estate',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textDark,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              // final item = items[index];
              return RealEstateCards(
                name: "Modern 2BHK Apartment",
                price: '495',
                area: '1200',
                bed: "6",
                bath: "6",
                imageUrl: "assets/product1.jpg",

              );
            },
          ),
        ],
      ),
    );
  }
}

