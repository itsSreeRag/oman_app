import 'package:flutter/material.dart';

class SubCategoriesList extends StatelessWidget {
  final String categories;
  const SubCategoriesList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: Text('Sub Categories List of $categories')),
    );
  }
}
