import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';

class CareerPathConfirmationPage extends StatelessWidget {
  final String careerPath;

  const CareerPathConfirmationPage({Key? key, required this.careerPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(ScreenUtils.screenWidth(context) * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/hands.png',
                width: ScreenUtils.screenWidth(context),
                height: ScreenUtils.screenHeight(context) * 0.3,
                fit: BoxFit.contain,
              ),
              SizedBox(height: ScreenUtils.screenHeight(context) * 0.05),
              Text(
                "Based on your skills, we've identified that the ideal path for you is as a $careerPath.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ScreenUtils.screenWidth(context) * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ScreenUtils.screenHeight(context) * 0.02),
              Text(
                "Your journey toward mastering the tech starts here—let's build something amazing!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ScreenUtils.screenWidth(context) * 0.04,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: ScreenUtils.screenHeight(context) * 0.08),
              CustomButton(
                text: "Continue",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BOttomNavigationBar()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
