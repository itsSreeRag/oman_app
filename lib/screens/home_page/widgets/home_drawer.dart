import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Main items + sub-items
    List<HomeDrawerModel> items = [
      HomeDrawerModel(
        title: 'Motors',
        icons: Icons.directions_car,
        subItems: [
          'Cars for Sale',
          'Motorcycles & Accessories',
          'Vehicles for Rent',
          'Heavy Vehicles',
          'Boats & Jet Skis',
          'Plate Numbers',
          'Tires, Wheels & Rims',
          'Auto Accessories & Parts',
          'Junk Cars - Other Vehicles',
          'Car Maintenance and Repair',
          'Vehicle Check',
          'Calculator',
          'Driving Training',
        ],
      ),
      HomeDrawerModel(
        title: 'Real Estate',
        icons: Icons.home_work_outlined,
        subItems: ['Rent', 'Sell', 'Land'],
      ),
      HomeDrawerModel(
        title: 'Electronics',
        icons: Icons.devices_other,
        subItems: ['Mobiles', 'Laptops', 'Cameras'],
      ),
      HomeDrawerModel(
        title: 'Home & Garden',
        icons: Icons.chair_alt,
        subItems: ['Furniture', 'Plants', 'Decor'],
      ),
      HomeDrawerModel(
        title: 'Fashion',
        icons: Icons.checkroom,
        subItems: ['Men', 'Women', 'Kids'],
      ),
      HomeDrawerModel(
        title: 'Sports',
        icons: Icons.sports_soccer,
        subItems: ['Football', 'Cricket', 'Gym'],
      ),
      HomeDrawerModel(
        title: 'Jobs',
        icons: Icons.work_outline,
        subItems: ['Full-Time', 'Part-Time', 'Internship'],
      ),
      HomeDrawerModel(
        title: 'Services',
        icons: Icons.miscellaneous_services,
        subItems: ['Repair', 'Cleaning', 'Transport'],
      ),
    ];

    return Drawer(
      backgroundColor: AppColors.background,

      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 100,
              child: Image.asset('assets/logo (1).png'),
            ),
            SizedBox(height: 20),

            Text(
              'All Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),

            // List with sub-items
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return ExpansionTile(
                    leading: Icon(item.icons, color: AppColors.headings),

                    title: Text(
                      item.title,
                      style: TextStyle(color: AppColors.headings),
                    ),
                    children: item.subItems
                        .map(
                          (sub) => ListTile(
                            title: Text(sub),
                            onTap: () {
                              Navigator.pop(context);
                              print("Clicked → ${item.title} → $sub");
                            },
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDrawerModel {
  final String title;
  final IconData icons;
  final List<String> subItems;

  HomeDrawerModel({
    required this.title,
    required this.icons,
    required this.subItems,
  });
}
