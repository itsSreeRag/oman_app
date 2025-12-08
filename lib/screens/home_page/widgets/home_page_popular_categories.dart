import 'package:flutter/material.dart';

class GridModel {
  final String title;
  final IconData icons;

  GridModel({required this.title, required this.icons});
}

class HomePagePopularCategories extends StatelessWidget {
  const HomePagePopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<GridModel> gridItems = [
      GridModel(title: 'Car', icons: Icons.car_crash),
      GridModel(title: 'Real Estate', icons: Icons.home),
      GridModel(title: 'Rentel Cars', icons: Icons.car_crash),
      GridModel(title: 'Classifieds', icons: Icons.settings),
      GridModel(title: 'Mobile', icons: Icons.phone),
      GridModel(title: 'community', icons: Icons.person_sharp),
      GridModel(title: 'Events', icons: Icons.event),
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 46, 81, 100),
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 2,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: gridItems.length,
            itemBuilder: (context, index) {
              final item = gridItems[index];
              return Card(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.icons, color: Colors.deepOrange, size: 25),
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
