import 'package:flutter/material.dart';

import '../../../core/helpers/screen_utils.dart';

class CircularIndicatorButton extends StatelessWidget {
  final int currentPage;
  final int totalPageCount;
  final VoidCallback onNext;

  const CircularIndicatorButton({
    super.key,
    required this.currentPage,
    required this.totalPageCount,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNext,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Circular progress indicator (progress animation around the button)
          SizedBox(
            width: (70 / 932) * ScreenUtils.screenHeight(context),
            height: (70 / 430) * ScreenUtils.screenWidth(context),
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(
                begin: 0.0,
                end: (currentPage + 1) /
                    totalPageCount, // Progress based on the index
              ),
              duration: const Duration(milliseconds: 300), // Animation duration
              builder: (context, value, child) {
                return CircularProgressIndicator(
                  value: value, // The animated value
                  strokeWidth: 2,
                  color: const Color(0xffD89A46),
                  backgroundColor: Colors.black,
                );
              },
            ),
          ),
          // Center button
          Container(
            width: (60 / 430) * ScreenUtils.screenHeight(context), // Base width
            height: (60 / 932) * ScreenUtils.screenHeight(context),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
