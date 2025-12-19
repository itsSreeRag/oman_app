import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';

class AnimatedExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;

  const AnimatedExpandableText({
    super.key,
    required this.text,
    this.maxLines = 4,
  });

  @override
  State<AnimatedExpandableText> createState() => _AnimatedExpandableTextState();
}

class _AnimatedExpandableTextState extends State<AnimatedExpandableText>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Text(
            widget.text,
            maxLines: isExpanded ? null : widget.maxLines,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textDark,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Read less' : 'Read more',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
