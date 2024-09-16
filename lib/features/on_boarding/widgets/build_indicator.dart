import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/helpers/screen_utils.dart';

class BuildIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;

  const BuildIndicator(
      {super.key, required this.activeIndex, required this.count});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: ExpandingDotsEffect(
          activeDotColor: Colors.black,
          dotHeight: (10 / 932) * ScreenUtils.screenHeight(context),
          dotWidth: (10 / 932) * ScreenUtils.screenHeight(context),
          expansionFactor: 5),
    );
  }
}
