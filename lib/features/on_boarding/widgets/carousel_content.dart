import 'package:flutter/material.dart';

import '../data/onboarding_data.dart';
import '../../../core/helpers/screen_utils.dart';

class CarouselContent extends StatelessWidget {
  final int index;
  final List<Widget> images;
  final List<Widget> backgroundImages;
  const CarouselContent({
    required this.index,
    super.key,
    required this.images,
    required this.backgroundImages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: (447.67 / 932) * ScreenUtils.screenHeight(context),
          child: (Stack(
            alignment: AlignmentDirectional.center,
            children: [
              backgroundImages[index],
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: images[index]),
            ],
          )),
        ),
        SizedBox(
          height: (32 / 930) * ScreenUtils.screenHeight(context),
        ),
        Text(onboardingLabels[index],
            style: TextStyle(
              fontSize: (35 / 930) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w600,
              color: const Color(0xffD89A46),
            )),
        Text(
          onboardingContent[index],
          style: TextStyle(
              fontSize: (18 / 930) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500,
              height: 1.2,
              color: const Color(0xff6A6A6A)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
