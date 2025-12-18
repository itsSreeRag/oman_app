import 'package:flutter/material.dart';

class SettingsPageVertical extends StatelessWidget {
  const SettingsPageVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    List<SettingsPageItemsModel> items = [
      SettingsPageItemsModel(
        title: 'Saved Address',
        icon: Icons.location_on_outlined,
      ),
      SettingsPageItemsModel(
        title: 'Payment Methods',
        icon: Icons.payment,
      ),
      SettingsPageItemsModel(
        title: 'My Orders',
        icon: Icons.receipt_long,
      ),
      SettingsPageItemsModel(
        title: 'My Reviews',
        icon: Icons.rate_review_outlined,
      ),
    ];

    return Container(
      height: screenHeight * 0.13, 
      margin: EdgeInsets.only(
        top: screenHeight * 0.012,
        left: screenWidth * 0.03,
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: screenWidth * 0.03),
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {},
            child: Container(
              width: screenWidth * 0.23,
              padding: EdgeInsets.all(screenWidth * 0.025),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    item.icon,
                    color: Colors.deepOrangeAccent,
                    size: screenWidth * 0.05,
                  ),
                  Spacer(),
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}

class SettingsPageItemsModel {
  final String title;
  final IconData icon;

  SettingsPageItemsModel({
    required this.title,
    required this.icon,
  });
}