import 'package:flutter/material.dart';

import '../../helpers/screen_utils.dart';

class GradiantColorHeader extends StatelessWidget {
  String title;
  GradiantColorHeader({
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
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: (20/ 430) * ScreenUtils.screenWidth(context)),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: (32 / 932) * ScreenUtils.screenHeight(context),
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffE0E0E0)),
                    ),
                  ),
                ],
              ),
            ),
            TextField()
          ],
        ));
  }
}