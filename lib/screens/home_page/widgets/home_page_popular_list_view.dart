import 'package:flutter/material.dart';

class HomePageHorizontalList extends StatelessWidget {
  final String title;
  final int length;
  const HomePageHorizontalList({
    super.key,
    required this.title,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 46, 81, 100),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(5),
                  width: 200,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                    // child: Image.asset(image[index], fit: BoxFit.cover),
                    child: Placeholder(),
                  ),
                );
              },
            ),
          ),
          // SizedBox(height: 20),
        ],
      ),
    );
  }
}

