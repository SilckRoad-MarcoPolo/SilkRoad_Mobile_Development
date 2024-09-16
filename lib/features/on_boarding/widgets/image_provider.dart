import 'package:flutter/material.dart';

import '../../../core/helpers/screen_utils.dart';

class OnboardingImageProvider {
  List<Widget> onboardingImagesBackground = [
    Image.asset('assets/images/onboarding/first_background.png'),
    Image.asset('assets/images/onboarding/second_background.png'),
    Image.asset('assets/images/onboarding/third_background.png'),
  ];
  static getBackgroundImages(BuildContext context) {
    List<Widget> onboardingBackgroundImages = [
      Image.asset(
        'assets/images/onboarding/first_background.png',
        height: (397.5 / 932) * ScreenUtils.screenHeight(context),
        width: double.infinity,
      ),
      Image.asset(
        'assets/images/onboarding/second_background.png',
        height: (365.98 / 932) * ScreenUtils.screenHeight(context),
        width: double.infinity,
      ),
      Padding(
        padding: EdgeInsets.only(
            top: (30 / 932) * ScreenUtils.screenHeight(context)),
        child: Image.asset(
          'assets/images/onboarding/third_background.png',
          height: (390.5 / 932) * ScreenUtils.screenHeight(context),
          width: double.infinity,
        ),
      )
    ];
    return onboardingBackgroundImages;
  }

  static getImages(BuildContext context) {
    List<Widget> onboardingImages = [
      Image.asset(
        'assets/images/onboarding/first.png',
        height: (374 / 932) * ScreenUtils.screenHeight(context),
        width: double.infinity,
      ),
      Image.asset(
        'assets/images/onboarding/second.png',
        height: (447.67 / 932) * ScreenUtils.screenHeight(context),
        width: double.infinity,
      ),
      Padding(
        padding: EdgeInsets.only(
            bottom: (30 / 932) * ScreenUtils.screenHeight(context)),
        child: Image.asset('assets/images/onboarding/third.png',
            height: (389.92 / 932) * ScreenUtils.screenHeight(context),
            width: (410 / 430) * ScreenUtils.screenWidth(context)),
      )
    ];
    return onboardingImages;
  }
}
