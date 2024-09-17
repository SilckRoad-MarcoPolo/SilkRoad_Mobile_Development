import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';


// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text, super.key});
  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      height: (44 / 932) * ScreenUtils.screenHeight(context),
       
         width: (398 / 414) * ScreenUtils.screenWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle( fontSize: 20,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
