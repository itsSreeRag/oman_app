import 'package:flutter/material.dart';

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


final List<HomeDrawerModel> homeDrawerItems = [
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
