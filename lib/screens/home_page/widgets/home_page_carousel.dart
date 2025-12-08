import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageCarousel extends StatelessWidget {
  const HomePageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 3),
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text('Image $i', style: TextStyle(fontSize: 16.0)),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
