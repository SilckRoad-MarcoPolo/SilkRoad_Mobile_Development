import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenUtils {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}

class RoadmapView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: ScreenUtils.screenWidth(context),
          child: Image.asset("assets/images/Roadmap_upscayl_4x_realesrgan-x4plus.png",
          fit: BoxFit.fitHeight,),
        ),
      ),
    );
  }

  Widget _buildRoadmapItem(BuildContext context, RoadmapItem item) {
    return Container(
      width: ScreenUtils.screenWidth(context) * (157 / 430),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child:
              Text(item.description, style: TextStyle(fontSize: (10 / 932) * ScreenUtils.screenHeight(context)))

          ),
        ),
      );
  }
}

class RoadmapItem {
  final String title;
  final String description;
  final IconData icon;

  RoadmapItem(this.title, this.description, this.icon);
}
