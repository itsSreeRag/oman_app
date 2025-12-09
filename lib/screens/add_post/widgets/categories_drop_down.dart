import 'package:flutter/material.dart';

class CategoriesDropDown extends StatelessWidget {
  const CategoriesDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "Electronics",
      "Fashion",
      "Motors",
      "Home & Garden",
      "Sports",
      "Jobs",
      "Services",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -------- Heading Text --------
        Row(
          children: [
            Icon(Icons.grid_view, color: Colors.deepOrangeAccent),
            SizedBox(width: 10),
            Text(
              'category',
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),

        const SizedBox(height: 6),

        // -------- TextFormField --------
        DropdownButtonFormField(
          decoration: InputDecoration(
            hintText: 'Select Category',
            filled: true,
            fillColor: Colors.grey.shade100,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          items: categories
              .map((cat) => DropdownMenuItem(value: cat, child: Text(cat)))
              .toList(),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
