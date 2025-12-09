import 'package:flutter/material.dart';
import 'package:ui_test_app/screens/add_post/widgets/categories_drop_down.dart';
import 'package:ui_test_app/widgets/my_custom_text_field.dart';

class AddPost extends StatelessWidget {
  AddPost({super.key});

  // Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final List<String> categories = [
    "Electronics",
    "Fashion",
    "Motors",
    "Home & Garden",
    "Sports",
    "Jobs",
    "Services",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image Upload Box
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_a_photo, size: 40, color: Colors.grey),
                      SizedBox(height: 6),
                      Text("Upload Product Image"),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Product Name
            MyCustomTextField(
              heading: 'Product Name',
              hintText: 'Enter Product Name',
              controller: nameController,
              prefixIcon: Icons.inventory_2,
            ),
            const SizedBox(height: 16),

            // Price
            MyCustomTextField(
              hintText: 'Enter The Price',
              controller: priceController,
              prefixIcon: Icons.attach_money,
              heading: 'Price',
            ),
            const SizedBox(height: 16),

            // Category Dropdown
            CategoriesDropDown(),

            const SizedBox(height: 16),

            // Description
            MyCustomTextField(
              heading: 'Description',
              hintText: 'Enter Description',
              controller: descriptionController,
              prefixIcon: Icons.description,

              maxLines: 4,
            ),
            const SizedBox(height: 20),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {},
                child: const Text(
                  "Add Product",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Input Decoration Reusable Function
}
