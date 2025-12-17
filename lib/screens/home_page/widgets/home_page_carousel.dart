import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_test_app/constants/app_color_constants.dart';


class HomePageCarousel extends StatelessWidget {
  const HomePageCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 130,
              child: FadeCarousel(
                images: const [
                  'https://images.unsplash.com/photo-1506765515384-028b60a970df?w=1200&q=80',
                  'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=1200&q=80',
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FadeCarousel extends StatefulWidget {
  final List<String> images;
  final Duration duration;
  final Duration fadeDuration;

  const FadeCarousel({
    super.key,
    required this.images,
    this.duration = const Duration(milliseconds: 3000),
    this.fadeDuration = const Duration(milliseconds: 400),
  });

  @override
  State<FadeCarousel> createState() => _FadeCarouselState();
}

class _FadeCarouselState extends State<FadeCarousel>
    with SingleTickerProviderStateMixin {
  int _current = 0;
  int _next = 0;
  double _topOpacity = 1.0;
  bool _isAnimating = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (mounted && !_isAnimating) {
        _goTo(_current + 1);
      }
    });
  }

  void _restartTimer() {
    // reset countdown after a manual navigation or when animation finishes
    _startTimer();
  }

  void _goTo(int newIndex) {
    if (_isAnimating || newIndex == _current) return;
    _next = (newIndex + widget.images.length) % widget.images.length;
    setState(() => _isAnimating = true);

    // Start fade: top image fades out to reveal bottom (next) image.
    setState(() => _topOpacity = 1.0);
    // Small delay to ensure rebuild, then animate opacity to 0
    Future.delayed(const Duration(milliseconds: 10), () {
      setState(() => _topOpacity = 0.0);
      Future.delayed(widget.fadeDuration, () {
        // After fade completes, set the new current index and reset opacity
        setState(() {
          _current = _next;
          _topOpacity = 1.0;
          _isAnimating = false;
        });
        _restartTimer();
      });
    });
  }

  void _onDragEnd(DragEndDetails details) {
    final vx = details.velocity.pixelsPerSecond.dx;
    if (vx.abs() < 200) return; // ignore small flings
    if (vx < 0) {
      _goTo(_current + 1);
    } else {
      _goTo(_current - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomIndex = _isAnimating ? _next : _current;
    final topIndex = _isAnimating ? _current : _current;

    return GestureDetector(
      onHorizontalDragEnd: _onDragEnd,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  /// --------------------------
                  /// BOTTOM IMAGE (next image)
                  /// --------------------------
                  CachedNetworkImage(
                    imageUrl: widget.images[bottomIndex],
                    fit: BoxFit.cover,
                    placeholder: (_, __) =>
                        Container(color: AppColors.hintText),
                    errorWidget: (_, __, ___) => Container(
                      color: AppColors.hintText,
                      child: Placeholder(),
                    ),
                  ),

                  /// --------------------------
                  /// TOP IMAGE (fades out)
                  /// --------------------------
                  AnimatedOpacity(
                    opacity: _topOpacity,
                    duration: widget.fadeDuration,
                    curve: Curves.easeInOut,
                    child: CachedNetworkImage(
                      imageUrl: widget.images[topIndex],
                      fit: BoxFit.cover,
                      placeholder: (_, __) =>
                          Container(color: AppColors.hintText),
                      errorWidget: (_, __, ___) => Container(
                        color: AppColors.hintText,
                        child: Placeholder(),
                      ),
                    ),
                  ),

                  /// Tap left/right to navigate (unchanged)
                  Positioned.fill(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () => _goTo(_current - 1),
                            child: const SizedBox(),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () => _goTo(_current + 1),
                            child: const SizedBox(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // const SizedBox(height: 8),

          // Dot indicators
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: List.generate(widget.images.length, (i) {
          //     final isActive = i == (_isAnimating ? _next : _current);
          //     return GestureDetector(
          //       onTap: () => _goTo(i),
          //       child: AnimatedContainer(
          //         duration: const Duration(milliseconds: 250),
          //         margin: const EdgeInsets.symmetric(horizontal: 6),
          //         width: isActive ? 10 : 6,
          //         height: isActive ? 10 : 6,
          //         decoration: BoxDecoration(
          //           color: isActive
          //               ? AppColors.primary.withAlpha(200)
          //               : AppColors.navBarInactive,
          //           shape: BoxShape.circle,
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black26,
          //               blurRadius: 2,
          //               offset: Offset(0, 1),
          //             ),
          //           ],
          //         ),
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
