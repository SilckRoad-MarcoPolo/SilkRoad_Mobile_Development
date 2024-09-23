import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'quiz_screen.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

class QuizStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF6F0),
      body: Column(
        children: [
          SizedBox(height: (66 / 932) * ScreenUtils.screenHeight(context)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                ArrowBackButton(onTap: () {
                  Navigator.pop(context); // Handles the back button
                }),
                SizedBox(width: (72 / 430) * ScreenUtils.screenWidth(context)),
              ],
            ),
          ),
          SizedBox(height: (21 / 932) * ScreenUtils.screenHeight(context)),
          Image.asset(
            'assets/images/exams.png',
            width: (300 / 430) * ScreenUtils.screenWidth(context),
          ),
          SizedBox(height: (30 / 932) * ScreenUtils.screenHeight(context)),
          Text(
            'Total Questions : 50',
            style: TextStyle(
              fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: (16 / 932) * ScreenUtils.screenHeight(context)),
          Text(
            'Total Marks : 100 xp',
            style: TextStyle(
              fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: (16 / 932) * ScreenUtils.screenHeight(context)),
          Text(
            'Time : 50 min',
            style: TextStyle(
              fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: (51 / 932) * ScreenUtils.screenHeight(context)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (60 / 430) * ScreenUtils.screenWidth(context)),
            child: CustomButton(
              text: "start",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
            ),
          ),
          Spacer(),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                'assets/images/quiz_horse.png',
                width: ScreenUtils.screenWidth(context),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
