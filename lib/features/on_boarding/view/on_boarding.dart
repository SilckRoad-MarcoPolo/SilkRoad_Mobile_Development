import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import '../widgets/build_indicator.dart';
import '../widgets/carousel_content.dart';
import '../widgets/circular_indicator_button.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int index = 0;
  CarouselSliderController carouselControl = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: (98 / 932) * ScreenUtils.screenHeight(context),
          ),
          CarouselSlider.builder(
            carouselController: carouselControl,
            itemCount: 3,
            options: CarouselOptions(
              height: (670 / 932) * ScreenUtils.screenHeight(context),
              enableInfiniteScroll: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  this.index = index;
                });
              },
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return CarouselContent(
                index: index,
              );
            },
          ),
          BuildIndicator(
            activeIndex: index,
            count: 3,
          ),
          SizedBox(
            height: (36 / 932) * ScreenUtils.screenHeight(context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize:
                            (24 / 932) * ScreenUtils.screenHeight(context),
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                CircularIndicatorButton(
                  onNext: () {
                    if (index == 2) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const Scaffold()));
                    }
                    carouselControl.nextPage();
                  },
                  currentPage: index,
                  totalPageCount: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
