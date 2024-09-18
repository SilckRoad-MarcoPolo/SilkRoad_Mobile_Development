import 'package:flutter/material.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

import '../../../features/home/widgets/customSearch.dart';
import '../../helpers/screen_utils.dart';

class GradiantColorHeader extends StatelessWidget {
  String title;
  bool button;
  GradiantColorHeader({
    this.button = false,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtils.screenWidth(context),
        height: (198 / 932) * ScreenUtils.screenHeight(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD89A46), // Top color
              Color(0xFF725125), // Bottom color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height:(43 / 932) * ScreenUtils.screenHeight(context) ,
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(left: (10/ 430) * ScreenUtils.screenWidth(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    button?ArrowBackButton(onTap: (){}): const Text(""),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: (32 / 932) * ScreenUtils.screenHeight(context),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffE0E0E0)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height:(20 / 932) * ScreenUtils.screenHeight(context) ,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: CustOmSearch())
          ],
        ));
  }
}