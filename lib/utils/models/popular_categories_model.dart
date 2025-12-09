import 'package:flutter/material.dart';

class GridModel {
  final String title;
  final IconData icons;
  final Color? color;

  GridModel({
    required this.title,
    required this.icons,
    this.color,
  });
}

final List<GridModel> popularCategories = [
  GridModel(
    title: 'Car',
    icons: Icons.directions_car_rounded,
    color: Colors.blue,
  ),
  GridModel(
    title: 'Real Estate',
    icons: Icons.home_rounded,
    color: Colors.green,
  ),
  GridModel(
    title: 'Rental Cars',
    icons: Icons.car_rental_rounded,
    color: Colors.orange,
  ),
  GridModel(
    title: 'Classifieds',
    icons: Icons.category_rounded,
    color: Colors.purple,
  ),
  GridModel(
    title: 'Mobile',
    icons: Icons.phone_android_rounded,
    color: Colors.pink,
  ),
  GridModel(
    title: 'Community',
    icons: Icons.groups_rounded,
    color: Colors.teal,
  ),
  GridModel(
    title: 'Events',
    icons: Icons.event_rounded,
    color: Colors.red,
  ),
];
