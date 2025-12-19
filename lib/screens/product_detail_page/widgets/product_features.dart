import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class ProductFeatures extends StatefulWidget {
  const ProductFeatures({super.key});

  @override
  State<ProductFeatures> createState() => _ProductFeaturesState();
}

class _ProductFeaturesState extends State<ProductFeatures> {
  bool isExpanded = true;

  final List<Map<String, dynamic>> features = [
    {'icon': Icons.memory, 'text': '8GB RAM'},
    {'icon': Icons.format_color_fill, 'text': 'Purple'},
    {'icon': Icons.developer_board, 'text': '8GB RAM'},
    {'icon': Icons.new_releases, 'text': 'Brand New'},
    {'icon': Icons.storage, 'text': '128GB Storage'},
    {'icon': Icons.phonelink, 'text': '6.1" Display'},
    {'icon': Icons.signal_cellular_alt, 'text': '5G Enabled'},
    {'icon': Icons.camera_alt, 'text': 'Dual Camera'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title with Toggle Button
        Row(
          children: [
            Row(
              children: [
                
                const Text(
                  'Product Features',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 24,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),

        /// Features List with Slide Animation
        ClipRect(
          child: AnimatedAlign(
            alignment: Alignment.topCenter,
            heightFactor: isExpanded ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: features.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.secondary.withAlpha(
                            (0.05 * 255).toInt(),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          features[index]['icon'],
                          size: 24,
                          color: AppColors.primary.withAlpha(
                            (0.7 * 255).toInt(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          features[index]['text'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textDark,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
