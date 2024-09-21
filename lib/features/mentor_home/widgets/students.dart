import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return
    
     Container(
      width: ScreenUtils.screenHeight(context) * (90 / 462), // Set width
            height: ScreenUtils.screenHeight(context) * (183 / 932),
        decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffDDDDDD),
                  width: 2
                ),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
      child: Padding(
        padding:  EdgeInsets.all((13 / 932) * ScreenUtils.screenHeight(context),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(child: Image.asset('assets/images/photo_6008145075550404211_m 5 (2).png')),
        Text(
                      "Amira Shawki",
                      style: TextStyle(fontSize: ScreenUtils.screenHeight(context) * (20 / 932), fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                      "Intermediate",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: ScreenUtils.screenHeight(context) * (14 / 932), fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.chat),
                    ],)
                   ])));
    
    
    
  }
}