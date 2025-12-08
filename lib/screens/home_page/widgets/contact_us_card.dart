import 'package:flutter/material.dart';

class ContactUsCard extends StatelessWidget {
  const ContactUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 238, 248),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10,),
          Text(
            'Flat 20, Reynolds Neck, North Helenaville,\n FV77 8WS+2(305) 587-3407\ninfo@example.com',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}