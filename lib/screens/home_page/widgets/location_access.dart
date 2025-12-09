import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class HomeLocationDetails extends StatelessWidget {
  const HomeLocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 08,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LEFT SIDE
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Current Location',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 4),

                // --- Location Not Fetched Yet ---
                Row(
                  children: [
                     Icon(Icons.location_off, color: AppColors.headings, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      'Click here to get location',
                      style: TextStyle(
                        fontSize: 14,
                        color:AppColors.headings,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
