import 'package:flutter/material.dart';

class HomeTextImage extends StatelessWidget {
  const HomeTextImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 238, 248),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image.asset('assets/1-04.png'),
          ),

          SizedBox(height: 10),
          Text(
            'Buy & Sell Everything in Oman',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 400,
            child: Text(
              'Discover a hassle-free way to buy and sell anything in Oman. From electronics to vehicles, find great deals or list your items withease on our trusted marketplace.',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}