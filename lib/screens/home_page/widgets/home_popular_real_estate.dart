import 'package:flutter/material.dart';

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
    List<RealestateModel> items = [
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-asphotograpy-230544.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-karolina-grabowska-5632397.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-nurseryart-346751.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-karolina-grabowska-5632397.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-asphotograpy-230544.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
      RealestateModel(
        heading: '984 OMR',
        image: 'assets/pexels-karolina-grabowska-5632397.jpg',
        beds: '6 +Beds - 6+Bath',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular in Real Estate',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 46, 81, 100),
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(item.image),
                  SizedBox(height: 10),
                  Text(
                    item.heading,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: const Color.fromARGB(255, 188, 49, 39),
                    ),
                  ),

                  Text(
                    item.beds,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    'None',
                    style: TextStyle(
                      color: Color.fromARGB(255, 188, 49, 39),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
